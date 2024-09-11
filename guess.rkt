(#%require (lib "27.ss" "srfi"))
(random-source-randomize! default-random-source)

(define play_guess
  (lambda (number count)
    (let ((guess (read)))
      (cond
        ((= number guess)
         (display (string-append "Correct! " (number->string count) " guesses... Please enter your name: "))
         (let ((name (read)))
           (display (string-append "Good game, " name))))
        ((< number guess)
         (display "Lower...Enter guess ")
         (play_guess number (+ count 1)))
        ((> number guess)
         (display "Higher...Enter guess ")
         (play_guess number (+ count 1)))))))

(define main (lambda ()
               (display "Guess a number from 1 to 100:\n")
               (display "Enter guess ")
               (play_guess (+ (random-integer 99) 1) 1)))

(main)
