(import (chicken process-context))

(define (palindrome? x)
  (define (check left right)
    (if (>= left right)
	#t
	(and (char=? (string-ref x left) (string-ref x right))
	     (check (add1 left) (sub1 right)))))
  (check 0 (sub1 (string-length x))))

(let ((arg (car (command-line-arguments))))
  (display
   (string-append arg
		  (if (palindrome? arg)
		      " is a palindrome"
		      " isn't a palindrome")))
  (newline))
