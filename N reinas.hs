
import Control.Applicative ((<$>))

center :: String -> Int -> String
center s n = spaces ++ s ++ spaces
  where spaces = replicate ((n - length s) `div` 2) ' '

-- http://www.haskell.org/haskellwiki/Blow_your_mind, Ctrl-F "pascal"
pascal :: [[Int]]
pascal = iterate (\row -> zipWith (+) ([0] ++ row) (row ++ [0])) [1]

main :: IO ()
main = mapM_ putStrLn $ ((flip center 40 . unwords) . map show) <$> take 10 pascal

-- equivalently, more elaborated
main' = display $ prettify $ stringify $ take 10 pascal
    where stringify = (fmap . fmap) show
          prettify = fmap (flip center 40 . unwords)
          display = mapM_ putStrLn
