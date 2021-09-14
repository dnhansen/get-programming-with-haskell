-- Q9.3

harmonic n = foldl (+) 0 (take n (map (1/) [1..]))