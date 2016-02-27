SRPM tools for git 2.7.x

This github repo includes tools for building git-2.7.x RPM's. It is
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
	  
The googlecode repository for these prevoiusly used by iusrelease is
out of date date and should be discarded. The selection to build or
not build the documentation from the source is also disabled: it
triples compilation time to no good purpose. Intead, use the canonical
documentaion from http://kernel.org/

       	  Nico Kadel-Garcia <nkadelgmail.com>

	  