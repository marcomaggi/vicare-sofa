dnl @configure_input@
dnl

AC_PREREQ([2.68])
AC_INIT([Vicare/Sofa],[0.4d1],[marco.maggi-ipsu@poste.it],
  [vicare-sofa],[http://marcomaggi.github.com/vicare.html])
AC_CONFIG_SRCDIR([lib/vicare/astronomy/sofa.vicare.sls])
AC_CONFIG_MACRO_DIR([meta/autotools])
AC_CONFIG_AUX_DIR([meta/autotools])
AC_CANONICAL_BUILD
AC_CANONICAL_HOST
AC_CANONICAL_TARGET
AM_INIT_AUTOMAKE([foreign subdir-objects dist-xz no-dist-gzip])
AM_MAINTAINER_MODE

AC_PROG_CC
AC_PROG_CC_C_O
AM_PROG_AR
AC_PROG_INSTALL
AC_PROG_LN_S
AC_PROG_MAKE_SET
AC_PROG_MKDIR_P

AC_LANG([C])
AC_DEFINE([_GNU_SOURCE],[1],[enable everything GNU])

VICARE_SCHEME
VICARE_CHECK_LIBRARY([VICARE],[(vicare (0 4 2017 1 (>= 10)))])
AS_IF([test "$vicare_cv_schemelib_VICARE" = no],
  [AC_MSG_ERROR([wrong Vicare version],1)])

VICARE_CHECK_LIBRARY([VICARE_FFI],
  [(vicare ffi (or (0 4 2015 5 (>= 27))
                   (0 4 2015 (>= 6))
                   (0 4 (>= 2016))))])

AS_IF([test "$vicare_cv_schemelib_VICARE_FFI" = no],
  [AC_MSG_ERROR([wrong Vicare FFI library version],1)])

# Command  line  options  for  the executable  "vicare".   The  variable
# AX_VFLAGS is  for options preselected by  the building infrastructure.
# The variable VFLAGS  is for user options selected on  the command line
# of "configure" and "make", for example:
#
#    $ make VFLAGS="-g --print-loaded-libraries"
#
AS_VAR_SET(AX_VFLAGS,["-O2 --verbose"])
AS_VAR_SET_IF(VFLAGS,,[AS_VAR_SET(VFLAGS)])

VICARE_OPTION_DEBUGGING_MODE

AM_CONDITIONAL([WANT_VICARE_DEBUG],[test x$VICARE_DEBUG = xyes])
AM_COND_IF([WANT_VICARE_DEBUG],[AS_VAR_SET(VFLAGS,"$VFLAGS -g")])

VICARE_ENABLE_OPTION([INSTALL_SOURCES],[sources-installation],[no],
  [whether to install source Scheme libraries],
  [enable installation of source Scheme libraries])
AM_CONDITIONAL([WANT_INSTALL_SOURCES],
  [test "x$vicare_enable_INSTALL_SOURCES" = xyes])

VICARE_ENABLE_OPTION([TIME_TESTS],[time-tests],[no],
  [whether to enable timing of tests],
  [enable timing of tests])
AM_CONDITIONAL([WANT_TIME_TESTS],[test "x$vicare_enable_TIME_TESTS" = xyes])

AM_COND_IF([WANT_TIME_TESTS],
  [AC_PATH_PROG([TIME_PROGRAM],[time])])

#page
#### sofa configuration

AC_CHECK_LIB([sofac],[iauCal2jd],,
  [AC_MSG_FAILURE([missing SOFA C library],[2])])

VICARE_EXTENSION_LIBRARY_VERSION([sofa],[0],[0],[0])

#page
#### finish

VICARE_OUTPUT
AC_CONFIG_FILES([Makefile])
AC_OUTPUT

### end of file
# Local Variables:
# mode: autoconf
# page-delimiter: "^#page"
# End:
