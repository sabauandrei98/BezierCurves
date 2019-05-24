//===============================================================================
// @ IvVertexBufferOGL.cpp
// 
// OpenGL vertex buffer implementation
// ------------------------------------------------------------------------------
// Copyright (C) 2008-2015  James M. Van Verth and Lars M. Bishop.
// All rights reserved.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.
//===============================================================================

//-------------------------------------------------------------------------------
//-- Dependencies ---------------------------------------------------------------
//-------------------------------------------------------------------------------

#include "IvVertexBufferOGL.h"
#include "IvAssert.h"

//-------------------------------------------------------------------------------
//-- Static Members -------------------------------------------------------------
//-------------------------------------------------------------------------------

#define BUFFER_OFFSET(i) ((char *)nullptr + (i))

//-------------------------------------------------------------------------------
//-- Methods --------------------------------------------------------------------
//-------------------------------------------------------------------------------

//-------------------------------------------------------------------------------
// @ IvVertexBufferOGL::IvVertexBufferOGL()
//-------------------------------------------------------------------------------
// Default constructor
//-------------------------------------------------------------------------------
IvVertexBufferOGL::IvVertexBufferOGL() : IvVertexBuffer(), mBufferID(0), 
                                         mVertexArrayID(0)
{
}

//-------------------------------------------------------------------------------
// @ IvVertexBufferOGL::~IvVertexBufferOGL()
//-------------------------------------------------------------------------------
// Destructor
//-------------------------------------------------------------------------------
IvVertexBufferOGL::~IvVertexBufferOGL()
{
    ASSERT(!mBufferID);
    ASSERT(!mVertexArrayID);
}

//-------------------------------------------------------------------------------
// @ IvVertexBufferOGL::Create()
//-------------------------------------------------------------------------------
// Create the resources for the vertex buffer
//-------------------------------------------------------------------------------
bool
IvVertexBufferOGL::Create(IvVertexFormat format, unsigned int numVertices, 
                          void* data, IvDataUsage usage)
{
    if ( numVertices == 0 || mBufferID != 0 )
        return false;
    
    if ( usage == kImmutableUsage && !data )
    {
        return false;
    }
    
    // create vertex array handle
    glGenVertexArrays(1, &mVertexArrayID);
    glBindVertexArray(mVertexArrayID);

    // create the handle
    glGenBuffers( 1, &mBufferID );
    glBindBuffer( GL_ARRAY_BUFFER, mBufferID );
    
    // allocate the memory
    (void) glGetError();  // clear any previous errors (probably not safe)
    glBufferData( GL_ARRAY_BUFFER, numVertices*kIvVFSize[format], data,
                  usage == kDynamicUsage ? GL_DYNAMIC_DRAW : GL_STATIC_DRAW );
    if ( glGetError() != GL_NO_ERROR )
    {
        Destroy();
        return false;
    }
    
    mVertexFormat = format;
    mNumVertices = numVertices;

    // set up vertex attributes
    // this should match sShaderHeader in IvVertexShaderOGL.cpp
#define COLOR 0
#define NORMAL 1
#define TEXCOORD0 2
#define POSITION 3
    size_t stride = kIvVFSize[mVertexFormat];
    size_t offset = 0;
    switch (mVertexFormat)
    {
        case kPFormat:
            break;

        case kCPFormat:
        default:
            glEnableVertexAttribArray(COLOR);
            glVertexAttribPointer(COLOR, 4, GL_UNSIGNED_BYTE, GL_TRUE, stride, (GLvoid*) offset);
            offset += 4*sizeof(UChar8);
            break;
            
        case kNPFormat:
            glEnableVertexAttribArray(NORMAL);
            glVertexAttribPointer(NORMAL, 3, GL_FLOAT, GL_FALSE, stride, (GLvoid*) offset);
            offset += 3*sizeof(float);
            break;
            
        case kCNPFormat:
            glEnableVertexAttribArray(COLOR);
            glVertexAttribPointer(COLOR, 4, GL_UNSIGNED_BYTE, GL_TRUE, stride, (GLvoid*) offset);
            offset += 4*sizeof(UChar8);
            glEnableVertexAttribArray(NORMAL);
            glVertexAttribPointer(NORMAL, 3, GL_FLOAT, GL_FALSE, stride, (GLvoid*) offset);
            offset += 3*sizeof(float);
            break;
            
        case kTCPFormat:
            glEnableVertexAttribArray(TEXCOORD0);
            glVertexAttribPointer(TEXCOORD0, 2, GL_FLOAT, GL_FALSE, stride, (GLvoid*) offset);
            offset += 2*sizeof(float);
            glEnableVertexAttribArray(COLOR);
            glVertexAttribPointer(COLOR, 4, GL_UNSIGNED_BYTE, GL_TRUE, stride, (GLvoid*) offset);
            offset += 4*sizeof(UChar8);
            break;
            
        case kTNPFormat:
            glEnableVertexAttribArray(TEXCOORD0);
            glVertexAttribPointer(TEXCOORD0, 2, GL_FLOAT, GL_FALSE, stride, (GLvoid*) offset);
            offset += 2*sizeof(float);
            glEnableVertexAttribArray(NORMAL);
            glVertexAttribPointer(NORMAL, 3, GL_FLOAT, GL_FALSE, stride, (GLvoid*) offset);
            offset += 3*sizeof(float);
            break;
    }
    
    // we always do position
    glEnableVertexAttribArray(POSITION);
    glVertexAttribPointer(POSITION, 3, GL_FLOAT, GL_FALSE, stride, (GLvoid*) offset);
    
    glBindVertexArray( 0 );
    
    mUsage = usage;
    
    return true;
}

//-------------------------------------------------------------------------------
// @ IvVertexBufferOGL::Destroy()
//-------------------------------------------------------------------------------
// Destroy the resources for the vertex buffer
//-------------------------------------------------------------------------------
void
IvVertexBufferOGL::Destroy()
{
    // clear the handle and any associated memory
    glDeleteBuffers( 1, &mBufferID );
    mBufferID = 0;
    glDeleteVertexArrays(1, &mVertexArrayID);
    mVertexArrayID = 0;
    
    mNumVertices = 0;
}

//-------------------------------------------------------------------------------
// @ IvVertexBufferOGL::MakeActive()
//-------------------------------------------------------------------------------
// Make this the active vertex buffer
//-------------------------------------------------------------------------------
bool
IvVertexBufferOGL::MakeActive()
{
    
    if ( mBufferID == 0 || mNumVertices == 0 )
        return false;
    
    // set arrays active
    glBindVertexArray(mVertexArrayID);
    
    return true;
}

//-------------------------------------------------------------------------------
// @ IvVertexBufferOGL::BeginLoadData()
//-------------------------------------------------------------------------------
// Lock down the buffer and start loading
// Returns pointer to client side data area
//-------------------------------------------------------------------------------
void*
IvVertexBufferOGL::BeginLoadData()
{
    if (mUsage == kImmutableUsage)
    {
        return nullptr;
    }
    
    glBindBuffer( GL_ARRAY_BUFFER, mBufferID );
    return glMapBuffer(GL_ARRAY_BUFFER, GL_WRITE_ONLY);
}

//-------------------------------------------------------------------------------
// @ IvVertexBufferOGL::EndLoadData()
//-------------------------------------------------------------------------------
// Unlock the buffer, we're done loading
// Returns true if all went well
//-------------------------------------------------------------------------------
bool
IvVertexBufferOGL::EndLoadData()
{
    if (mUsage == kImmutableUsage)
    {
        return false;
    }
    
    glBindBuffer(GL_ARRAY_BUFFER, mBufferID);
    bool ret = glUnmapBuffer(GL_ARRAY_BUFFER) != GL_FALSE;
    return ret;
}

