#!/bin/sh
time { ../configure			\
	--prefix=/lfs/tools 		\
	--with-sysroot=/lfs		\
	--with-lib-path=/lfs/tools/lib 	\
	--target=$LFS_TGT          	\
	--disable-nls              	\
	--disable-werror		\
 && make -j4 && case $(uname -m) in x86_64) mkdir -v /lfs/tools/lib && ln -sv lib /lfs/tools/lib64 ;; esac && make install; }
