
-- ==============Different Arthimetic Operator=====================

-- 1.Addition
-- main = do
--     let num1 = 4
--     let num2 = 5
--     putStrLn "The sum of two number is:"
--     print(num1+num2)


-- ===============for subtraction, multiplication and division======================

-- main = do
--     let num1 = 34
--     let num2 = 23
--     putStrLn "The different operation are:"
--     print(num1-num2)
--     print(num1*num2)
--     print(num1/num2)

-- ====================================================================================

-- sequence and range operator

-- main = do
--     print [1..10]


-- ====================================================================================

-- Haskel if else statement
-- checking evern or odd


-- main = do
--     let var = 23
--     if var `mod` 2 == 0
--         then putStrLn "Number is even"
--     else putStrLn "Number is odd"

-- nested if else

-- main = do
--     let var = 2

--     if var > 2
--         then putStrLn "number is zero"
--     -- else if var `mod` 2==0
--     --     then putStrLn "number is even"
--     else putStrLn "number is odd"

-- ====================================================================================

-- inbuilt type classes

-- fType :: Int -> Int -> Int
-- fType x y = x*x + y*y
-- main = print(fType 2 4)


-- fType :: Int -> Int -> Int -> Int
-- fType a b c = a*b + b*c + a*c
-- main = print(fType 2 3 4)


-- if we pass the big value like 2222222222222222222222222222 333333333333333333333333333 44444444444444444444444444 it will throw error so to tackle this we use Integer instead of Int


-- fType :: Integer->Integer->Integer
-- fType x y = x*y + y*y
-- main = print(fType 2222222222222222222222222222222222222 33333333333333333333333333333333333)


-- Similarly for float we use Float
-- similary we use Double as well only the difference is that we use more precison we get it with the double

-- fType :: Float->Float->Float
-- fType x y = x/y + y/x
-- main = print(fType 2.5 3.2)

-- fType :: Double->Double->Double
-- fType x y = x/y + y/x
-- main = print(fType 2.5 3.2)


-- ===========================================================================================


-- if we can use the boolean functions like True and False

-- main = do
--     let x = False

--     if x == True
--         then putStrLn "It is true"
--     else putStrLn "It is false"



-- ===================================================================================

-- using the show function

-- main = print(show[1..10])


-- ===================================================================================

-- main = print(readInt "12")
-- readInt :: String->Int
-- readInt = read

-- ===================================================================================
-- to find the succesor value of any value

-- main = print(succ 23)
-- ===================================================================================
-- to finding the maxBound and minBound

-- main = do
--     print(maxBound :: Int)
--     print(minBound :: Int)

-- ===================================================================================
-- creating the function

-- add :: Float->Float->Float
-- add x y = x+y
-- main = print(add 2 3)


-- creating the factorial of a number

-- fact :: Int->Int

-- fact 0=1
-- fact n = n* fact(n-1)

-- main = do
--     putStrLn "The factorial of a number is :"
--     print(fact 5)

-- ===================================================================================

-- Dynamic way of printing the factorial

-- fact :: Int->Int
-- fact 0=1
-- fact n=n*fact(n-1)
-- main = do
--     putStrLn "Enter a number for it's factorial"

--     num <- getLine
--     let n = read num::Int
--     putStrLn "The factorial of a number is "
--     print(fact n)


-- ==============using the mathematical functions=======================================

-- roots :: (Float, Float, Float) -> (Float, Float)
-- roots (a,b,c) = (x1, x2) where 
--     x1 = e + sqrt d/(2*a)
--     x2 = e-sqrt d/(2*a)
--     d = b*b - 4*a*c
--     e = -b/(2*a)

-- main = do
--     putStrLn "The roots of our polynomial equation are:"
--     print(roots(1, -8, 6))

-- ====================================================================================

-- some builtin function
-- import Data.List

-- main = do
--     let x = [1..10]
--     let y = [1, 3, 78, 9, 23, 84, 12]
--     putStrLn "The list of 10 elements are:"
--     print(x)
--     -- different functions
--     print(head x) --1
--     print(tail x) --2,3,...,10
--     print(last x) --10
--     print(init x) --1,2,...,9
--     print(null x) --false

--     -- some more function
--     print(reverse y) --12, 84,..1
--     print(length y) --7
--     print(sum y) --sum of y
--     print(product y)
--     print(take 5 (x))
--     print(drop 5 (x))
--     print(maximum y)
--     print(minimum y)
--     print(elem 9(x))

--     print(sort y)

-- =====================================================================================

-- with strings

-- import Data.Char

-- main = do
--     let str = "this is string"
--     print(toLower 'T')
--     print(toUpper 's')
--     print(words str)



-- =============================Bubble sort===========================================

-- bubbleSort :: Ord a => [a] -> [a]
-- bubbleSort [] = []
-- bubbleSort xs = bubbleSort' xs (length xs)

-- bubbleSort' :: Ord a => [a] -> Int -> [a]
-- bubbleSort' xs 0 = xs
-- bubbleSort' xs n = bubbleSort' (bubble xs) (n - 1)
--   where
--     bubble [x] = [x]
--     bubble (x1:x2:rest)
--       | x1 > x2   = x2 : bubble (x1:rest)
--       | otherwise = x1 : bubble (x2:rest)

-- main :: IO ()
-- main = do
--     let list = [4, 2, 7, 1, 9, 3]
--     putStrLn "Original list:"
--     print list
--     putStrLn "Sorted list using Bubble Sort:"
--     print (bubbleSort list)



-- =====================================Inserting sort======================================

-- insertionSort :: Ord a => [a] -> [a]
-- insertionSort [] = []
-- insertionSort (x:xs) = insert x (insertionSort xs)
--   where
--     insert x [] = [x]
--     insert x (y:ys)
--       | x <= y    = x:y:ys
--       | otherwise = y : insert x ys

-- main = do
--     let list = [4, 2, 7, 1, 9, 3]
    
--     putStrLn "Original list:"
--     print list
    
--     putStrLn "Sorted list using Insertion Sort:"
--     print (insertionSort list)



-- =====================================Selection Sort==================================

-- selectionSort :: Ord a => [a] -> [a]
-- selectionSort [] = []
-- selectionSort xs = let
--     findMin [] = error "Empty list"
--     findMin [x] = x
--     findMin (x:xs) = min x (findMin xs)
--     removeMin _ [] = error "Empty list"
--     removeMin e (x:xs)
--       | e == x    = xs
--       | otherwise = x : removeMin e xs
--   in
--     let minElem = findMin xs
--     in minElem : selectionSort (removeMin minElem xs)
-- main :: IO ()
-- main = do
--     let list = [4, 2, 7, 1, 9, 3]
    
--     putStrLn "Original list:"
--     print list
--     putStrLn "Sorted list using Selection Sort:"
--     print (selectionSort list)

-- ============================Merge Sort=============================================

-- mergeSort :: Ord a => [a] -> [a]
-- mergeSort [] = []
-- mergeSort [x] = [x]
-- mergeSort xs = merge (mergeSort firstHalf) (mergeSort secondHalf)
--   where
--     (firstHalf, secondHalf) = splitAt (length xs `div` 2) xs
--     merge [] ys = ys
--     merge xs [] = xs
--     merge (x:xs) (y:ys)
--       | x <= y    = x : merge xs (y:ys)
--       | otherwise = y : merge (x:xs) ys

-- main = do
--     let list = [4, 2, 7, 1, 9, 3]
    
--     putStrLn "Original list:"
--     print list

    
--     putStrLn "Sorted list using Merge Sort:"
--     print (mergeSort list)

-- ============================Quick Sort===============================================

-- quickSort :: Ord a => [a] -> [a]
-- quickSort [] = []
-- quickSort (x:xs) = quickSort [y | y <- xs, y <= x] ++ [x] ++ quickSort [y | y <- xs, y > x]

-- main :: IO ()
-- main = do
--     let list = [4, 2, 7, 1, 9, 3]
    
--     putStrLn "Original list:"
--     print list
    
--     putStrLn "Sorted list using Quick Sort:"
--     print (quickSort list)



-- ================================Finding the Prime Numbers till N======================

-- sieve :: Int -> [Int]
-- sieve n = sieve' [2..n]
--   where
--     sieve' [] = []
--     sieve' (p:xs)
--       | p * p > n = p : sieve' xs
--       | otherwise = p : sieve' [x | x <- xs, x `mod` p /= 0]

-- -- Function to find prime numbers up to N
-- primeNumbersUpToN :: Int -> [Int]
-- primeNumbersUpToN n
--   | n < 2     = []
--   | otherwise = sieve n

-- -- Main function to test
-- main :: IO ()
-- main = do
--     putStrLn "Enter the value of N:"
--     nStr <- getLine
--     let n = read nStr :: Int
--     putStrLn $ "List of prime numbers up to " ++ show n ++ ":"
--     print (primeNumbersUpToN n)




