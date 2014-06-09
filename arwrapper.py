#!/usr/bin/env python

import os
import os.path
import sys
import subprocess

def winpath(unixpath):
    """ returns the windows version of a unixpath """
    if unixpath.startswith("/cygdrive/c"):
        return unixpath.replace("/cygdrive/c", "c:")
    if unixpath[0] == "/" and unixpath[2] == "/" and os.path.exists(unixpath[1] + ":"):
        return unixpath[1] + ":" + unixpath[2:]
    return unixpath

if __name__ == "__main__":
    fargs = ["lib"] + sys.argv[1:]

    # fix for sqlite calling $(AR) -cr libsqlite.a 
    if fargs[1].startswith("-cr"):
        del fargs[1]

    fargs[1] = "-OUT:%s" % (fargs[1])

    print "Calling ", fargs

    sys.exit(subprocess.call(fargs))
