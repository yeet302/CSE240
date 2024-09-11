
(define (exists? p? xs)
  (if (null? xs)
      #f
      (or (p? (car xs))
          (exists? p? (cdr xs)))))

(exists? number? '(1 b 3))

(define (forall? p? xs)
  (if (null? xs)
      #t
      (and (p? (car xs))
           (forall? p? (cdr xs)))))

(forall? number? '(1 b 3))

(define (filter p? xs)
  (if (null? xs)
      '()
      (if (p? (car xs))
          (cons (car xs) (filter p? (cdr xs)))
          (filter p? (cdr xs)))))

(filter number? '(1 b 3 d e 7))

(map (lambda (x) (* 2 x)) '(1 2 3))

(define (mapp f xs)
  (if (null? xs)
      '()
      (cons (f (car xs)) (mapp f (cdr xs)))))
      
(mapp (lambda (x) (* 2 x)) '(1 2 3))

(define (foldr f z xs)
  (if (null? xs)
      z
      (f (car xs) (foldr f z (cdr xs)))))

(foldr + 0 '(1 2 3 4))

(define (foldl f z xs)
  (if (null? xs)
      z
      (f (foldl xs) (foldl f z (car xs)))))
(foldl - 4 '(1 3 5 7))