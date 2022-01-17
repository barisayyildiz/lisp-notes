(defun removelast(l)
	(cond
		((= (length l) 1) ())
		(t (cons (car l) (removelast (cdr l))))
	)
)
;; (write (removelast '(4 5 6 7)))

(defun lastelement(l)
	(cond
		((= (length l) 1) (car l))
		(t (lastelement (cdr l)))
	)
)
;; (write (lastelement '(4 5 6 7)))

(defun reverser(l)
	(cond
		((= (length l) 1) (car l))
		(t (append (lastelement l) (reverser (removelast l))))
	)
)
(write (reverser '(5 6 7 8 9)))
;; (write (cdr '(7 8 9)))

(defun ismember(l x)
	(cond 
		((zerop (length l)) Nil)
		((= (car l) x) T)
		(t (ismember (cdr l) x))
	)
)
;; (write (ismember '(1 2 3) 3))


;This function adds an element in the nth position of a list
(defun add-nth (l e p) 
	(cond 
		((< (length l ) p) Nil) 
		((= p 1 ) (cons e l)) 
		(t (cons (car l) (add-nth (cdr l) e ( - p 1))))
	)
)

;; return l[p] == e
(defun findit(l e p)
	(cond
		((< (length l) p) Nil)
		((= p 1) (eq (car l) e))
		(t (findit (cdr l) e (- p 1)))
	)
)
;; (write (findit '(5 4 3 2 7 1 8) 7 5))


(defun minimum(l)
	;; length is 1
	(if (= (length l) 1)
		(car l)
		(if (< (car l) (minimum (cdr l)))
			(car l)
			(minimum (cdr l))
		)
	)
)
;; (write (minimum '(5 4 3 2 7 1 8)))

;; fibonacci
(defun fibo(n)
	(if (or (zerop n) (= n 1))
		1
		(+ (fibo (- n 1)) (fibo (- n 2)))
	)
)
;; (write (fibo 10))

