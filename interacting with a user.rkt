(define greet
  (lambda (name)
    (display (string-append "Hello " name "!"))
    (display " What is your favorite number?")
    (let ((num (read)))
      (if (equal? num 5)
          (begin
            (display "Great!")
            (display num)
            (display " is my favorite number too."))
          (display (string-append (number->string num) " is ok."))))))

(define average
  (lambda ()
    (accumulator 0 0 (read))))
(define accumulator
  (lambda (sum n next)
    (if (not (number? next))
        (compute-average sum n)
        (accumulator (+ next sum) (+ 1 n) (read)))))
(define compute-average
  (lambda (sum n)
    (if (> n 0)
        (/ sum n)
        "no number")))
(average)
