# This Makefile is for the Compress::Zlib extension to perl.
#
# It was generated automatically by MakeMaker version
# 1.04 (Revision: ) from the contents of
# Makefile.PL. Don't edit this file, edit Makefile.PL instead.
#
#	ANY CHANGES MADE HERE WILL BE LOST!
#
#   MakeMaker Parameters:

#	INC => q[ ]
#	LIBS => [q[-lz]]
#	NAME => q[Compress::Zlib]
#	VERSION_FROM => q[Zlib.pm]
#	dist => { COMPRESS=>q[gzip], SUFFIX=>q[gz] }

# --- MakeMaker constants section:
NAME = Compress::Zlib
DISTNAME = Compress-Zlib
NAME_SYM = Compress_Zlib
VERSION = 1.04
VERSION_SYM = 1_04
XS_VERSION = 1.04
INST_LIB = ::::lib
INST_ARCHLIB = ::::lib
PERL_LIB = ::::lib
PERL_SRC = ::::
PERL = ::::miniperl
FULLPERL = ::::perl
SOURCE =  Zlib.c $(C_FILES)

MODULES = Zlib.pm


.INCLUDE : $(PERL_SRC)BuildRules.mk


# FULLEXT = Pathname for extension directory (eg DBD:Oracle).
# BASEEXT = Basename part of FULLEXT. May be just equal FULLEXT.
# ROOTEXT = Directory part of FULLEXT (eg DBD)
# DLBASE  = Basename part of dynamic library. May be just equal BASEEXT.
FULLEXT = Compress:Zlib
BASEEXT = Zlib
ROOTEXT = Compress:
INC =  

# Handy lists of source code files:
XS_FILES= Zlib.xs
C_FILES = Zlib.c \
	adler32.c \
	compress.c \
	crc32.c \
	deflate.c \
	example.c \
	gzio.c \
	infblock.c \
	infcodes.c \
	inffast.c \
	inflate.c \
	inftrees.c \
	infutil.c \
	maketree.c \
	minigzip.c \
	trees.c \
	uncompr.c \
	zutil.c
H_FILES = deflate.h \
	infblock.h \
	infcodes.h \
	inffast.h \
	inffixed.h \
	inftrees.h \
	infutil.h \
	trees.h \
	unix2.h \
	zconf.h \
	zlib.h \
	zutil.h


.INCLUDE : $(PERL_SRC)ext:ExtBuildRules.mk


# --- MakeMaker dlsyms section:

dynamic :: Zlib.exp


Zlib.exp: Makefile.PL
	$(PERL) "-I$(PERL_LIB)" -e 'use ExtUtils::Mksymlists; Mksymlists("NAME" => "Compress::Zlib", "DL_FUNCS" => {  }, "DL_VARS" => []);'


# --- MakeMaker dynamic section:

all :: dynamic

install :: do_install_dynamic

install_dynamic :: do_install_dynamic


# --- MakeMaker static section:

all :: static

install :: do_install_static

install_static :: do_install_static


# --- MakeMaker clean section:

# Delete temporary files but do not touch installed files. We don't delete
# the Makefile here so a later make realclean still has a makefile to use.

clean ::
	$(RM_RF) Zlib.c
	$(MV) Makefile.mk Makefile.mk.old


# --- MakeMaker realclean section:

# Delete temporary files (via clean) and also delete installed files
realclean purge ::  clean
	$(RM_RF) Makefile.mk Makefile.mk.old


# --- MakeMaker postamble section:


# --- MakeMaker rulez section:

install install_static install_dynamic :: 
	$(PERL_SRC)PerlInstall -l $(PERL_LIB)
	$(PERL_SRC)PerlInstall -l "Bird:MacPerl Ä:site_perl:"

.INCLUDE : $(PERL_SRC)BulkBuildRules.mk


# End.
