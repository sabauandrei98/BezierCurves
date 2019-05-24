//===============================================================================
// @ IvGaussianElim.h
// 
// Gaussian elimination routines
// ------------------------------------------------------------------------------
// Copyright (C) 2008-2015 by James M. Van Verth and Lars M. Bishop.
// All rights reserved.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.
//
// Routines to solve linear equations, get inverse, and determinants for
// matrices of arbitrary size
//
// Note that the matrices need to be in column major order, like the base matrices
// in the library
//
//===============================================================================

#ifndef __IvGaussianElim__h__
#define __IvGaussianElim__h__

//-------------------------------------------------------------------------------
//-- Function Prototypes --------------------------------------------------------
//-------------------------------------------------------------------------------

// solve for system Ax = b for n by n matrix and n-vector
// will destroy contents of A and return result in b
bool Solve( float* b, float* A, unsigned int n );

// invert matrix n by n matrix A
// will store results in A
bool InvertMatrix( float* A, unsigned int n );


// Get determinant of matrix using Gaussian elimination
// Will not destroy A
float Determinant( float* A, unsigned int n );

#endif
