-- import Prelude hiding ((||))
import Prelude hiding ((&&))

-- 00
{-- (V) == CORRECT
halve xs = (take n xs, drop n xs)
 where n = length xs / 2

halve xs = splitAt (length xs `div` 2) xs
(V)

halve xs = (take (n `div` 2) xs, drop (n `div` 2) xs)
 where n = length xs
(V)

halve xs = splitAt (length xs `div` 2)

halve xs = (take n xs, drop (n + 1) xs)
 where n = length xs `div` 2 

halve xs = splitAt (div (length xs) 2) xs
(V)

halve xs = splitAt (length xs / 2) xs

halve xs = (take n xs, drop n xs)
 where n = length xs `div`
(V)
--}

-- 01

{--
safetail xs = if null xs then [] else tail xs
(V)

safetail [] = []
safetail (_ : xs) = xs
(V)

safetail (_ : xs)
   | null xs   = []
   | otherwise = tail xs 

safetail xs 
   | null xs   = []
   | otherwise = tail xs
(V)

safetail xs = tail xs
safetail [] = []

safetail [] = []
safetail xs = tail xs
(V)

safetail [x] = [x]
safetail (_ : xs) = xs

safetail 
  = \ xs ->
      case xs of
         [] -> []
         (_ : xs) -> xs
(V)
--}

-- 02

{--
False || False = False
_ || _ = True
(V)

False || b = b
True || _ = True
(V)

b || c
  | b == c = True
  | otherwise = False

b || c
  | b == c = b
  | otherwise = True
(V)

b || False = b
_ || True  = True
(V)

b || c
  | b == c = c
  | otherwise = True
(V)

b || True = b
_ || True = True

False || False = False
False || True = True
True || False = True
True || True = True
(V)
--}

-- 03

{--
True && True = True
_ && _ = False
(V)

a && b = if a then if b then True  else False else False
(V)

a && b = if not (a) then not (b) else True

a && b = if a then b

a && b = if a then if b then False else True else False

a && b = if a then b else False
(V)

a && b = if b then a else False
(V)
--}
