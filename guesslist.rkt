(#%require (lib "27.ss" "srfi"))
(random-source-randomize! default-random-source)

(define scoreboard '())

(define play_guess
  (lambda (number count)
    (display "Enter guess ")
    (let ((guess (read)))
      (cond
        ((= number guess)
         (display (string-append "Correct! " (number->string count) " guesses... Please enter your name: "))
         (let ((name (read)))
           (display (string-append "Good game, " name "\n"))
           (set! scoreboard (cons (list name guess) scoreboard))
           (initiate)))
        ((< number guess)
         (display "Lower...Enter guess ")
         (play_guess number (+ count 1)))
        ((> number guess)
         (display "Higher...Enter guess ")
         (play_guess number (+ count 1)))))))

(define initiate
  (lambda ()
    (display "Enter q to quit or any other key to continue: ")
    (let ((input (read)))
     (if (eq? input 'q )
      (printboard (reverse scoreboard))
      (play_guess (+ (random-integer 9) 1) 1)))))
    
(define printboard
  (lambda (L)
    (if (null? L)
        (display "")
        (begin
          (display "------------------\n")
          (display (string-append  (car (car L)) " " (number->string (car (cdr (car L))))"\n"))
          (printboard (cdr L))))))
         
(define main (lambda ()
  (begin
    (display "Guess a number from 1 to 10:\n")
    (display "Enter q to quit or any other key to continue: ")            
    (let ((input (read)))
      (if (eq? input 'q )
          (printboard (reverse scoreboard))
          (play_guess (+ (random-integer 9) 1) 1))))))

(main)