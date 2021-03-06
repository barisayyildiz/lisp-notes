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
;; 				(return-from is-palindrome nil)
;; 			)
;; 		)	
;; 	)
;; 	(return-from is-palindrome t)
;; )
;; (format t "~a" (is-palindrome "12321"))

;; =================================================

;; ;; number-of-occurences string
;; (defvar counter 0)
;; (defun number-of-occurences(mylist target)
;; 	(loop for item in mylist
;; 		do
;; 		(if (typep item 'list)
;; 			(progn
;; 				(loop for i in item
;; 					do
;; 					(if (= target i)
;; 						(setq counter (+ 1 counter))
;; 					)
;; 				)
;; 			)
;; 			(if (= target item)
;; 				(setq counter (+ 1 counter))
;; 			)
;; 		)
;; 	)
;; )

;; (setq mylist (list 1 2 (list 1 2 3)))
;; (number-of-occurences mylist 3)
;; (format t "counter : ~a~%" counter)

;; =================================================
;; (defun reverse-list(mylist)
;; 	(let ( (len (length mylist)) )
;; 		(loop for index from 0 to (- len 1)					;; iterate over list
;; 			do
;; 			(if (typep (nth index mylist) 'list)
;; 				(progn
;; 					(setf (nth index mylist) (reverse (nth index mylist))) 		;; reverse inner list
;; 				)
;; 			)
;; 		)
;; 		(setq mylist (reverse mylist))							;; reverse outer list
;; 		(return-from reverse-list mylist)
;; 	)
;; )

;; (setq mylist (list (list 1 2 3) (list 3 4 5)))

;; ;; (write (length (nth 1 mylist)))
;; ;; (setf (nth 1 mylist) "de??i??ti!!")

;; (format t "before : ~a~%" mylist)
;; (setf mylist (reverse-list mylist))
;; (format t "after : ~a~%" mylist)

;; =================================================

;; ;; default parameters
;; (defun bar (&optional (a 1) (b 2) &rest rest)
;; 	(list a b rest)
;; )

;; (format t "~a~%" (bar))
;; (format t "~a~%" (bar 5 10 12 13 14 15))

;; =================================================

;; (setq str "foo")
;; (write-line (concatenate 'string str "bar" ))
;; ;; (write-line (concatenate 'string "Are we not drawn onward, " "we few, drawn onward to new era"))

;; (defun my-average(&rest rest)
;; 	(write rest)
;; )

;; (my-average)

;; =================================================
;; ;; number palindrome check
;; (defun is-number-palindrome(number)
;; 	(let ( (mult 1) (total 0) )
;; 		(if (< number 0) (return-from is-number-palindrome nil))
;; 		(loop
;; 			;; (format t "number : ~a~%" number)
;; 			(setq total (+ total (* mult (mod number 10))))			;; total += mult * (number % 10)
;; 			(setq mult (* mult 10))									;; mult *= 10
;; 			(setq number (/ number 10))							;; number /= 10			
;; 			(setq number (floor number 10))
;; 			(when (> number 0) (return ))
;; 		)
;; 		(if (= number total) (return-from is-number-palindrome t) (return-from is-number-palindrome nil))
;; 	)
;; )
;; (write (is-number-palindrome -121))

;; =================================================

