module GreedSpec where

import Test.Hspec

score :: [Int] -> Int
score [1] = 100
score [5] = 50

-- http://codingdojo.org/kata/Greed/
spec :: Spec 
spec = describe "Greed" $ do

    it "A single one (100)" $ do
        score [1] `shouldBe` 100

    it "A single five (50)" $ do
        score [5] `shouldBe` 50
