SRPM tools for git 2.9.x

This github repo includes tools for building git-2.9.x RPM's. It is
based on the iuscommunity packages at
http://dl.iuscommunity.org/pub/os/archive/CentOS/6/SRPMS/. 

The code for git itself is at https://github.com/git/git.

Download this git repo, download or build the tarballs, and run "make
build" to build a local RPM. Run "make" to use "mock" to build the
default designated RPM's in the local directory.

The primary tarball can be built from the git tag in the primary git
repo at https://github.com/git/git. The secondary tarballs can be built by
using:

          git clean -x -d -f
	  autoconf
	  ./configure
	  make dist-doc
	  
The originally used googlecode repository for these is badly out of
date and should no longer be used. The selection to build or not build
the documentation from the source is also disabled: it triples
compilation time to no good purpose.

       	  Nico Kadel-Garcia <nkadelgmail.com>

	  