-- Q8.1

-- reverse in quadratic time
reverse' [] = []
reverse' (x:xs) = reverse' xs ++ [x]

-- reverse in linear time
rev [] acc = acc
rev (x:xs) acc = rev xs (x:acc)

reverseLin l = rev l []