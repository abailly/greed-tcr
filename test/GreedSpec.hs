module GreedSpec where

import Test.Hspec

data Die = One | Two | Three | Four | Five | Six 
  deriving (Eq, Show)

scoreUnLancer :: [Int] -> Int
scoreUnLancer [1,1,1] = 1000
scoreUnLancer [a,b,c] 
    | a == b && b == c = a * 100
scoreUnLancer (1:rest) = 100 + scoreUnLancer rest
scoreUnLancer (5:rest) = 50 + scoreUnLancer rest
scoreUnLancer _ = 0

-- http://codingdojo.org/kata/Greed/
spec :: Spec 
spec = describe "Greed" $ do

    it "A single one (100)" $ scoreUnLancer [1] `shouldBe` 100
    it "A single five (50)" $ scoreUnLancer [5] `shouldBe` 50
    it "A single two (0)" $ scoreUnLancer [2] `shouldBe` 0
    it "two 1s (0)" $ scoreUnLancer [1,1] `shouldBe` 200
    it "triples 1 (1000)" $ scoreUnLancer [1, 1, 1] `shouldBe` 1000
    it "triples 2 (200)" $ scoreUnLancer [2, 2, 2] `shouldBe` 200
    it "triples 3 (300)" $ scoreUnLancer [3,3,3] `shouldBe` 300
    it "single 1 among others (100)" $ scoreUnLancer [1,3,6] `shouldBe` 100
    it "single 1 and then 3 6s (700)" $ scoreUnLancer [1,6,6,6] `shouldBe` 700
    it "two 5s (100)" $ scoreUnLancer [5,5] `shouldBe` 100
    