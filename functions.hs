import Data.List
import System.IO

add :: Int -> Int -> Int 
add x y = x + y

minus :: Int -> Int -> Int
minus x y = x - y

multiply :: Int -> Int-> Int  
multiply x y = x * y

divide :: Float -> Float -> Float 
divide x y = x / y


fact_guard :: Int -> Int 
fact_guard n | n == 0 = 1 
             | n /= 0 = n * fact (n-1) 
 
fact :: Int -> Int 
fact 0 = 1 
fact n = n * fact ( n - 1 ) 

main = do 
   putStrLn "Calculate the expression fact((2 + 1) * (6 - 4)):" 
   print ( fact (multiply(add 2 1) (minus 6 4)))
   
   putStrLn "Calculate the expression fact(0):" 
   print ( fact 0)