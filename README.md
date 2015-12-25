# go2php trial

golang1.5 生成动态库的新特性使得golang写php扩展成为了可能，这只是一个最简单的例子，小小的尝试，能成功编译运行，但是运行成功会后Segmentation fault。。

原理是使用CGO嵌套C和GO代码，用GO去编译了php扩展骨架和GO的具体实现。并没有直接用GO对接API。

ps 这个特性目前仅支持linux环境

## env
* Ubuntu 14.04.3 LTS
* PHP 5.6.16 
* GO 1.5.2

## build
* phpize
* ./configure
* CGO_CFLAGS="-g \
-I./include -I./main \
-I`php-config56 --include-dir` \
-I`php-config56 --include-dir`/main \
-I`php-config56 --include-dir`/TSRM \
-I`php-config56 --include-dir`/Zend \
-I`php-config56 --include-dir`/ext \
-I`php-config56 --include-dir`/ext/date/lib \
-DHAVE_CONFIG_H" CGO_LDFLAGS="-Wl,--export-dynamic -Wl,--unresolved-symbols=ignore-all" go build -p 1 -gcflags "-l" -buildmode=c-shared -o /usr/local/php/lib/php/extensions/{extension_path}/go2php.so *.go
* php -r "go2php_hello();"



