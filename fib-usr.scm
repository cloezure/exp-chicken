;;;; fib-usr.scm

(import (chicken foreign)
	(chicken format))

#>
extern int fib(int n);
<#
(define xfib (foreign-lambda int "fib" int))
(do ([i 0 (add1 i)])
    ([> i 10])
  (printf "~A " (xfib i)))
(newline)
