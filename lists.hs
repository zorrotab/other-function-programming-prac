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