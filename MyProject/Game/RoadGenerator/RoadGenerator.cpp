//
//  RoadGenerator.cpp
//  Game
//
//  Created by Andrei Sabu - (p) on 4/10/19.
//

#include "RoadGenerator.hpp"


RoadGenerator::RoadGenerator(BezierCurve& bezierCurve) : bezier (bezierCurve)
{
    findTrackPoints();
}

const std::pair<IvVector3, IvVector3> RoadGenerator::calculateNormalOnPoint(IvVector3& a, IvVector3& b, IvVector3& p) const
{
    float x0, y0;
    float x1, y1;
    
    x0 = a.x;
    y0 = a.z;
    x1 = b.x;
    y1 = b.z;
    
    //parallel points with axes
    if (y0 == y1)
    {
        IvVector3 final0, final1;
        final0 = {p.x, 0, p.z + roadWidth};
        final1 = {p.x, 0, p.z - roadWidth};
        
        return std::make_pair(final0, final1);
    }
    
    //parallel points with axes
    if (x0 == x1)
    {
        IvVector3 final0, final1;
        final0 = {p.x + roadWidth, 0, p.z};
        final1 = {p.x - roadWidth, 0, p.z};
        
        return std::make_pair(final0, final1);
    }
    
    float m = (y1 - y0)/(x1-x0);
    
    float px = p.x;
    float py = p.z;
    
    float X0, X1, Y0, Y1;
    
    X0 = -10;
    X1 = 10;
    
    Y0 = -m * (X0 - px) + py;
    Y1 = -m * (X1 - px) + py;
    
    float dist0, dist1;
    dist0 = sqrt((X0 - px)*(X0 - px) + (Y0 - py)*(Y0 - py));
    dist1 = sqrt((X1 - px)*(X1 - px) + (Y1 - py)*(Y1 - py));
    
    float lerp0, lerp1;
    lerp0 = roadWidth / dist0;
    lerp1 = roadWidth / dist1;
    
    IvVector3 final0, final1;
    IvVector3 point0, point1;
    point0 = {X0, 0, Y0};
    point1 = {X1, 0, Y1};
    final0 = BezierCurve::lerp(p, point0, lerp0);
    final1 = BezierCurve::lerp(p, point1, lerp1);
    
    return std::make_pair(final0, final1);
    
}

void RoadGenerator::findTrackPoints()
{
    IvVector3 a, b, p;
    a = {4, 0, -2};
    b = {4, 0, 2};
    p = {4, 0, -2};
    std::pair<IvVector3, IvVector3> normal = calculateNormalOnPoint(a, b, p);
    
}


void
RoadGenerator::Draw()
{
    
    size_t currentOffset = IvStackAllocator::mScratchAllocator->GetCurrentOffset();
    IvCPVertex* lineDataPtr = (IvCPVertex*) IvStackAllocator::mScratchAllocator->Allocate(kIvVFSize[kCPFormat] * 2);
    
    if (nullptr == lineDataPtr)
        return;
    
    //lines RED
    
    lineDataPtr[0].position = {-5, 0, -5};
    lineDataPtr[0].color.Set(255, 0, 0, 255);
    
    lineDataPtr[1].position = {5, 0, 5};
    lineDataPtr[1].color.Set(255, 0, 0, 255);
    
    
    
    IvVertexBuffer* lines = IvRenderer::mRenderer->GetResourceManager()->CreateVertexBuffer(kCPFormat, 2, lineDataPtr,kImmutableUsage);

    IvStackAllocator::mScratchAllocator->Reset(currentOffset);
    
    IvSetWorldIdentity();
    
    // clear to default shader
    IvShaderProgram* oldShader = IvRenderer::mRenderer->GetShaderProgram();
    IvRenderer::mRenderer->SetShaderProgram(0);
    
    IvRenderer::mRenderer->Draw(kLineStripPrim, lines);
 
    
    // restore original shader
    IvRenderer::mRenderer->SetShaderProgram(oldShader);
    
    //release memory
    IvRenderer::mRenderer->GetResourceManager()->Destroy(lines);
 
}
