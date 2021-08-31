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

sumOfLists = zipWith (+) [1,2,3,4,5] [6,7,8,9,10] -- [7,9,11,13,15]

filteredList = filter (>10) sumOfLists

evensUpto20 = takeWhile (<=20) [2,4..] -- lazy

multipliedList = foldl (*) 1 [1..5] -- 120
multipliedList2 = foldl (*) 2 [1..5] -- 240
multipliedList4 = foldr (*) 1 [1..5]

-- list comprehension
powerOf3List = [ 3 ^ n | n <- [1..10] ] -- [3,9,27,81,243,729,2187,6561,19683,59049]

multiplicationTable = [ [ x * y | y <- [1..10] ] | x <- [1..10] ] -- generates tables of numbers 1-10

info = ("John", 24)

name = fst info
age = snd info

names = ["john", "doe", "ok"]
addresses = ["51", "52", "53"]

namesAndAddresses = zip names addresses -- [("john","51"),("doe","52"),("ok","53")]

-- take inputs
greet = do
 putStrLn "Your name?"
 name <- getLine
 putStrLn ("hello " ++ name)

-- functions
addNums :: Int -> Int -> Int 
addNums x y = x+y

addTuples :: (Int, Int) -> (Int, Int) -> (Int, Int)
addTuples (x,y) (x2, y2) = (x+x2, y+y2)

whatAge :: Int -> String
whatAge 18 = "drive"
whatAge _ = "nah"

-- recrusion
factorial :: Int -> Int
factorial 0 = 1
factorial n = n * factorial (n-1)

nativeFactorial :: Int -> Int
nativeFactorial n = product [1..n]

-- guards

isOdd :: Int -> Bool
isOdd n 
 | n `mod` 2 == 0 = False 
 | otherwise = True

withGuards :: Int -> String
withGuards age
 | (age >= 18) && (age <= 50) = "Rockstar" 
 | otherwise = "ok"


-- where clause

avg :: Double -> Double -> String
avg x y 
 | res <= 10.0 = "ok"
 | otherwise = "not ok"
 where res = (x + y)/2
