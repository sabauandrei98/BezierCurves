//===============================================================================
// @ IvUniformD3D11.h
// 
// D3D11 shader uniform/constant implementation
// ------------------------------------------------------------------------------
// Copyright (C) 2008-2015  James M. Van Verth and Lars M. Bishop.
// All rights reserved.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.
//===============================================================================

#ifndef __IvUniformD3D11__h__
#define __IvUniformD3D11__h__

//-------------------------------------------------------------------------------
//-- Dependencies ---------------------------------------------------------------
//-------------------------------------------------------------------------------

#include "IvUniform.h"
#include "IvTypes.h"
#include <d3d11.h>

//-------------------------------------------------------------------------------
//-- Typedefs, Structs ----------------------------------------------------------
//-------------------------------------------------------------------------------

class IvConstantTableD3D11;
class IvMatrix44;
class IvTextureD3D11;
class IvVector4;
class IvShaderProgramD3D11;

//-------------------------------------------------------------------------------
//-- Classes --------------------------------------------------------------------
//-------------------------------------------------------------------------------

class IvUniformD3D11 : public IvUniform
{
public:
    friend class IvShaderProgramD3D11;

    void SetValue( float value, unsigned int index) final;
    void SetValue(const IvVector4& value, unsigned int index) final;
    void SetValue(const IvVector3& value, unsigned int index) final;
    void SetValue(const IvMatrix44& value, unsigned int index) final;
    void SetValue(IvTexture* value) final;
    
    // return false on type mismatch
    bool GetValue(float& value, unsigned int index) const final;
    bool GetValue(IvVector4& value, unsigned int index) const final;
    bool GetValue(IvVector3& value, unsigned int index) const final;
    bool GetValue(IvMatrix44& value, unsigned int index) const final;
    bool GetValue(IvTexture*& value) const final;
    
protected:
    // constructor/destructor for most uniforms
    IvUniformD3D11(IvUniformType type, unsigned int count, void* offset,
                  IvConstantTableD3D11* constantTable, 
                  IvShaderProgramD3D11* shader);
    // constructor/destructor for texture uniforms
    IvUniformD3D11(int textureUnit, int samplerUnit,
                  IvShaderProgramD3D11* shader);
    ~IvUniformD3D11() final;
    void Update();

    IvShaderProgramD3D11*    mShader;
    union
    {
        // we use an offset into the global constant buffer
        // to update most uniforms
        struct
        {
            void*                 mOffset;
            IvConstantTableD3D11* mConstantTable;
        };
        // we use the texture and sampler units for textures
        struct
        {
            intptr_t              mTextureUnit;
            intptr_t              mSamplerUnit;
        };
    };

    // Could subclass for each type (particularly textures), 
    // but likely not worth it.
    union  
    {
        float* mFloat;
        IvVector3* mVector3;
        IvVector4* mVector4;
        IvMatrix44* mMatrix44;
        IvTextureD3D11* mTexture;
    } mValue;

private:
    // copy operations (unimplemented so we can't copy)
    IvUniformD3D11(const IvUniformD3D11& other);
    IvUniformD3D11& operator=(const IvUniformD3D11& other);
}; 

//-------------------------------------------------------------------------------
//-- Inlines --------------------------------------------------------------------
//-------------------------------------------------------------------------------

//-------------------------------------------------------------------------------
//-- Externs --------------------------------------------------------------------
//-------------------------------------------------------------------------------

#endif
