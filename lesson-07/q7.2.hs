-- Q7.2

myGCD a 0 = a
myGCD a b = myGCD b (a `mod` b)