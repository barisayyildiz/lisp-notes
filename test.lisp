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

(if (= 5 5)
	(format t "hello world ~%")
)







