#lang racket

(define i 5)
(define-syntax-rule (filename i) (string-append "Sully_" (number->string i) ".rkt"))
(define-syntax-rule (filedata) "#lang racket\n\n(define i ~s)\n(define-syntax-rule (filename i) (string-append \"Sully_\" (number->string i) \".rkt\"))\n(define-syntax-rule (filedata) ~s)\n\n(cond\n  [(> i 0)\n    (unless (file-exists? (filename i)) (set! i (+ 1 i)))\n    (define out (open-output-file (filename (- i 1)) #:exists 'replace))\n    (fprintf out (filedata) (- i 1) (filedata))\n    (close-output-port out)\n    (system (string-append \"racket \" (filename (- i 1))))\n    (void)\n  ]\n  [else (exit)]\n)")

(cond
  [(> i 0)
    (unless (file-exists? (filename i)) (set! i (+ 1 i)))
    (define out (open-output-file (filename (- i 1)) #:exists 'replace))
    (fprintf out (filedata) (- i 1) (filedata))
    (close-output-port out)
    (system (string-append "racket " (filename (- i 1))))
    (void)
  ]
  [else (exit)]
)