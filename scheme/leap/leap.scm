(import (rnrs))

(define (leap-year? year)
  (if 
    (= (modulo year 4) 0)
    (if
      (or (= (modulo year 400) 0)  (not (= (modulo year 100) 0)))
      #t
      #f
    )
    #f
  )
)

