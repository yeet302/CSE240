(if (> 3 2) 'yes 'no)
(if (> 2 3) 'yes 'no)
(if (> 3 2)
    (- 3 2)
    (+ 3 2))

(begin (display "4 plus 1 equals ")
       (display (+ 4 1)))

(lambda (x) (+ x 3))
((lambda (x) (+ x 3)) 7)

(define add3
  (lambda (x) (+ x 3)))

(add3 3)