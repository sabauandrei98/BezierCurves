#pragma once

#include <IvGame.h>
#include "Bezier/BezierCurve.hpp"
#include "RoadGenerator/RoadGenerator.hpp"

class BezierCurve;

class Game : public IvGame
{
public:
    Game();
    ~Game();
    bool PostRendererInitialize();

    BezierCurve*     bezierCurve;
    RoadGenerator*   roadGenerator;
protected:
    virtual void UpdateObjects( float dt );
    virtual void Render();
    
private:
    Game( const Game& other );
    Game& operator=( const Game& other );

};
