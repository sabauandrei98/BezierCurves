//===============================================================================
// @ IvIndexBufferOGL.h
// 
// OpenGL index buffer implementation
// ------------------------------------------------------------------------------
// Copyright (C) 2008-2015   James M. Van Verth and Lars M. Bishop.
// All rights reserved.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.
//===============================================================================

#ifndef __IvIndexBufferOGL__h__
#define __IvIndexBufferOGL__h__

//-------------------------------------------------------------------------------
//-- Dependencies ---------------------------------------------------------------
//-------------------------------------------------------------------------------

#include "../IvIndexBuffer.h"
#include "IvResourceManager.h"
#if defined(__APPLE__) && defined(__MACH__)
#include <OpenGL/gl3.h>
#else
#include <GL/glew.h>
#include <GL/gl.h>
#endif

//-------------------------------------------------------------------------------
//-- Typedefs, Structs ----------------------------------------------------------
//-------------------------------------------------------------------------------

//-------------------------------------------------------------------------------
//-- Classes --------------------------------------------------------------------
//-------------------------------------------------------------------------------

class IvIndexBufferOGL : private IvIndexBuffer
{
public:
    // interface routines
    void* BeginLoadData() final;
    bool  EndLoadData() final;
    
    friend class IvResourceManagerOGL;
    friend class IvRendererOGL;
    
private:
    // constructor/destructor
    IvIndexBufferOGL(); 
    ~IvIndexBufferOGL() final;

    // creation 
    bool Create( unsigned int numVertices, void* data, IvDataUsage usage );
    
    // destruction
    void Destroy();
    
    // activate
    bool MakeActive();
    
private:
    // copy operations
    IvIndexBufferOGL(const IvIndexBufferOGL& other);
    IvIndexBufferOGL& operator=(const IvIndexBufferOGL& other);

    GLuint      mBufferID;
    IvDataUsage mUsage;
};


//-------------------------------------------------------------------------------
//-- Inlines --------------------------------------------------------------------
//-------------------------------------------------------------------------------

//-------------------------------------------------------------------------------
//-- Externs --------------------------------------------------------------------
//-------------------------------------------------------------------------------

#endif
