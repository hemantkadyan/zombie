-- phpMyAdmin SQL Dump
-- version 4.6.6
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 19, 2017 at 04:46 AM
-- Server version: 10.1.20-MariaDB
-- PHP Version: 7.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `id1097899_zombie`
--

-- --------------------------------------------------------

--
-- Table structure for table `gameboard`
--

CREATE TABLE `gameboard` (
  `aid` int(10) NOT NULL,
  `string` varchar(1000) NOT NULL,
  `pl1` varchar(1000) NOT NULL,
  `pl2` varchar(1000) NOT NULL,
  `rno` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `playerdb`
--

CREATE TABLE `playerdb` (
  `aid` int(10) NOT NULL,
  `string` varchar(1000) NOT NULL,
  `pname1` varchar(1000) NOT NULL,
  `collegename1` varchar(1000) NOT NULL,
  `pmobile1` varchar(1000) NOT NULL,
  `pname2` varchar(1000) NOT NULL,
  `collegename2` varchar(1000) NOT NULL,
  `pmobile2` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `qno` int(10) NOT NULL,
  `question` varchar(1000) NOT NULL,
  `answer` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`qno`, `question`, `answer`) VALUES
(11, 'Find Next Number in the Series\r\n2 9 3 1 8 4 3 6 5 7 ?\r\n', '2'),
(12, 'Simran walks into a bank to cash out her check.\r\nBy mistake the bank teller gives her dollar amount in change, and her cent amount in dollars.\r\nOn the way home she spends 5 cent, and then suddenly she notices that she has twice the amount of her check.\r\n\r\nHer check amount is of the form 31.xy (where xy are natural nos. from [1,9]), determine x + y.\r\n', '9'),
(13, 'Rooney, Hernandez, and Robin race each other in a 100 meters race. All of them run at a constant speed throughout the race. \r\n\r\nRooney beats Hernandez by 20 meters. \r\nHernandez beats Robin by 20 meters. \r\n\r\nHow many meters does Rooney beat Robin by ? Let it be x, determine x by 9\r\n', '4'),
(14, 'You can place weights on both side of weighing balance and you need to measure all weights between 1 and 1000. For example if you have weights 1 and 3,now you can measure 1,3 and 4 like earlier case, and also you can measure 2,by placing 3 on one side and 1 on the side which contain the substance to be weighed. So question again is how many minimum weights and of what denominations you need to measure all weights from 1kg to 1000kg.', '7'),
(15, 'There are one thousand lockers and one thousand students in a school. The principal asks the first student to go to every locker and open it. Then he has the second student go to every second locker and close it. The third goes to every third locker and, if it is closed, he opens it, and if it is open, he closes it. The fourth student does this to every fourth locker, and so on. After the process is completed with the thousandth student, how many lockers are open? Determine the most significant digit of your answer.', '3'),
(16, '2+3=8,\r\n3+7=27,\r\n4+5=32,\r\n5+8=60,\r\n6+7=72,\r\n7+8=??\r\nMark the lowest digit in your answer.\r\n', '8'),
(17, 'The interviewer tells the candidate that if he guess the ages of his three sons correctly, then he shall get the job. He gives the candidate 3 hints and says that by only using all of them can he know the right answer. The hints are:\r\na) The product of the age of his sons is 36.\r\nb) The sum of their ages is equal to the house number of the interviewer.\r\nc) His eldest son has blue eyes.\r\nWhat are the ages of his sons?\r\n\r\nMark the lowest age.\r\n', '2'),
(18, 'What 6 digit number when multiplied by either 2, 3, 4, 5 or 6 has no new digits which appear? Mark the 3rd highest digit in your answer.', '4'),
(19, 'If 1111=’r’, 2222=’t’, 3333=’e’\r\nThen 4444=?\r\nDetermine the least significant digit of the alphabetic position of the answer.(Ex: if answer is z then mark 6)', '4'),
(20, 'You have 27 coins, each of them is 10g, except for 1. The 1 different coin is 9g or 11g (heavier, or lighter by 1g). You should use balance scale that compares what is in the two pans. You can get the answer by just comparing groups of coins.\r\nWhat is the minimum number weighings that can always guarantee to determine the different coin.\r\n', '6'),
(21, '1,11,21,1211,111221,...\r\nFind next number in the sequence and mark the third digit (from right).\r\n', '2'),
(22, 'A teacher says: I am thinking of two natural numbers greater than 1. Try to guess what they are.\r\nThe first student knows their product and the other one knows their sum.\r\nFirst: I do not know the sum.\r\nSecond: I knew that. The sum is less than 14.\r\nFirst: I knew that. However, now I know the numbers.\r\nSecond: And so do I.\r\nWhat were the numbers? Mark the difference between the two numbers.\r\n', '7'),
(23, 'a, b, c are three distinct integers from 2 to 10 (both inclusive). Exactly one of ab, bc and ca is odd. abc is a multiple of 4. The arithmetic mean of a and b is an integer and so is the arithmetic mean of a, b and c. How many such triplets are possible (unordered triplets)?', '4'),
(24, 'The difference between a two-digit number and the number obtained by interchanging the digits is 36. What is the difference between the sum and the difference of the digits of the number if the ratio between the digits of the number is 1 : 2 ?', '8'),
(26, 'A two-digit number is such that the product of the digits is 8. When 18 is added to the number, then the digits are reversed. The sum of the digits of the number is', '6'),
(27, 'Two ladies played cards for candy; the winner received one piece per game from the loser. When it was time for one of the ladies to go home, one lady had won three games, while the other lady had a profit of three pieces of candy. \r\n\r\nHow many individual games had they played?\r\n', '9'),
(28, 'In a certain country ½ of 5 = 3. If the same proportion holds, what is the value of 1/3 of 10 ?', '4'),
(29, 'A number consists of 3 digits whose sum is 10. The middle digit is equal to the sum of the other two and the number will be increased by 99 if its digits are reversed. What is the first digit of the number?', '2'),
(30, 'Rooney, Hernandez, and Robin race each other in a 100 meters race. All of them run at a constant speed throughout the race. \r\n\r\nRooney beats Hernandez by 20 meters. \r\nHernandez beats Robin by 20 meters. \r\n\r\nHow many meters does Rooney beat Robin by ?(Give the sum of the digits as an answer)\r\n', '9'),
(31, 'I bought three toys for my triplet boys (one for each). I placed the toys in the dark store. One by one each boy went to the store and pick the toy. The probability that no boy will choose his own toy is x/y. What is the value of x+y?', '4'),
(32, 'Two women play a dice game where two standard dice are rolled. Woman A says that a 11 will be rolled first. Woman B says that two consecutive 8s will be rolled first. The women keep rolling until one of them wins.\r\n\r\nThe probability that A will win is x/y. What is the value of (y-x)/7 ?\r\n', '5'),
(33, 'Let the missing number in the sequence given below is x.\r\n11 15 19 12 16 ? 13 17 21 14 18 22\r\nWhat is the value of x/4?', '5'),
(35, '2a + 5b = 103. How many pairs of positive integer values can a, b take such that a > b? ', '7'),
(36, 'Sum of three Natural numbers a, b and c is 10. (9*d) many ordered triplets (a, b, c) exist. Find d.', '4'),
(39, 'From the digits 2, 3, 4, 5, 6 and 7, (12*p) many 5-digit numbers can be formed that have distinct digits and are multiples of 12. Find p.', '5'),
(40, 'In a horse-driven carriage it was found that the fore wheels of the carriage make four more revolutions than the hind wheel in going 96 feet. However, it was also found that if the circumference of the fore wheel were (3/2) times the original and of the hind wheel (4/3) times the original, then the fore wheel would make only 2 revolutions more than the hind wheel in going the same distance of 96 feet. Find the difference(hind-fore) in original circumference of the wheels.', '4'),
(41, 'Of the 200 candidates who were interviewed for a position at a call center, 100 had a two-wheeler, 70 had a credit card and 140 had a mobile phone. 40 of them had both, a two-wheeler and a credit card, 30 had both, a credit card and a mobile phone and 60 had both, a two wheeler and mobile phone and 10 had all three. The  candidates that had none of the three are x. What is x/10?', '1'),
(42, '48 students have to be seated such that each row has the same number of students as the others. If at least 3 students are to be seated per row and at least 2 rows have to be there, how many arrangements are possible?', '7'),
(43, 'Three Vice Presidents (VP) regularly visit the plant on different days. Due to labour unrest, VP (HR) regularly visits the plant after a gap of 2 days. VP (Operations) regularly visits the plant after a gap of 3 days. VP (sales) regularly visits the plant after a gap of 5 days. The VPs do not deviate from their individual schedules. CEO of the company meets the VPs when all the three VPs come to the plant together. CEO is on leave from January 5th to January 28th, 2012. Last time the CEO met the VPs on January 3, 2012. When is the next time(what date of Feb) the CEO will meet all the VPs?', '8'),
(44, 'A boss decides to distribute Rs. 2000 between 2 employees. He knows X deserves more that Y, but does not know how much more. So he decides to arbitrarily break Rs. 2000 into two parts and give X the bigger part. What is the chance that X gets twice as much as Y or more? Give answer as sum of numerator and denominator of probability fraction.', '5'),
(45, 'There are N! ways for arranging letters of the word AMAZING such that the ‘I’ appears between the two ‘A’s. Find N.', '5'),
(46, 'As they say, beggars can not be choosers, in fact begger take what they can get. A begger on the street can make one cigarette out of every 6 cigarette butts he finds. After one whole day of searching and checking public ashtrays the begger finds a total of 72 cigarette butts. How many cigarettes can he make and smoke from the butts he found? If your answer is x then answer x %10.', '4'),
(47, 'My grandson is about as many days as my son in weeks, and my grandson is as many months as I am in years. My grandson, my son and I together are 120 years. Can you tell me my age in years ? If your answer is x then answer x %10.', '2'),
(48, '6 different sweet varieties of count 32, 216, 136, 88, 184, 120 were ordered for a particular occasion. They need to be packed in such a way that each box has the same variety of sweet and the number of sweets in each box is also the same. What is the minimum number of boxes required to pack? If your answer is x then answer x %10.', '7'),
(49, 'A cistern of 475 litres is completely filled using pipes A and B, with Pipe A being open for 5 more hours than pipe B. If we are to interchange the operating hours of the two pipes than pipe A would have pumped half the water as much as pipe B, then the time for which pipe B was open was (10 + T) hours. Also, given that if the two pipes were open simultaneously the tank would fill in 19 hours. Find T.', '6'),
(50, 'Bibhor takes 3 hours to fetch as much water as Ahmed can fetch in 2 hours. Deepak takes 5 hours to fetch as much water as Bibhor can fetch in 4 hours. A tank takes 20 hours to fill if all work together. Time would Bibhor take to fill the tank alone is (11*x) hours. Find x.', '6'),
(51, 'An ant is located at the vertex of a cube of length 1 meter. She wants to go to the diagonally opposite (and the farthest) vertex. The path of minimum length that she can take is sqrt(x) meter long. What is x?', '5'),
(52, 'How many times 0 is written if we list all numbers from 1 to 1000 both inclusive?\r\nIf the answer is x, what will be the second digit of x from right?', '9'),
(53, 'What is the last second digits of 7^(2008) ?', '0'),
(54, 'Consider a right circular cone of base radius 4 cm and height 10 cm. A cylinder is to be placed inside the cone with one of the flat surfaces resting on the base of the cone. Find the largest possible total surface area (in sq cm) of the cylinder. If your answer is n(pi)/100, what is n?', '3'),
(55, 'Let f(x) be a function satisfying f(x) f(y) = f(xy) for all real x, y. If f(2) = 4, then f(½)=n. What is the value of 8n ?', '2'),
(56, 'How many pairs of positive integers m, n satisfy (1/m)+(4/n)= (1/12), where n is an odd integer less than 60? ', '3'),
(57, 'Suppose you have a currency, named Miso, in three denominations: 1 Miso, 10 Misos and 50 Misos. In how many ways can you pay a bill of 107 Misos? If your answer is x, what is the value of x/2?', '9'),
(58, 'Consider four digit numbers for which the first two digits are equal and the last two digits are also equal. How many such numbers are perfect squares? ', '1'),
(59, 'A group of 630 children is arranged in rows for a group photograph session. Each row contains three fewer children than the row in front of it. What number of rows is not possible?', '6'),
(60, 'Consider the set S = {1, 2, 3, ..., 1000}. How many arithmetic progressions can be formed from the elements of S that start with 1 and end with 1000 and have at least 3 elements?', '7'),
(61, 'When you reverse the digits of the number 13, the number increases by 18. How many other two-digit numbers increase by 18 when their digits are reversed?', '6'),
(62, 'Arun, Barun and Kiranmala start from the same place and travel in the same direction at speeds of 30, 40 and 60 km per hour respectively. Barun starts two hours after Arun. If Barun and Kiranmala overtake Arun at the same instant, how many hours after Arun did Kiranmala start?', '4'),
(63, 'An equilateral triangle BPC is drawn inside a square ABCD. The value of the angle APD in degrees is n? Compute n/30.', '5'),
(64, 'There are 6 tasks and 6 persons. Task 1 cannot be assigned either to person 1 or to person 2; task 2 must be assigned to either person 3 or person 4. Every person is to be assigned one task. The number of ways in which the assignment can be done is x. What is the value of sqrt(x)/2?', '6'),
(65, 'A father has 7 sons. Each son has one sister. The eldest son and youngest son are not born from  same mother. The minimum number of females in the family are? assume all are alive.', '3'),
(66, 'A game each with two opponents is held in which 20 players take part. If each game is a do or die match, \r\nthe number of matches that are to be played before the final match is n. What is n-10?', '8'),
(68, 'NUMBER OF VALUES OF K FOR WHICH THIS EQUATION X^3-27X+K has atleast 2 distinct integer root is ', '4'),
(69, '(1, 1, 9) is a triple of natural numbers whose sum is 11. We consider (1,1,9), (1,9,1) and (9,1,1) to be the same triple because each triple has the same three numbers.\r\nHow many other triples of natural numbers have a sum of 11?\r\n', '9'),
(70, 'In the subtraction problem below, all five of the digits 3, 5, 6, 7 and 9 are to be placed, one in each box. What is the unit digit in smallest difference that can be the result?', '9'),
(71, ' Find the NUMBER OF positive EVEN NUMBERS of x where ||x| - 4| < 3.', '3'),
(72, '3x + 4|y| = 33. How many integer values of (x, y) are possible?', '4'),
(73, '9-3/1/3+1= ?', '1'),
(74, 'If at 1st stop 4 people get down from a bus and 6 people gets in a bus at last stop …finally there are 2 people left……so many were there in the start?', '9');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `gameboard`
--
ALTER TABLE `gameboard`
  ADD UNIQUE KEY `a` (`aid`);

--
-- Indexes for table `playerdb`
--
ALTER TABLE `playerdb`
  ADD UNIQUE KEY `a` (`aid`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD UNIQUE KEY `a` (`qno`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `gameboard`
--
ALTER TABLE `gameboard`
  MODIFY `aid` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `playerdb`
--
ALTER TABLE `playerdb`
  MODIFY `aid` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `qno` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
