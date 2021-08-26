module Main where

import Lib
import Data.List

main :: IO ()
main = putStrLn "Hello Worlds"

-- Int
maxInt = maxBound :: Int
ok = putStrLn "ok"
minInt = minBound :: Int

always5 :: Int
always5 = 5

sumOfNums = sum [1..10]

modEx = mod 5 4
modeEx2 = 5 `mod` 4

num9 = 9 :: Int
sqrtOf9 = sqrt (fromIntegral num9) -- sqrt needs float
piVal = pi
rounded1 = round 9.3
rounded2 = ceiling 9.5
rounded3 = floor 9.5
rounded4 = truncate 9.5 -- 9

trueAndFalse = True || False
notTrue = not(True)

-- lists => singly
nums = [1,2,3]
moreNums = [4,5] ++ nums

-- cons operator
conNums = 2 : 7 : 5 : 8 : [] -- combine numbers into list

multiList = [[1,2,4], [4,5,6]]

len = length conNums

revList = reverse nums

isListEmpty = null nums -- false

-- get indexed values => 0 based
first = nums !! 0
second = nums !! 1

firstAgain = head nums
lastValue = last nums

everythingButLast = init nums -- [1,2]
first2 = take 2 nums -- [1,2]

removed = drop 1 nums -- [2,3]

isPresent = 7 `elem` nums -- infix
isPresen2 = elem 1 nums

maxNum = maximum nums
minNum = minimum nums

productOfNums = product nums

zeroTo10 = [0..10]

evenList = [2,4..40]

charList = ['A'..'Z']

alternameCharList = ['A','C'..'Z']

many2s = take 10 (repeat 2)

many3s = replicate 10 3

cycleList = take 10 (cycle [1..5]) -- [1,2,3,4,5,1,2,3,4,5]

listTimes2 = [x * 2 | x <- [1..10]] -- [2,4,6,8,10,12,14,16,18,20]

under10 = [x * 2 | x <- [1..10], x * 2 <= 10]

divisibleBy13And9 = [x | x <- [1..1000], x `mod` 13 == 0, x `mod` 9 == 0]

sortedList = sort [1,3,21,4,3,1,5,33,0,-1]

