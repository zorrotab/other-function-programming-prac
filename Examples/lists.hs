import Data.List
import System.IO

times4 :: Int -> Int
times4 x = x * 4

multBy4 :: [Int] -> [Int]
multBy4 [] = []
multBy4 (x:xs) = times4 x : multBy4 xs

doMult :: (Int -> Int) -> Int -> Int
doMult func x = func x

doMultOnList :: (Int -> Int) -> [Int] -> [Int]
doMultOnList func x = map func x

main :: IO ()
main = do 
   let x = [1..10] 
   let y1 = [head x]
   let y2 = tail x
   let y3 = y1 ++ y2
   
   putStrLn "Our list is:"  
   print (y3) 
   
   putStrLn "The first element of the list is:" 
   print (y1)
   
   putStrLn "The remainings elements of the list is:" 
   print (y2)

   let nums1 = map times4 [1,2,3,4,5]
   let nums2 = multBy4 nums1
   putStrLn "[1,2,3,4,5] each element times by 16 is:"
   print nums2

   print (doMult times4 3)
   print (doMultOnList times4 [1,2,3])