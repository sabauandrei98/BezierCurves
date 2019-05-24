//===============================================================================
// @ IvFileReader.h
// 
// Base classes for text input classes
// ------------------------------------------------------------------------------
// Copyright (C) 2008-2015 by James M. Van Verth and Lars M. Bishop.
// All rights reserved.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.
//
//===============================================================================

#ifndef __IvFileReader__h__
#define __IvFileReader__h__

//-------------------------------------------------------------------------------
//-- Dependencies ---------------------------------------------------------------
//-------------------------------------------------------------------------------

#include <fstream>

//-------------------------------------------------------------------------------
//-- Typedefs, Structs ----------------------------------------------------------
//-------------------------------------------------------------------------------

//-------------------------------------------------------------------------------
//-- Classes --------------------------------------------------------------------
//-------------------------------------------------------------------------------

using namespace std;

class IvFileReader : public ifstream
{
public:
    // constructor/destructor
    inline IvFileReader() : ifstream() {}
    inline IvFileReader( const char* filename ) : ifstream( filename ) {}
    inline ~IvFileReader() {}

    // stream management
    // open the stream
    void Open( const char* filename ) { ifstream::open( filename ); }
    // close the stream
    void Close()                      { ifstream::close(); }                        

protected:
    // hide base open routine (we control the mode )
    void open( const char * filename, openmode mode );

private:
    // copy operations
    IvFileReader(const IvFileReader& other);
    IvFileReader& operator=(const IvFileReader& other);
};


//-------------------------------------------------------------------------------
//-- Inlines --------------------------------------------------------------------
//-------------------------------------------------------------------------------

//-------------------------------------------------------------------------------
//-- Externs --------------------------------------------------------------------
//-------------------------------------------------------------------------------

#endif
