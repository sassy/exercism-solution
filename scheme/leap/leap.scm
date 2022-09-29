(import (rnrs))

(define (leap-year? year)
  (if 
    (and (zero? (modulo year 4))
      (or (zero? (modulo year 400))
        (not (zero? (modulo year 100)))))
    #t
    #f
  )
)

