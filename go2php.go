package main

/*
#ifdef HAVE_CONFIG_H
#include "config.h"
#endif

#include "php.h"
#include "php_ini.h"
#include "ext/standard/info.h"
#include "php_go2php.h"

static int le_go2php;


PHP_MINIT_FUNCTION(go2php)
{
	return SUCCESS;
}

PHP_MSHUTDOWN_FUNCTION(go2php)
{
	return SUCCESS;
}

PHP_RINIT_FUNCTION(go2php)
{
	return SUCCESS;
}

PHP_RSHUTDOWN_FUNCTION(go2php)
{
	return SUCCESS;
}

PHP_MINFO_FUNCTION(go2php)
{
	php_info_print_table_start();
	php_info_print_table_header(2, "go2php support", "enabled");
	php_info_print_table_end();
}

const zend_function_entry go2php_functions[] = {
	PHP_FE(go2php_hello,	NULL)
	PHP_FE_END
};

zend_module_entry go2php_module_entry = {
	STANDARD_MODULE_HEADER,
	"go2php",
	go2php_functions,
	PHP_MINIT(go2php),
	PHP_MSHUTDOWN(go2php),
	PHP_RINIT(go2php),
	PHP_RSHUTDOWN(go2php),
	PHP_MINFO(go2php),
	PHP_GO2PHP_VERSION,
	STANDARD_MODULE_PROPERTIES
};

#ifdef COMPILE_DL_GO2PHP
ZEND_GET_MODULE(go2php)
#endif

extern void hello();

PHP_FUNCTION(go2php_hello)
{
	hello();
}

*/
import "C"

func main() {}
