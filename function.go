package main

/*
#ifdef HAVE_CONFIG_H
#include "config.h"
#endif

#include "php.h"
#include "php_ini.h"
#include "ext/standard/info.h"
#include "php_go2php.h"

*/
import "C"
import (
	"log"
)

//export hello
func hello() {
	log.Println("hello php")
}
