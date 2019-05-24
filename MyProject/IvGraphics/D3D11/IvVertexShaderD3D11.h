//===============================================================================
// @ IvVertexShaderD3D11.h
// 
// D3D11 vertex shader implementation
// ------------------------------------------------------------------------------
// Copyright (C) 2008-2015   James M. Van Verth and Lars M. Bishop.
// All rights reserved.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.
//===============================================================================

#ifndef __IvVertexShaderD3D11__h__
#define __IvVertexShaderD3D11__h__

//-------------------------------------------------------------------------------
//-- Dependencies ---------------------------------------------------------------
//-------------------------------------------------------------------------------

#include "../IvVertexShader.h"
#include "../IvVertexFormats.h"
#include <d3d11.h>

//-------------------------------------------------------------------------------
//-- Typedefs, Structs ----------------------------------------------------------
//-------------------------------------------------------------------------------

class IvResourceManagerD3D11;
class IvShaderProgramD3D11;
class IvConstantTableD3D11;

//-------------------------------------------------------------------------------
//-- Classes --------------------------------------------------------------------
//-------------------------------------------------------------------------------

class IvVertexShaderD3D11 : private IvVertexShader
{
public:
    // interface routines

    friend class IvResourceManagerD3D11;
    friend class IvShaderProgramD3D11;
    
private:
    // constructor/destructor
    IvVertexShaderD3D11();
    ~IvVertexShaderD3D11() final;
    
    // initialization
    bool CreateFromFile(const char* filename, ID3D11Device* device);
    bool CreateFromString(const char* filename, ID3D11Device* device);
    bool CreateDefault(IvVertexFormat format, ID3D11Device* device);
    
    void Destroy();
    
private:
    // copy operations
    IvVertexShaderD3D11(const IvVertexShaderD3D11& other);
    IvVertexShaderD3D11& operator=(const IvVertexShaderD3D11& other);

    ID3D11VertexShader*  mShaderPtr;
    IvConstantTableD3D11* mConstantTable;
};


//-------------------------------------------------------------------------------
//-- Inlines --------------------------------------------------------------------
//-------------------------------------------------------------------------------

//-------------------------------------------------------------------------------
//-- Externs --------------------------------------------------------------------
//-------------------------------------------------------------------------------

#endif