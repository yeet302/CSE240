(define L '(1 2 31 4 5 66))

(define list-sum
  (lambda (L)
    (if (null? L)
        0
        ( + (car L) ((list-sum (cdr L)))))))

(define member?
  (lambda (x list)
    (if (null? list)
        #f
        (if (= x (car list))
        #t
        (member? x (cdr list))))))

(define max-list
  (lambda (lst)
    (cond
      ((null? lst) (error "Empty list"))
      ((= (length lst) 1) (car lst))
      (else (max (car lst) (max-list (cdr lst)))))))
            
    