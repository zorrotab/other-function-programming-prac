import Data.List
import System.IO
import GHC.Float (int2Float)


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
 
 


main = do 
   
    -- Examples of variable declaration
    let num1 = 10.11 :: Float
    let num2 = 10 :: Int
    let num3 = addInt 3 4 :: Int

    -- Perform compound calculations in one line including convert float to int
    let num4 = minusInt (addInt (round num1) num2) num3
    let num5 = (fact.round) (2.3)
    let num6 = num5 + num4

    -- Working with strings
    putStrLn ("The answer to the first series of equations: " ++ (show num6))
    putStrLn ("2.3 + 3 = " ++ show (addNum 2.3 3))