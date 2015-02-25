/*
 * Handle different Fortran conventions.
 */

#ifndef SCIPY_LINALG_FORTRAN_DEFS_H
#define SCIPY_LINALG_FORTRAN_DEFS_H
#if defined(NO_APPEND_FORTRAN)
#if defined(UPPERCASE_FORTRAN)
#define F_FUNC(f,F) F
#else
#define F_FUNC(f,F) f
#endif
#else
#if defined(UPPERCASE_FORTRAN)
#define F_FUNC(f,F) F##_
#else
#define F_FUNC(f,F) f##_
#endif
#endif
#endif
