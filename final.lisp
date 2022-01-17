

;; ;; return l[p] == e
;; (defun findit(l e p)
;; 	(cond
;; 		((< (length l) p) Nil)

;; 		((= p 1) (eq (car l) e))

;; 		(t
;; 			(findit (cdr l) e (- p 1))
;; 		)

;; 	)
;; )
;; (write (findit '(5 4 3 2 7 1 8) 7 5))


;; (defun minimum(l)
;; 	;; length is 1
;; 	(if (= (length l) 1)
;; 		(car l)
;; 		(if (< (car l) (minimum (cdr l)))
;; 			(car l)
;; 			(minimum (cdr l))
;; 		)
;; 	)
;; )
;; (write (minimum '(5 4 3 2 7 1 8)))

;; (defun minimum(l)
;;     (cond ((null (cdr l)) (car l))
;;         ( (< (car l) (minimum (cdr l))) (car l))
;;         (t
;;             (minimum 
;;                 (cdr l)))))
;; (write (minimum '(1 2 3 -3 12 )))

;; ;; fibonacci
;; (defun fibo(n)
;; 	(if (or (zerop n) (= n 1))
;; 		1
;; 		(+ (fibo (- n 1)) (fibo (- n 2)))
;; 	)
;; )
;; (write (fibo 10))

