

#ifndef PHP_GO2PHP_H
#define PHP_GO2PHP_H

extern zend_module_entry go2php_module_entry;
#define phpext_go2php_ptr &go2php_module_entry

#define PHP_GO2PHP_VERSION "0.1.0" /* Replace with version number for your extension */

#ifdef PHP_WIN32
# define PHP_GO2PHP_API __declspec(dllexport)
#elif defined(__GNUC__) && __GNUC__ >= 4
# define PHP_GO2PHP_API __attribute__ ((visibility("default")))
#else
# define PHP_GO2PHP_API
#endif

#ifdef ZTS
#include "TSRM.h"
#endif

#ifdef ZTS
#define GO2PHP_G(v) TSRMG(go2php_globals_id, zend_go2php_globals *, v)
#else
#define GO2PHP_G(v) (go2php_globals.v)
#endif

PHP_FUNCTION(go2php_hello);

#endif  /* PHP_GO2PHP_H */
