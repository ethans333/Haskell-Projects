isPalandrome a = a == reverse a

main :: IO ()
main = do
  print (isPalandrome "race")