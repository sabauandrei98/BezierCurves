//
//  RoadGenerator.hpp
//  Game
//
//  Created by Andrei Sabu - (p) on 4/10/19.
//

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
#include "../Bezier/BezierCurve.hpp"


class RoadGenerator{
    
public:
    RoadGenerator(BezierCurve* bezierCurve);
    ~RoadGenerator();
    void Draw();
    
private:
    BezierCurve* bezier;
    
    const float roadWidth = 1.5f;
    
    void findTrackPoints();
    const std::pair<IvVector3, IvVector3> calculateNormalOnPoint(IvVector3& a, IvVector3& b, IvVector3& p) const;
    
    
};
