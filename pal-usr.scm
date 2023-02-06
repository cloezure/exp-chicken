;; Client pal-usr.scm
(declare (uses pal-proc))

(import (chicken process-context))

(let ([arg (car (command-line-arguments))])
  (display
   (string-append arg
		  (if (palindrome? arg)
		      " is a palindrome"
		      " isn't a palindrome")))
  (newline))
