-- Q9.2

import Data.Char

isPalindrome x = xStripped == reverse xStripped
    where xStripped = map toLower (filter (/=' ') x)