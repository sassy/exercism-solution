(import (rnrs))

(define (convert moji)
  (cond
        ((char=? moji #\G) "C")
        ((char=? moji #\C ) "G")
        ((char=? moji #\T ) "A")
        ((char=? moji #\A ) "U")
        (else "")
  )
)

(define (dna->rna dna)
  (cond
    ((= (string-length dna) 1) (convert (string-ref dna 0)))
    ((> (string-length dna) 1) 
      (string-append
        (convert (string-ref dna 0))
        (dna->rna (substring dna 1 (string-length dna)))
      )
    )
    (else "")
  )
)
