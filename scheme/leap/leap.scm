(import (rnrs))

(define (leap-year? year)
  (if 
    (= (remainder year 4) 0)
    (if
      (or (= (remainder year 400) 0)  (not (= (remainder year 100) 0)))
      #t
      #f
    )
    #f
  )
)

