;; (print "what is your name : ")

;; (defvar *name* (read))

;; (defun hello-you (name)
;; 	(format t "Hello ~a!" name)
;; )

;; (hello-you *name*)

;; =================================================

;; (format t "(+ 5 4) = ~d ~%" (+ 5 4))
;; (format t "(- 5 4) = ~d ~%" (- 5 4))
;; (format t "(* 5 4) = ~d ~%" (* 5 4))
;; (format t "(/ 5 4) = ~d ~%" (/ 5 4))
;; (format t "(/ 5 4.0) = ~d ~%" (/ 5 4.0))

;; =================================================

;; (defvar *age* 22)

;; (if (not (or (< *age* 18) (>= *age* 60)) )
;; 	(format t "you can vote ~%")
;; 	(format t "you can't vote ~%")
;; )

;; (if (not (or (< *age* 18) (>= *age* 60)) )
;; 	(progn 
;; 		(format t "you can vote ~%")
;; 		(format t "someting random... ~%")
;; 	)
;; 	(format t "you can't vote ~%")
;; )

;; =================================================

;; (defvar num 2)
;; (format t "number : ~d ~%" num)
;; (setf num 5)
;; (format t "number : ~d ~%" num)

;; =================================================

;; ;; CASE
;; (defvar *age* 5)
;; (defun get-school(age)
;; 	(case age
;; 		(5 (print "kindergarten"))
;; 		(6 (print "first grade"))
;; 		(otherwise (print "middle school"))
;; 	)
;; )
;; (get-school *age*)

;; =================================================

;; ;; when, unless

;; (defvar *age* 18)
;; (when (= *age* 18)
;; 	(format t "go to college, you're ~d ~%" *age*)
;; )

;; (unless (not (= *age* 18))
;; 	(format t "go to college, you're ~d ~%" *age*)
;; )

;; =================================================

;; ;; Loops

;; (loop for x from 1 to 10
;; 	do (print x)
;; )

;; (setq x 1)
;; (loop 
;; 	(format t "value of x : ~d ~%" x)
;; 	(setq x (+ x 1))
;; 	(when (> x 10) (return x))
;; )

;; (loop for x in '(name1 name2 name3) do 
;; 	(format t "~s ~%" x)
;; )


;; (loop for x from 0 to 100
;; 	do 
;; 	(if (evenp x)
;; 		(format t "~a is even~%" x)
;; 		(format t "~a is odd~%" x)
;; 	)
;; )


;; =================================================

;; ;; Lists

;; (cons 'superman 'batman)
;; (list 'superman 'batman 'flash)
;; (setq mylist (list 'superman 'batman 'flash))
;; (format t "mylist : ~a ~%" mylist)
;; (format t "append : ~a ~%" (cons 'aquaman mylist))
;; (format t "First = ~a ~%" (car '(superman batman aquaman)))


;; =================================================

;; ;; LET

;; (let ((x '(a b c))(y 'b)(z 'c))
;; 	(format t "x = ~a, y = ~a, z = ~a ~%" x y z)
;; )
;; (let ((x 'a))
;; 	(format t "x = ~a" x)
;; )

;; =================================================

;; ;; String operations
;; (write (length "baris"))

;; (setq mychar (char "baris" 0))						;; b
;; (format t "~a~%" (char-equal mychar #\b))

;; (format t "~a~%" (char "baris" 0))				;; b
;; (format t "~a~%" (char "baris" 1))				;; a
;; (format t "~a~%" (char "baris" 2))				;; r
;; (format t "~a~%" (char "baris" 3))				;; i
;; (format t "~a~%" (char "baris" 4))				;; s

;; (setq myStr "baris")
;; (setq tempStr "")
;; (loop for x from 0 to (- (length myStr) 1)
;; 	do
;; 	(setq tempStr (string (char myStr x)))
;; 	(format t "~a~%" tempStr)
;; 	(if (string= tempStr "b")
;; 		(format t "Char is equal to 'b' ~%")
;; 	)
;; )

;; =================================================

;; ;; is-palindrome string
;; (defun is-palindrome(str)
;; 	(let ( (upperBound (- (length str) 1)) )
;; 		(loop for x from 0 to upperBound
;; 			do
;; 			(if (not (char= (char str x) (char str (- upperBound x))))
;; 				;; (format t "palindrome~%")
;; 				;; nil
;; 				(return-from is-palindrome nil)
;; 			)
;; 		)	
;; 	)
;; 	(return-from is-palindrome t)
;; )
;; (write (is-palindrome "ey edip adanada pide ye"))




