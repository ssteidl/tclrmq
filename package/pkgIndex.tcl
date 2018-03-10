# Tcl package index file, version 1.1
# This file is generated by the "pkg_mkIndex" command
# and sourced either when an application starts up or
# by a "package unknown" script.  It invokes the
# "package ifneeded" command to set up package-related
# information so that packages will be loaded automatically
# in response to "package require" commands.  When this
# script is sourced, the variable $dir must contain the
# full path name of this file's directory.

package ifneeded rmq 1.3.2 [list source [file join $dir Channel.tcl]]\n[list source [file join $dir Connection.tcl]]\n[list source [file join $dir Login.tcl]]\n[list source [file join $dir constants.tcl]]\n[list source [file join $dir decoders.tcl]]\n[list source [file join $dir encoders.tcl]]
