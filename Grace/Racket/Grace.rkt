#lang racket/base

; On dit proverbialement & populairement d'Un homme qui fait le brave & le vigoureux, mais qui ne l'est pas, que Ce n'est pas un grand casseur de raquettes.

(define-syntax-rule (KID) "Grace_kid.rkt")
(define-syntax-rule (DATA) "#lang racket/base\n\n; On dit proverbialement & populairement d'Un homme qui fait le brave & le vigoureux, mais qui ne l'est pas, que Ce n'est pas un grand casseur de raquettes.\n\n(define-syntax-rule (KID) \"Grace_kid.rkt\")\n(define-syntax-rule (DATA) ~s)\n(define-syntax-rule (MAIN)\n  (\n    let ([out (open-output-file (KID) #:exists 'replace)])\n      (fprintf out (DATA) (DATA))\n      (close-output-port out)\n  )\n)\n(MAIN)")
(define-syntax-rule (MAIN)
  (
    let ([out (open-output-file (KID) #:exists 'replace)])
      (fprintf out (DATA) (DATA))
      (close-output-port out)
  )
)
(MAIN)