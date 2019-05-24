#include "BezierCurve.hpp"

BezierCurve::BezierCurve()

{
    initializeCurveTestData();
}


void BezierCurve::initializeCurveTestData()
{
    Point p;
    
    p.position = {-5, 0, -5};
    points.push_back(p);

    p.position = {-10, 0, 2};
    p.isControl = true;
    points.push_back(p);
    
    p.position = {-5, 0, 7};
    p.isControl = true;
    points.push_back(p);
    
    p.position = {-2, 0, 5};
    p.isControl = false;
    points.push_back(p);
    
    p.position = {1, 0, 1};
    p.isControl = true;
    points.push_back(p);
    
    p.position = {-3, 0, -5};
    p.isControl = true;
    points.push_back(p);
    
    p.position = {0, 0, -5};
    p.isControl = false;
    points.push_back(p);
    
    p.position = {4, 0, -3};
    p.isControl = true;
    points.push_back(p);
    
    p.position = {3, 0, 4};
    p.isControl = true;
    points.push_back(p);
    
    p.position = {2, 0, 5};
    p.isControl = false;
    points.push_back(p);
}

BezierCurve::~BezierCurve(){}


void
BezierCurve::Update( float dt )
{
    //go to next point
    if (IvGame::mGame->mEventHandler->IsKeyReleased('.'))
    {
        if (editIndex + 1 <= points.size() - 1)
            editIndex ++;
    }
    
    //go to prev point
    if (IvGame::mGame->mEventHandler->IsKeyReleased(','))
    {
        if (editIndex - 1 >= 0)
            editIndex --;
    }
    
    
    static unsigned char input[4] = {'w','a','s','d'};
    for(int i = 0; i < 4; i++)
    if (IvGame::mGame->mEventHandler->IsKeyDown(input[i]))
    {

        IvVector3 offset = {0, 0, 0};
        if (input[i] == 'w')
            offset.z = editSpeed * dt;
        if (input[i] == 's')
            offset.z = -editSpeed * dt;
        if (input[i] == 'a')
            offset.x = -editSpeed * dt;
        if (input[i] == 'd')
            offset.x = editSpeed * dt;
        
        
        //FIXED POINT
        if(points[editIndex].isControl == false)
        {
            //first fixed point
            if(editIndex == 0)
            {
                points[editIndex].position += offset;
                points[editIndex + 1].position += offset;
            }
            else
                //last fixed point
                if(editIndex == points.size() - 1)
                {
                    points[editIndex].position += offset;
                    points[editIndex - 1].position += offset;
                }
                //other fixed point
                else{
                    points[editIndex - 1].position += offset;
                    points[editIndex].position += offset;
                    points[editIndex + 1].position += offset;
                }
        }
        
        //CONTROL POINT
        if (points[editIndex].isControl == true)
        {
            //first or last control point
            if(editIndex == 1 || editIndex == points.size() - 2)
            {
                points[editIndex].position += offset;
            }
            else
            {
                //left control point
                if (points[editIndex + 1].isControl == false)
                {
                    points[editIndex].position += offset;
                    points[editIndex + 2].position.x = points[editIndex + 1].position.x * 2 - points[editIndex].position.x;
                    points[editIndex + 2].position.z = points[editIndex + 1].position.z * 2 - points[editIndex].position.z;
                }
                else
                //right control point
                if (points[editIndex - 1].isControl == false)
                {
                    points[editIndex].position += offset;
                    points[editIndex - 2].position.x = points[editIndex - 1].position.x * 2 - points[editIndex].position.x;
                    points[editIndex - 2].position.z = points[editIndex - 1].position.z * 2 - points[editIndex].position.z;
                }
                
            }
        }
    }
}


const IvVector3 BezierCurve::lerp(IvVector3& a, IvVector3& b, float t)

{
    float cx = (float)a.x + (float)(b.x - a.x) * t;
    float cz = (float)a.z + (float)(b.z - a.z) * t;
    return {cx, 0, cz};
}

const IvVector3 BezierCurve::getPointFromLine(float t, std::vector<IvVector3>& line) const
{
    std::vector<IvVector3> remainingPoints;
    for(int i = 0; i < line.size(); i++)
        remainingPoints.push_back(line[i]);
    
    for(int i = 0; i < remainingPoints.size() - 1; i++)
        for(int j = 0; j < remainingPoints.size() - i - 1; j++)
            remainingPoints[j] = lerp(remainingPoints[j], remainingPoints[j+1], t);

    return remainingPoints[0];
}

void BezierCurve::extractPoints(std::vector<IvVector3>& line)
{
    for(float t = 0; t <= 1; t += tStep)
        renderPoints.push_back(getPointFromLine(t, line));
}

void BezierCurve::buildCurve()
{
    renderPoints.clear();
    int lastFixedPointIndex = 0;
    std::vector<IvVector3> curvePart;
    curvePart.push_back(points[lastFixedPointIndex].position);
    
    for(int i = 1; i < points.size(); i++)
    {
        if(points[i].isControl == false)
        {
            lastFixedPointIndex = i;
            curvePart.push_back(points[i].position);
            extractPoints(curvePart);
            curvePart.clear();
            
            //put the start point
            curvePart.push_back(points[i].position);
        }
        else
            curvePart.push_back(points[i].position);
    }
    
    //put the ending point
    renderPoints.push_back(curvePart[curvePart.size() - 1]);
}

void
BezierCurve::Draw()
{
    //generate curve
    buildCurve();
    
    size_t currentOffset = IvStackAllocator::mScratchAllocator->GetCurrentOffset();
    IvCPVertex* lineDataPtr = (IvCPVertex*) IvStackAllocator::mScratchAllocator->Allocate(kIvVFSize[kCPFormat] * renderPoints.size());
    IvCPVertex* pointDataPtr = (IvCPVertex*) IvStackAllocator::mScratchAllocator->Allocate(kIvVFSize[kCPFormat] * renderPoints.size());
    
    int noOfPoints = (int) points.size();
    int noOfControl, noOfFixed;
    
    noOfFixed = (noOfPoints - 2) / 2 + noOfPoints % 2;
    noOfControl = noOfPoints - noOfFixed;
    
    IvCPVertex* controlDataPtr = (IvCPVertex*) IvStackAllocator::mScratchAllocator->Allocate(kIvVFSize[kCPFormat] * noOfControl);
    IvCPVertex* fixedDataPtr = (IvCPVertex*) IvStackAllocator::mScratchAllocator->Allocate(kIvVFSize[kCPFormat] * noOfFixed);
    IvCPVertex* tangentDataPtr = (IvCPVertex*) IvStackAllocator::mScratchAllocator->Allocate(kIvVFSize[kCPFormat] * noOfControl * 2);
    
    
    if (nullptr == lineDataPtr || nullptr == pointDataPtr || nullptr == controlDataPtr)
        return;
    
    //lines RED
    for(int i = 0; i < renderPoints.size(); i++)
    {
        lineDataPtr[i].position = renderPoints[i];
        lineDataPtr[i].color.Set(255, 0, 0, 255);
    }
    
    //points GREEN
    for(int i = 0; i < renderPoints.size(); i++)
    {
        pointDataPtr[i].position = renderPoints[i];
        pointDataPtr[i].color.Set(0, 255, 0, 255);
    }
    
    //control LIGHT BLUE color
    int controlIndex = 0;
    for(int i = 0; i < points.size(); i++)
    {
        if (points[i].isControl == true)
        {
            controlDataPtr[controlIndex].position = points[i].position;
            
            //make the editable point YELLOW
            if(editIndex == i)
                controlDataPtr[controlIndex].color.Set(255, 255, 0, 255);
            else
                controlDataPtr[controlIndex].color.Set(0, 155, 255, 255);
            
            controlIndex++;
        }
    }
    
    //fixed PINK color
    int fixedIndex = 0;
    for(int i = 0; i < points.size(); i++)
    {
        if (points[i].isControl == false)
        {
            fixedDataPtr[fixedIndex].position = points[i].position;
            
            //make the editable point YELLOW
            if(editIndex == i)
                fixedDataPtr[fixedIndex].color.Set(255, 255, 0, 255);
            else
                fixedDataPtr[fixedIndex].color.Set(155, 0, 155, 255);
            
            fixedIndex++;
        }
    }
    
    //tangent PINK color
    int tangendIndex = 0;
    
    //first point
    tangentDataPtr[tangendIndex].position = points[1].position;
    tangentDataPtr[tangendIndex].color.Set(60, 60, 0, 255);
    tangendIndex++;
    tangentDataPtr[tangendIndex].position = points[0].position;
    tangentDataPtr[tangendIndex].color.Set(60, 60, 0, 255);
    tangendIndex++;
    

    //last point
    tangentDataPtr[tangendIndex].position = points[points.size()-1].position;
    tangentDataPtr[tangendIndex].color.Set(60, 60, 0, 255);
    tangendIndex++;
    tangentDataPtr[tangendIndex].position = points[points.size()-2].position;
    tangentDataPtr[tangendIndex].color.Set(60, 60, 0, 255);
    tangendIndex++;
    
    
    for(int i = 1; i < points.size()-1; i++)
    {
        if (points[i].isControl == false)
        {
            //left point
            tangentDataPtr[tangendIndex].position = points[i].position;
            tangentDataPtr[tangendIndex].color.Set(60, 60, 0, 255);
            tangendIndex++;
            tangentDataPtr[tangendIndex].position = points[i-1].position;
            tangentDataPtr[tangendIndex].color.Set(60, 60, 0, 255);
            tangendIndex++;
            
            //right point
            tangentDataPtr[tangendIndex].position = points[i].position;
            tangentDataPtr[tangendIndex].color.Set(60, 60, 0, 255);
            tangendIndex++;
            tangentDataPtr[tangendIndex].position = points[i+1].position;
            tangentDataPtr[tangendIndex].color.Set(60, 60, 0, 255);
            tangendIndex++;
        }
    }
    
    IvVertexBuffer* lines = IvRenderer::mRenderer->GetResourceManager()->CreateVertexBuffer(kCPFormat, (unsigned int)renderPoints.size(), lineDataPtr,kImmutableUsage);
    IvVertexBuffer* points = IvRenderer::mRenderer->GetResourceManager()->CreateVertexBuffer(kCPFormat, (unsigned int)renderPoints.size(), pointDataPtr,kImmutableUsage);
    IvVertexBuffer* control = IvRenderer::mRenderer->GetResourceManager()->CreateVertexBuffer(kCPFormat, noOfControl, controlDataPtr,kImmutableUsage);
    IvVertexBuffer* fixed = IvRenderer::mRenderer->GetResourceManager()->CreateVertexBuffer(kCPFormat, noOfFixed, fixedDataPtr,kImmutableUsage);
    IvVertexBuffer* tangents = IvRenderer::mRenderer->GetResourceManager()->CreateVertexBuffer(kCPFormat, noOfControl * 2, tangentDataPtr,kImmutableUsage);
    IvStackAllocator::mScratchAllocator->Reset(currentOffset);


    
    IvSetWorldIdentity();
    
    // clear to default shader
    IvShaderProgram* oldShader = IvRenderer::mRenderer->GetShaderProgram();
    IvRenderer::mRenderer->SetShaderProgram(0);
    
    IvRenderer::mRenderer->Draw(kLineStripPrim, lines);
    IvRenderer::mRenderer->Draw(kLineListPrim, tangents);
    IvRenderer::mRenderer->Draw(kPointListPrim, points);
    IvRenderer::mRenderer->Draw(kPointListPrim, control);
    IvRenderer::mRenderer->Draw(kPointListPrim, fixed);
    
    // restore original shader
    IvRenderer::mRenderer->SetShaderProgram(oldShader);
    
    //release memory
    IvRenderer::mRenderer->GetResourceManager()->Destroy(lines);
    IvRenderer::mRenderer->GetResourceManager()->Destroy(tangents);
    IvRenderer::mRenderer->GetResourceManager()->Destroy(points);
    IvRenderer::mRenderer->GetResourceManager()->Destroy(control);
    IvRenderer::mRenderer->GetResourceManager()->Destroy(fixed);
}
