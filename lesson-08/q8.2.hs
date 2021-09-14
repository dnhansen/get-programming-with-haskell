-- Q8.2

fastFib 0 = 0
fastFib n = fibAux 1 0 n

fibAux n1 _  1       = n1
fibAux n1 n2 counter = fibAux (n1+n2) n1 (counter-1)