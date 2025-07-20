import Data.List
import System.IO
import GHC.Float (int2Float)
import Distribution.Parsec (incPos)
import Prelude
import Control.Applicative
import Data.Maybe


-- Integer maths
addInt :: Int -> Int -> Int 
addInt x y = x + y

minusInt :: Int -> Int -> Int
minusInt x y = x - y

multiplyInt :: Int -> Int-> Int  
multiplyInt x y = x * y

fact :: Int -> Int 
fact 0 = 1 
fact n = n * fact ( n - 1 )

-- Another way to define a function
inc = addInt 1

powerPattern :: Int -> Int -> Int
powerPattern x 0 = 1
powerPattern x 1 = x
powerPattern x n = x * powerPattern x (n - 1)

powerGuard :: Int -> Int -> Int
powerGuard x n | n == 0 = 1
               | n == 1 = x
               | n >  1 = x * powerGuard x (n - 1)


-- Float maths
addFloat :: Float -> Float -> Float 
addFloat x y = x + y

minusFloat :: Float -> Float -> Float
minusFloat x y = x - y

multiplyFloat :: Float -> Float-> Float  
multiplyFloat x y = x * y

divideFloat :: Float -> Float -> Float 
divideFloat x y = x / y

-- Float and int maths
addNum :: Float -> Int -> Float
addNum x y = x + (int2Float y)
 
-- List Maths
addNumtoList :: [Int] -> Int -> [Int]
addNumtoList x y = do
                let addNum z = z + y
                map addNum x

-- Some functions for trying out composition
tripleNum :: Int -> Int
tripleNum x = x * 3

minusTen :: Int -> Int
minusTen x = x - 10

-- Some functions for functors
f1 x y = 2*x + y


main = do 
   
    -- Examples of variable declaration
    let num1 = 10.11 :: Float
    let num2 = 10 :: Int
    let num3 = addInt 3 4 :: Int
    let nums1 = [1, 2, 3, 4, 5]
    let nums2 = map inc nums1
    let nums3 = addNumtoList nums2 2

    -- Perform compound calculations in one line including convert float to int
    let num4 = minusInt (addInt (round num1) num2) num3
    let num5 = (fact.round) (2.3)
    let num6 = num5 + num4

    -- Composition functions on a single integer
    let num7 = (tripleNum.minusTen.fact.round) (3.1)
    
    -- Composition and higher order functions on an array
    let nums4 = map (tripleNum.minusTen.fact) (nums1)

    -- Working with strings
    putStrLn ("The answer to the first series of equations: " ++ (show num6))
    putStrLn ("2.3 + 3 = " ++ show (addNum 2.3 3))
    putStrLn ("2 to the power of 0 = " ++ show (powerPattern 2 0))
    putStrLn ("2 to the power of 1 = " ++ show (powerPattern 2 1))
    putStrLn ("2 to the power of 3 = " ++ show (powerPattern 2 3))
    putStrLn ("3 to the power of 0 = " ++ show (powerGuard 3 0))
    putStrLn ("3 to the power of 1 = " ++ show (powerGuard 3 1))
    putStrLn ("3 to the power of 3 = " ++ show (powerGuard 3 3))
    print nums3
    print num7
    print nums4

    -- functors
    print (fmap (subtract 1) [2.3, 4, 6])
    print (fmap (subtract 1) (Nothing))
    print (fmap (subtract 1) (Just 3))
    print (show $ f1 <$> (Just 1) <*> (Just 2))

    -- data Maybe a = Nothing | Just a
    -- example of its usage
    print (isJust (Just 3))
    print (isJust (Nothing))
    print (fromJust (Just 4))
    print (fromMaybe "" (Just "Hello, World!"))
    print (fromMaybe 1 (Just 3))
    print (fromMaybe 1 (Nothing))