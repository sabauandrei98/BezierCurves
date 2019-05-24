#pragma once

#include <IvRenderer.h>
#include <IvEventHandler.h>
#include <IvMath.h>
#include <IvVector3.h>
#include <IvRendererHelp.h>
#include <IvBezier.h>
#include <vector>
#include <IvResourceManager.h>
#include <IvLineSegment3.h>
#include <IvMath.h>
#include <IvStackAllocator.h>
#include <IvVertexFormats.h>
#include <IvVertexBuffer.h>
#include <IvIndexBuffer.h>
#include <IvShaderProgram.h>
#include <IvRenderer.h>
#include <IvRendererOGL.h>
#include "Game.h"

struct Point{
    IvVector3 position;
    bool isControl;
};

class BezierCurve
{
    
public:
    BezierCurve();
    ~BezierCurve();
    void Update( float dt );
    void Draw();
    
    const std::vector<IvVector3>& getPoints() const {return renderPoints;}
    static const IvVector3 lerp(IvVector3& a, IvVector3& b, float t);
    
private:
    
<<<<<<< HEAD
    //only for testing
    void initializeCurveTestData();
    
    std::vector<Point> points;
    std::vector<IvVector3> renderPoints;
    
    void buildCurve();
    void extractPoints(std::vector<IvVector3>& line);
    int editIndex = 0;
    const float editSpeed = 8.0f;
    const float tStep = 0.05f;
    
    
    const IvVector3 getPointFromLine(float t, std::vector<IvVector3>& line) const;
    const IvVector3 lerp(IvVector3& a, IvVector3& b, float t) const;
=======
    int editIndex = 0;
    const float editSpeed = 8.0f;
    const float tStep = 0.05f;
    std::vector<Point> points;
    std::vector<IvVector3> renderPoints;
    
    //only for testing
    void initializeCurveTestData();
    
    void buildCurve();
    void extractPoints(std::vector<IvVector3>& line);
    const IvVector3 getPointFromLine(float t, std::vector<IvVector3>& line) const;
>>>>>>> ae46f3750af81755f8ab71474737fdf362ea3f8d
};

