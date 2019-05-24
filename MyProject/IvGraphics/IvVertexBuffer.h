//===============================================================================
// @ IvVertexBuffer.h
// 
// Base class for vertex buffer
// ------------------------------------------------------------------------------
// Copyright (C) 2008-2015  James M. Van Verth and Lars M. Bishop.
// All rights reserved.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.
//===============================================================================

#ifndef __IvVertexBuffer__h__
#define __IvVertexBuffer__h__

//-------------------------------------------------------------------------------
//-- Dependencies ---------------------------------------------------------------
//-------------------------------------------------------------------------------

#include "IvVertexFormats.h"

//-------------------------------------------------------------------------------
//-- Typedefs, Structs ----------------------------------------------------------
//-------------------------------------------------------------------------------

//-------------------------------------------------------------------------------
//-- Classes --------------------------------------------------------------------
//-------------------------------------------------------------------------------

class IvVertexBuffer
{
public:
    // interface routines
    virtual void* BeginLoadData() = 0;
    virtual bool  EndLoadData() = 0;

    inline IvVertexFormat GetVertexFormat() { return mVertexFormat; }
    inline unsigned int GetVertexCount() { return mNumVertices; }

protected:
    // constructor/destructor
    IvVertexBuffer() : mVertexFormat( kCPFormat ), mNumVertices( 0 )
    {
    }
    virtual ~IvVertexBuffer() {}

    IvVertexFormat      mVertexFormat;
    unsigned int        mNumVertices;

private:
    // copy operations (unimplemented so we can't copy)
    IvVertexBuffer(const IvVertexBuffer& other);
    IvVertexBuffer& operator=(const IvVertexBuffer& other);
}; 

#endif
