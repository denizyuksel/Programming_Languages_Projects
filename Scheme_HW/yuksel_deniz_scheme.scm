(define (foo oneList)
  (foo-aux oneList 1))

(define (foo-aux oneList runningMult)
  (cond 
        ((null? oneList) runningMult)
        ((list? (car oneList))
        (foo-aux(append (car oneList) (cdr oneList)) runningMult))
  
  (else (foo-aux (cdr oneList) (* (car oneList) runningMult)))))
