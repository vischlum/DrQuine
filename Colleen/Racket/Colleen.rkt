#lang racket/base
;Instrument composé d'un manche et d'un cadre ovale, garni d'un réseau de cordes en nylon ou en boyau, qui sert à frapper et lancer une balle ou un volant.

(define (main)
  ;Large semelle, composée d'une monture en bois de frêne, d'une toile forte et de sangles de fixation servant à marcher dans la neige sans enfoncer.
  ((λ(x)(printf "#lang racket/base\n;Instrument composé d'un manche et d'un cadre ovale, garni d'un réseau de cordes en nylon ou en boyau, qui sert à frapper et lancer une balle ou un volant.\n\n(define (main)\n  ;Large semelle, composée d'une monture en bois de frêne, d'une toile forte et de sangles de fixation servant à marcher dans la neige sans enfoncer.\n  (~a\n    ~s))\n(main)" x x))
    "(λ(x)(printf \"#lang racket/base\\n;Instrument composé d'un manche et d'un cadre ovale, garni d'un réseau de cordes en nylon ou en boyau, qui sert à frapper et lancer une balle ou un volant.\\n\\n(define (main)\\n  ;Large semelle, composée d'une monture en bois de frêne, d'une toile forte et de sangles de fixation servant à marcher dans la neige sans enfoncer.\\n  (~a\\n    ~s))\\n(main)\" x x))"))
(main)