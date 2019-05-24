//===============================================================================
// @ IvRenderer.h
// 
// Windowing routines
// ------------------------------------------------------------------------------
// Copyright (C) 2008-2015 by James M. Van Verth and Lars M. Bishop.
// All rights reserved.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.
//
//
//
// Virtual base class for platform-dependant windowing
//===============================================================================

#ifndef __IvRenderer__h__
#define __IvRenderer__h__

//-------------------------------------------------------------------------------
//-- Dependencies ---------------------------------------------------------------
//-------------------------------------------------------------------------------
#include <IvMatrix44.h>
#include <IvVertexBuffer.h>
#include <IvIndexBuffer.h>
#include "IvTypes.h"
#include "IvWriter.h"

//-------------------------------------------------------------------------------
//-- Typedefs, Structs ----------------------------------------------------------
//-------------------------------------------------------------------------------

class IvResourceManager;
class IvShaderProgram;

enum IvBlendFunc
{
    kZeroBlendFunc,
    kOneBlendFunc,
    kSrcColorBlendFunc,
    kOneMinusSrcColorBlendFunc,
    kSrcAlphaBlendFunc,
    kOneMinusSrcAlphaBlendFunc,
    kDestColorBlendFunc,
    kOneMinusDestColorBlendFunc,
    kDestAlphaBlendFunc,
    kOneMinusDestAlphaBlendFunc,

    kLastBlendFunc = kOneMinusDestAlphaBlendFunc
};
const int kBlendFuncCount = kLastBlendFunc+1;

enum IvBlendOp
{
    kAddBlendOp,
    kSubtractBlendOp,
    kMinBlendOp,
    kMaxBlendOp,

    kLastBlendOp = kMaxBlendOp
};
const int kBlendOpCount = kLastBlendOp+1;

enum IvFillMode
{
    kWireframeFill,
    kSolidFill,

    kLastFillMode = kSolidFill
};
const int kFillModeCount = kLastFillMode+1;

enum IvShadeMode
{
    kFlatShaded,
    kGouraudShaded,

    kLastShadeMode = kGouraudShaded
};
const int kShadeModeCount = kLastShadeMode+1;

enum IvClearBuffer
{
    kColorClear,
    kDepthClear,
    kColorDepthClear,

    kLastClear = kColorDepthClear
};
const int kClearCount = kLastClear+1;

enum IvDepthTestFunc
{
    kDisableDepthTest,
    kGreaterDepthTest,
    kGreaterEqualDepthTest,
    kLessDepthTest,
    kLessEqualDepthTest,

    kLastDepthTest = kLessEqualDepthTest
};
const int kDepthTestCount = kLastDepthTest+1;

enum IvPrimType 
{
    kPointListPrim,
    kLineListPrim,
    kLineStripPrim,
    kTriangleListPrim,
    kTriangleStripPrim,

    kLastPrim = kTriangleStripPrim
};
const int kPrimTypeCount = kLastPrim + 1;

enum IvAPI
{
    kOpenGL,
    kD3D11
};

//-------------------------------------------------------------------------------
//-- Classes --------------------------------------------------------------------
//-------------------------------------------------------------------------------

class IvRenderer 
{
public:
    // Create defined in each subclass
    static void Destroy();

    virtual bool Initialize( unsigned int  width, unsigned int  height ) = 0;
    virtual void Resize( unsigned int width, unsigned int height ) = 0;
        
    inline void Activate(bool isActive) { isActive = mIsActive; }
    inline bool IsActive()              { return mIsActive; }

    inline unsigned int GetWidth()      { return mWidth; }
    inline unsigned int GetHeight()     { return mHeight; }
    
    inline float GetFOV()                           { return mFOV; }
    inline float GetNearPlane()                 { return mNear; }
    inline float GetFarPlane()                      { return mFar; }
    inline void SetFOV( float fov )             { mFOV = fov; }
    inline void SetNearPlane( float nearPlane ) { mNear = nearPlane; }
    inline void SetFarPlane( float farPlane )       { mFar = farPlane; }

    virtual void  SetClearColor( float red, float green, float blue, float alpha ) = 0;
    virtual void  SetClearDepth( float depth ) = 0;
    virtual void  ClearBuffers(IvClearBuffer buffer) = 0;

    virtual void SetBlendFunc(IvBlendFunc srcBlend, IvBlendFunc dstBlend, IvBlendOp op) = 0;
    virtual void SetColorMask( bool red, bool green, bool blue, bool alpha ) = 0;
    virtual void SetFillMode(IvFillMode fill) = 0;
    virtual void SetShadeMode(IvShadeMode shade) = 0;
    virtual IvShadeMode GetShadeMode() = 0;

    virtual void SetDepthTest(IvDepthTestFunc func) = 0;
    virtual IvDepthTestFunc GetDepthTest() = 0;
    virtual void SetDepthWrite(bool write) = 0;

    const IvMatrix44& GetWorldMatrix();
    virtual void SetWorldMatrix(const IvMatrix44& matrix);
    const IvMatrix44& GetViewMatrix();
    virtual void SetViewMatrix(const IvMatrix44& matrix);
    const IvMatrix44& GetProjectionMatrix();
    virtual void SetProjectionMatrix(const IvMatrix44& matrix);
    
    void SetWVPMat(IvMatrix44& matrix);

    void SetDefaultDiffuseColor(float red, float green, float blue, float alpha);
    void SetDefaultLightAmbient(float red, float green, float blue, float alpha);
    void SetDefaultLightDiffuse(float red, float green, float blue, float alpha);
    void SetDefaultLightDirection(const IvVector3& direction);

    // Setting this to nullptr uses the default shader for the vertex format
    // that is drawn
    // However, if nullptr is set, Get will return nullptr, as the default shader cannot
    // be determined without a vertex format
    virtual IvShaderProgram* GetShaderProgram() = 0;
    virtual void SetShaderProgram(IvShaderProgram* program) = 0;
    
    virtual void Draw(IvPrimType primType, IvVertexBuffer* vertexBuffer, 
                      IvIndexBuffer* indexBuffer, unsigned int numIndices) = 0;
    virtual void Draw(IvPrimType primType, IvVertexBuffer* vertexBuffer, unsigned int numVertices) = 0;
    inline void Draw(IvPrimType primType, IvVertexBuffer* vertexBuffer, IvIndexBuffer* indexBuffer) 
    {
        Draw( primType, vertexBuffer, indexBuffer, indexBuffer->GetNumIndices() );
    }
    inline void Draw(IvPrimType primType, IvVertexBuffer* vertexBuffer)
    {
        Draw( primType, vertexBuffer, vertexBuffer->GetVertexCount() );
    }

    const IvResourceManager* GetResourceManager() const;
    IvResourceManager* GetResourceManager();

    inline IvAPI GetAPI() { return mAPI; }

    static IvRenderer*  mRenderer;          // global pointer

protected:
    // constructor/destructor
    IvRenderer();
    virtual ~IvRenderer();

    bool            mIsActive;

    unsigned int mWidth;        // current width, height
    unsigned int mHeight;

    float       mFOV;
    float       mNear;
    float       mFar;
    
    IvResourceManager*  mResourceManager;

    IvAPI             mAPI;

    IvMatrix44        mWorldMat;
    IvMatrix44        mViewMat;
    IvMatrix44        mProjectionMat;

    IvMatrix44        mWVPMat;
    IvMatrix44        mNormalMat;

    IvVector4         mDiffuseColor;
    IvVector4         mLightAmbient;
    IvVector4         mLightDiffuse;
    IvVector4         mLightDirection;

private:
    // copy operations
    IvRenderer(const IvRenderer& other);
    IvRenderer& operator=(const IvRenderer& other);
};


//-------------------------------------------------------------------------------
//-- Inlines --------------------------------------------------------------------
//-------------------------------------------------------------------------------

//-------------------------------------------------------------------------------
//-- Externs --------------------------------------------------------------------
//-------------------------------------------------------------------------------

#endif
