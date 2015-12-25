dnl $Id$
dnl config.m4 for extension go2php

dnl Comments in this file start with the string 'dnl'.
dnl Remove where necessary. This file will not work
dnl without editing.

dnl If your extension references something external, use with:

PHP_ARG_WITH(go2php, for go2php support,
  [  --with-go2php             Include go2php support]
)

dnl Otherwise use enable:

dnl PHP_ARG_ENABLE(go2php, whether to enable go2php support,
dnl Make sure that the comment is aligned:
dnl [  --enable-go2php           Enable go2php support])

if test "$PHP_GO2PHP" != "no"; then
  dnl Write more examples of tests here...

  dnl # --with-go2php -> check with-path
  dnl SEARCH_PATH="/usr/local /usr"     # you might want to change this
  dnl SEARCH_FOR="/include/go2php.h"  # you most likely want to change this
  dnl if test -r $PHP_GO2PHP/$SEARCH_FOR; then # path given as parameter
  dnl   GO2PHP_DIR=$PHP_GO2PHP
  dnl else # search default path list
  dnl   AC_MSG_CHECKING([for go2php files in default path])
  dnl   for i in $SEARCH_PATH ; do
  dnl     if test -r $i/$SEARCH_FOR; then
  dnl       GO2PHP_DIR=$i
  dnl       AC_MSG_RESULT(found in $i)
  dnl     fi
  dnl   done
  dnl fi
  dnl
  dnl if test -z "$GO2PHP_DIR"; then
  dnl   AC_MSG_RESULT([not found])
  dnl   AC_MSG_ERROR([Please reinstall the go2php distribution])
  dnl fi

  dnl # --with-go2php -> add include path
  dnl PHP_ADD_INCLUDE($GO2PHP_DIR/include)

  dnl # --with-go2php -> check for lib and symbol presence
  dnl LIBNAME=go2php # you may want to change this
  dnl LIBSYMBOL=go2php # you most likely want to change this 

  dnl PHP_CHECK_LIBRARY($LIBNAME,$LIBSYMBOL,
  dnl [
  dnl   PHP_ADD_LIBRARY_WITH_PATH($LIBNAME, $GO2PHP_DIR/$PHP_LIBDIR, GO2PHP_SHARED_LIBADD)
  dnl   AC_DEFINE(HAVE_GO2PHPLIB,1,[ ])
  dnl ],[
  dnl   AC_MSG_ERROR([wrong go2php lib version or lib not found])
  dnl ],[
  dnl   -L$GO2PHP_DIR/$PHP_LIBDIR -lm
  dnl ])
  dnl
  dnl PHP_SUBST(GO2PHP_SHARED_LIBADD)

  PHP_NEW_EXTENSION(go2php, go2php.c, $ext_shared)
fi
