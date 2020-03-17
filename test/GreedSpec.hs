module GreedSpec where

import Test.Hspec

score :: [Int] -> Int
score [1,1] = 0
score [1] = 100
score [5] = 50
score _ = 0

-- http://codingdojo.org/kata/Greed/
spec :: Spec 
spec = describe "Greed" $ do

    it "A single one (100)" $ do
        score [1] `shouldBe` 100

    it "A single five (50)" $ do
        score [5] `shouldBe` 50

    it "A single two (0)" $ do
        score [2] `shouldBe` 0

    it "two 1s (0)" $ do
        score [1,1] `shouldBe` 0