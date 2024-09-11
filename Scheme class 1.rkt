(define double (lambda (x) (* x 2)))
(define absolute-value
  (lambda (x)
    (if (negative? x)
        (- x)
        x)))
(define sign
  (lambda (x)
    (cond
      ((positive? x)
       1)
      ((zero? x)
       0)
      (else
       -1))))
(define triangular
  (lambda (n)
    (if ( = n 1)
        1
        ( + n (triangular (- n 1))))))
(define power
  (lambda (x n)
    (if (zero? n)
        1
        (* x (power x (- n 1))))))
