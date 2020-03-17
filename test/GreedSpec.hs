module GreedSpec where

import Test.Hspec

score :: [Int] -> Int
score _ = 100

-- http://codingdojo.org/kata/Greed/
spec :: Spec 
spec = describe "Greed" $ do

    it "A single one (100)" $ do
        score [1] `shouldBe` 100
