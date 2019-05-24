#pragma once

#include <IvGame.h>
#include "BezierCurve.hpp"
#include "RoadGenerator.hpp"

class BezierCurve;
class RoadGenerator;

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
