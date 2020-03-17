module GreedSpec where

import Test.Hspec

score :: [Int] -> Int
score [1,1,1] = 1000
score [a,b,c] 
    | a == b && b == c = a * 100
score (1:rest) = 100 + score rest
score [5] = 50
score _ = 0

-- http://codingdojo.org/kata/Greed/
spec :: Spec 
spec = describe "Greed" $ do

    it "A single one (100)" $ score [1] `shouldBe` 100
    it "A single five (50)" $ score [5] `shouldBe` 50
    it "A single two (0)" $ score [2] `shouldBe` 0
    it "two 1s (0)" $ score [1,1] `shouldBe` 200
    it "triples 1 (1000)" $ score [1, 1, 1] `shouldBe` 1000
    it "triples 2 (200)" $ score [2, 2, 2] `shouldBe` 200
    it "triples 3 (300)" $ score [3,3,3] `shouldBe` 300
    it "single 1 among others (100)" $ score [1,3,6] `shouldBe` 100
    it "single 1 and then 3 6s (700)" $ score [1,6,6,6] `shouldBe` 700
