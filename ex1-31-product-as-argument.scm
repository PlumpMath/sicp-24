(define (product term a next b)
    (if (> a b)
        1 ; Terminal value must be 1, else the product becomes 0
        (* (term a) (product term (next a) next b))))
        
; Factorial n is 1.(1+1).(2+1)...((n-1) + 1)
; So, the k-th term is ((k-1)+ 1)

(define (fact n)
    (define (identify x) x)
    (define a 1)
    (define (next x) (1+ x))
    
    (cond ((= n 0) 1)
          ((= n 1) 1)
          (else (product identify a next n))))
          
          