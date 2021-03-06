# pkg-config.mk -- build tools for Click
# Eddie Kohler
#
# Copyright (c) 2006 Regents of the University of California
# Copyright (c) 2008 Meraki, Inc.
#
# Permission is hereby granted, free of charge, to any person obtaining a
# copy of this software and associated documentation files (the "Software"),
# to deal in the Software without restriction, subject to the conditions
# listed in the Click LICENSE file. These conditions include: you must
# preserve this copyright notice, and you cannot mention the copyright
# holders in advertising related to the Software without their permission.
# The Software is provided WITHOUT ANY WARRANTY, EXPRESS OR IMPLIED. This
# notice is a summary of the Click LICENSE file; the license in that file is
# legally binding.

CLICKCC = gcc
CLICKCPP = gcc -E
CLICKCXX = g++
CLICKCXXCPP = g++ -E

CLICKAR_CREATE = ar cru
CLICKRANLIB = ranlib
CLICKSTRIP = strip

CLICKKERNEL_CC = gcc -w  -W -Wall
CLICKKERNEL_CXX = g++ -w  -W -Wall -fno-exceptions -fno-rtti -fpermissive
CLICKLINUX_BUILDDIR = NONE
CLICKLINUX_SRCDIR = NONE
CLICKLINUX_MAKEARGS = 
CLICKLINUX_FIXINCLUDES_PROGRAM = 

CLICKCPPFLAGS = -Wno-write-strings -Wno-literal-suffix -D__STDC_LIMIT_MACROS -I/home/justine/DPDK-1.5.0/x86_64-default-linuxapp-gcc/include
CLICKCFLAGS = -g -O2 -W -Wall
CLICKKERNEL_CFLAGS =  -O2
CLICKCXXFLAGS = -g -O2 -std=gnu++11
CLICKKERNEL_CXXFLAGS =  -O2 -std=gnu++11
CLICKDEPCFLAGS = -MD -MP

CLICKDEFS = -DHAVE_CONFIG_H
CLICKINCLUDES = -I$(clickincludedir) -I$(clicksrcdir) 
CLICKLDFLAGS = -lcrypto -lssl -L/home/justine/DPDK-1.5.0/x86_64-default-linuxapp-gcc/lib
CLICKLDMODULEFLAGS = 

CLICKAUTOCONF = autoconf
CLICKGMAKE = make
CLICKINSTALL = /usr/bin/install -c

