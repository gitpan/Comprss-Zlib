/*
 *	File:		unix.h
 *				©1993-1995 metrowerks Inc. All rights reserved
 *	Author:		Berardino E. Baratta
 *
 *	Content:	Interface file to standard UNIX-style entry points ...
 *
 *	NB:			This file implements some UNIX low level support.  These functions
 *				are not guaranteed to be 100% conformant.
 */

#ifndef	_UNIX
#define	_UNIX

#ifndef _STDIO
#include <stdio.h>
#endif

#ifndef _FCNTL
#include <fcntl.h>
#endif

#ifndef _STAT
#include <stat.h>
#endif

#ifndef	_UNISTD
#include <unistd.h>
#endif

#ifndef _UTIME
#include <utime.h>
#endif

#ifndef _UTSNAME
#include <utsname.h>
#endif

#pragma options align=mac68k
#if defined(__CFM68K__) && !defined(__USING_STATIC_LIBS__)
	#pragma import on
#endif

/*
 *	Globals for setting the type and creator of new files ...
 */
extern long _fcreator, _ftype;

#ifdef __cplusplus
extern "C" {
#endif

/*
 *	Returns the fileid associated with a stream.
 */
int fileno(FILE *stream);

/*
 *	Converts a fileid into a stream.
 */
FILE *fdopen(int fildes, char *type);

/*
 *	Return the current on disk file position.
 */
long tell(int fildes);

/*
 *	Internal ANSI library functions for reading and writing.
 */
int _Fread(FILE *stream, unsigned char *buf, int count);
int _Fwrite(FILE *stream, const unsigned char *buf, int count);

#ifdef __cplusplus
}
#endif

#if defined(__CFM68K__) && !defined(__USING_STATIC_LIBS__)
	#pragma import reset
#endif
#pragma options align=reset

#endif
