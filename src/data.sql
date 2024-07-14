CREATE DATABASE IF NOT EXISTS your_new_database;
USE your_new_database;
CREATE TABLE `companies` (
  `id` INT NOT NULL  PRIMARY KEY,
  `CompanyName` VARCHAR   ,
  `CompanyAddress` VARCHAR   ,
  `isActive` INT   ,
  `insertDate` VARCHAR   
);
INSERT INTO `companies` VALUES (1, 'Davis Ltd', '9134 Veronica Ford Apt. 620
New Kathryn, NV 08828', 1, '1972-08-28 23:07:05');
INSERT INTO `companies` VALUES (2, 'Warren Inc', 'Unit 2630 Box 9225
DPO AE 73142', 1, '2022-05-22 22:58:55');
INSERT INTO `companies` VALUES (3, 'Brown-Fields', '4993 Lucas Branch
West Tyler, MT 86872', 1, '1987-10-30 18:34:58');
INSERT INTO `companies` VALUES (4, 'Hodges LLC', '766 Travis Burgs
North Jenniferfurt, DE 46569', 1, '2016-07-15 18:59:04');
INSERT INTO `companies` VALUES (5, 'Anderson Group', '73047 Travis Light Apt. 387
Buchananhaven, VA 57242', 1, '1991-03-23 12:22:20');
CREATE TABLE `documents` (
  `id` INT NOT NULL  PRIMARY KEY,
  `UId` INT   ,
  `fileName` VARCHAR   ,
  `filePath` VARCHAR   ,
  `insertDate` VARCHAR   ,
  `insertUserID` INT   
);
INSERT INTO `documents` VALUES (1, 1, 'dog.key', '/as/pass.css', '1973-10-06 11:17:37', 1);
INSERT INTO `documents` VALUES (2, 1, 'than.jpg', '/effect/season.jpeg', '1979-09-26 16:13:07', 1);
INSERT INTO `documents` VALUES (3, 1, 'hospital.ppt', '/seven/section.webm', '2007-11-04 12:31:50', 1);
INSERT INTO `documents` VALUES (4, 1, 'maybe.xls', '/hair/factor.bmp', '2001-06-14 23:35:02', 1);
INSERT INTO `documents` VALUES (5, 1, 'goal.avi', '/wear/instead.js', '1973-05-29 12:17:56', 1);
CREATE TABLE `makes` (
  `id` INT NOT NULL  PRIMARY KEY,
  `makeName` VARCHAR   ,
  `makeCode` VARCHAR   ,
  `displayName` VARCHAR   ,
  `insertDate` VARCHAR   ,
  `insertUserID` INT   ,
  `updateDate` VARCHAR   ,
  `updateUserID` INT   
);
INSERT INTO `makes` VALUES (1, 'Hudson and Sons', '3041', 'Lee LLC', '2012-08-30 13:00:04', 1, '1988-12-27 13:56:40', 1);
INSERT INTO `makes` VALUES (2, 'Blake, Williams and Salazar', '9699', 'Hill-George', '2017-06-04 05:03:39', 1, '1994-01-21 01:21:33', 1);
INSERT INTO `makes` VALUES (3, 'Clark Group', '6050', 'Salazar-Davis', '2008-07-10 10:28:43', 1, '2017-09-01 21:10:41', 1);
INSERT INTO `makes` VALUES (4, 'Ramirez-Gilbert', '3848', 'Smith Ltd', '2013-07-29 10:36:04', 1, '1988-11-15 14:53:24', 1);
INSERT INTO `makes` VALUES (5, 'Reese, Macdonald and Campbell', '8062', 'Robertson Inc', '2021-05-18 10:22:43', 1, '1981-05-23 20:12:14', 1);
CREATE TABLE `branchs` (
  `id` INT NOT NULL  PRIMARY KEY,
  `companyId` INT   ,
  `branchName` VARCHAR   ,
  `branchCode` VARCHAR   ,
  `phoneNo` VARCHAR   ,
  `faxNo` VARCHAR   ,
  `isActive` INT   ,
  `insertDate` VARCHAR   ,
  `insertUserID` INT   ,
  `updateDate` VARCHAR   ,
  `updateUserID` INT   
);
INSERT INTO `branchs` VALUES (1, 1, 'Gray Group', '28', '6833987302', '9386095788', 1, '2021-07-20 04:11:43', 1, '2020-11-20 21:44:11', 1);
INSERT INTO `branchs` VALUES (2, 1, 'Atkins, Stevens and Wallace', '5455', '001-775-244-5971x4050', '531.266.3988x6888', 1, '2004-04-30 17:29:28', 1, '2002-09-09 07:23:45', 1);
INSERT INTO `branchs` VALUES (3, 1, 'Norris-Sutton', '4149', '(269)597-7707x265', '957-781-2770', 1, '1985-01-24 23:00:49', 1, '2007-01-03 09:40:10', 1);
INSERT INTO `branchs` VALUES (4, 1, 'Kelly, Hudson and Brown', '6089', '623.314.2460x45360', '(495)716-1628', 1, '1994-09-15 22:56:25', 1, '1991-12-02 15:37:21', 1);
INSERT INTO `branchs` VALUES (5, 1, 'Brown-Hernandez', '7823', '445.234.7986x071', '+1-470-982-1783x20021', 1, '2011-06-06 10:49:33', 1, '1982-04-20 14:56:32', 1);
CREATE TABLE `contacts` (
  `id` INT NOT NULL  PRIMARY KEY,
  `gender` VARCHAR   ,
  `isActive` INT   ,
  `insertDate` VARCHAR   ,
  `insertUserID` INT   ,
  `updateDate` VARCHAR   ,
  `updateUserID` INT   ,
  `ICNo` INT   ,
  `ICDocID` INT   ,
  `photoDocId` INT   
);
INSERT INTO `contacts` VALUES (1, 'F', 1, '1986-07-22 19:41:12', 1, '2018-05-09 05:59:20', 1, 6586, 1, 1);
INSERT INTO `contacts` VALUES (2, 'F', 1, '1986-03-02 06:26:23', 1, '2004-11-30 20:19:56', 1, 802, 1, 1);
INSERT INTO `contacts` VALUES (3, 'F', 1, '2010-08-28 11:57:04', 1, '2006-05-02 12:43:10', 1, 5874, 1, 1);
INSERT INTO `contacts` VALUES (4, 'F', 1, '2021-11-01 22:02:25', 1, '1982-07-12 03:37:53', 1, 4416, 1, 1);
INSERT INTO `contacts` VALUES (5, 'M', 1, '2016-01-14 21:14:34', 1, '1982-11-11 09:09:27', 1, 6094, 1, 1);
CREATE TABLE `cmb` (
  `id` INT NOT NULL  PRIMARY KEY,
  `CompanyId` INT   ,
  `MakeId` INT   ,
  `BranchId` INT   
);
INSERT INTO `cmb` VALUES (1, 1, 1, 1);
INSERT INTO `cmb` VALUES (2, 1, 1, 1);
INSERT INTO `cmb` VALUES (3, 1, 1, 1);
INSERT INTO `cmb` VALUES (4, 1, 1, 1);
INSERT INTO `cmb` VALUES (5, 1, 1, 1);
CREATE TABLE `users` (
  `id` INT NOT NULL  PRIMARY KEY,
  `userName` VARCHAR   ,
  `password` VARCHAR   ,
  `email` VARCHAR   ,
  `UserImageDocID` INT   ,
  `isActive` INT   ,
  `insertDate` VARCHAR   ,
  `insertUserID` INT   ,
  `updateDate` VARCHAR   ,
  `updateUserID` INT   
);
INSERT INTO `users` VALUES (1, 'elizabethjackson', 'b*S&IFcE#9', 'marywashington@example.org', 1, 1, '1989-03-20 06:02:02', 1, '1974-02-14 19:21:16', 1);
INSERT INTO `users` VALUES (2, 'makaylabender', 'xQ24Z@ue#%', 'xwarren@example.org', 1, 1, '1985-04-11 05:47:37', 1, '2008-04-27 00:24:04', 1);
INSERT INTO `users` VALUES (3, 'taylorrachael', '_4EfOawAKb', 'elane@example.com', 1, 1, '2020-12-16 19:04:55', 1, '2009-02-07 10:31:20', 1);
INSERT INTO `users` VALUES (4, 'reneewallace', 'TCx2P#kx6@', 'alan70@example.net', 1, 1, '1987-11-20 13:38:42', 1, '1988-11-08 01:35:45', 1);
INSERT INTO `users` VALUES (5, 'jeffreycollins', '+9WflTCn@v', 'lindseykeith@example.net', 1, 1, '1985-11-09 05:49:54', 1, '1986-03-20 20:38:10', 1);
CREATE TABLE `contactdetails` (
  `id` INT NOT NULL  PRIMARY KEY,
  `CompanyId` INT   ,
  `ContactId` INT   ,
  `MakeId` INT   ,
  `ContactName` VARCHAR   ,
  `ContactEmail` VARCHAR   ,
  `ContactPhone` VARCHAR   ,
  `ContactRole` VARCHAR   ,
  `type` VARCHAR   
);
INSERT INTO `contactdetails` VALUES (1, 1, 1, 1, 'Timothy Freeman', 'awood@example.com', '(422)445-5329', 'Social worker', 'Primary');
INSERT INTO `contactdetails` VALUES (2, 1, 1, 1, 'Brian Robinson', 'christensendeborah@example.org', '354-871-6655x892', 'Engineer, energy', 'Primary');
INSERT INTO `contactdetails` VALUES (3, 1, 1, 1, 'Cindy Saunders', 'walkerjohn@example.org', '(315)399-2923', 'Logistics and distribution manager', 'Primary');
INSERT INTO `contactdetails` VALUES (4, 1, 1, 1, 'Ricky Swanson', 'bwalters@example.org', '+1-752-347-9469x2084', 'Geophysicist/field seismologist', 'Primary');
INSERT INTO `contactdetails` VALUES (5, 1, 1, 1, 'Michael Lawrence', 'kathrynsharp@example.com', '473.308.5987x57017', 'Electronics engineer', 'Primary');
INSERT INTO `contactdetails` VALUES (6, 2, 1, 1, 'Eddie Holland', 'daniel81@example.net', '(785)774-2131', 'Barrister''s clerk', 'Primary');
INSERT INTO `contactdetails` VALUES (7, 2, 1, 1, 'Hector Williams', 'cmathis@example.org', '+1-904-348-1754x0276', 'Telecommunications researcher', 'Primary');
INSERT INTO `contactdetails` VALUES (8, 2, 1, 1, 'Paula Jensen', 'jonessara@example.org', '586.279.8904x112', 'Drilling engineer', 'Primary');
INSERT INTO `contactdetails` VALUES (9, 2, 1, 1, 'Mrs. Katherine Morris', 'holdensamuel@example.net', '+1-491-332-7953x70628', 'Occupational psychologist', 'Primary');
INSERT INTO `contactdetails` VALUES (10, 2, 1, 1, 'Kayla Roberts', 'krystal89@example.net', '410-684-6507', 'Fitness centre manager', 'Primary');
INSERT INTO `contactdetails` VALUES (11, 3, 1, 1, 'John West', 'craiglisa@example.net', '710.687.6387x36085', 'Production designer, theatre/television/film', 'Primary');
INSERT INTO `contactdetails` VALUES (12, 3, 1, 1, 'Jennifer Dunn', 'natalie94@example.net', '001-241-691-4578', 'Sports development officer', 'Primary');
INSERT INTO `contactdetails` VALUES (13, 3, 1, 1, 'Danielle Williams', 'vramirez@example.net', '(531)662-6420x9920', 'Tax inspector', 'Primary');
INSERT INTO `contactdetails` VALUES (14, 3, 1, 1, 'Heather Giles', 'greencaroline@example.org', '001-779-251-7372x3535', 'Consulting civil engineer', 'Primary');
INSERT INTO `contactdetails` VALUES (15, 3, 1, 1, 'James Porter', 'hwilson@example.net', '+1-629-812-3215x844', 'Midwife', 'Primary');
INSERT INTO `contactdetails` VALUES (16, 4, 1, 1, 'Mark Maddox', 'john78@example.org', '450.290.6403x603', 'Copywriter, advertising', 'Primary');
INSERT INTO `contactdetails` VALUES (17, 4, 1, 1, 'Jacob Williams', 'kimberlywebb@example.org', '001-469-952-1637', 'Television floor manager', 'Primary');
INSERT INTO `contactdetails` VALUES (18, 4, 1, 1, 'John Wells', 'thorntonheather@example.org', '(568)818-4063', 'Financial controller', 'Primary');
INSERT INTO `contactdetails` VALUES (19, 4, 1, 1, 'Gina Baker', 'eprice@example.org', '277-761-8947', 'Licensed conveyancer', 'Primary');
INSERT INTO `contactdetails` VALUES (20, 4, 1, 1, 'Jared Moran', 'heatherhopkins@example.com', '001-942-494-5756x453', 'Software engineer', 'Primary');
INSERT INTO `contactdetails` VALUES (21, 5, 1, 1, 'Mr. Michael Lambert', 'grahamjared@example.net', '(751)555-3732x1041', 'Therapist, horticultural', 'Primary');
INSERT INTO `contactdetails` VALUES (22, 5, 1, 1, 'Andrew Carlson', 'fhayes@example.net', '928-918-9864x147', 'Public relations officer', 'Primary');
INSERT INTO `contactdetails` VALUES (23, 5, 1, 1, 'Emily Wade', 'erikharrison@example.net', '001-987-283-4983x4974', 'Records manager', 'Primary');
INSERT INTO `contactdetails` VALUES (24, 5, 1, 1, 'Travis Alvarez', 'ernest96@example.net', '755-983-6973x2864', 'Wellsite geologist', 'Primary');
INSERT INTO `contactdetails` VALUES (25, 5, 1, 1, 'Michelle Jimenez', 'travisdustin@example.net', '+1-343-574-0618x31500', 'Chartered loss adjuster', 'Primary');
CREATE TABLE `userroles` (
  `id` INT NOT NULL  PRIMARY KEY,
  `CMBId` INT   
);
INSERT INTO `userroles` VALUES (1, 1);
INSERT INTO `userroles` VALUES (2, 1);
INSERT INTO `userroles` VALUES (3, 1);
INSERT INTO `userroles` VALUES (4, 1);
INSERT INTO `userroles` VALUES (5, 1);
CREATE TABLE `contactdetailinfors` (
  `id` INT NOT NULL  PRIMARY KEY,
  `contactID` INT   ,
  `type` VARCHAR   ,
  `label` VARCHAR   ,
  `isPrimary` INT   ,
  `insertDate` VARCHAR   ,
  `insertUserID` INT   ,
  `updateDate` VARCHAR   ,
  `updateUserID` INT   
);
INSERT INTO `contactdetailinfors` VALUES (1, 1, 'Email', 'kingdavid@example.com', 1, '1982-08-03 05:06:49', 1, '1992-08-20 00:42:29', 1);
INSERT INTO `contactdetailinfors` VALUES (2, 1, 'Email', 'timothybrown@example.com', 1, '1996-07-15 16:57:29', 1, '1987-06-28 14:35:28', 1);
INSERT INTO `contactdetailinfors` VALUES (3, 1, 'Email', 'martinkenneth@example.net', 1, '2001-03-24 05:12:25', 1, '1997-05-17 22:33:13', 1);
INSERT INTO `contactdetailinfors` VALUES (4, 1, 'Email', 'rodriguezdouglas@example.net', 1, '1970-09-15 18:07:52', 1, '2001-07-11 11:33:42', 1);
INSERT INTO `contactdetailinfors` VALUES (5, 1, 'Email', 'mblack@example.net', 1, '1985-08-13 19:04:54', 1, '2011-12-11 01:28:28', 1);
INSERT INTO `contactdetailinfors` VALUES (6, 2, 'Email', 'caitlin60@example.org', 1, '1981-07-18 18:55:37', 1, '2009-03-31 01:37:59', 1);
INSERT INTO `contactdetailinfors` VALUES (7, 2, 'Email', 'parkerjessica@example.net', 1, '1972-07-16 04:34:57', 1, '1989-09-18 09:23:07', 1);
INSERT INTO `contactdetailinfors` VALUES (8, 2, 'Email', 'sara33@example.com', 1, '2019-08-25 06:58:21', 1, '1976-03-29 08:36:51', 1);
INSERT INTO `contactdetailinfors` VALUES (9, 2, 'Email', 'brownamanda@example.org', 1, '1977-10-17 15:05:05', 1, '2011-01-01 17:24:56', 1);
INSERT INTO `contactdetailinfors` VALUES (10, 2, 'Email', 'etaylor@example.org', 1, '1991-04-04 08:46:01', 1, '2022-12-09 17:20:19', 1);
INSERT INTO `contactdetailinfors` VALUES (11, 3, 'Email', 'jacquelinenielsen@example.net', 1, '1971-04-03 14:28:29', 1, '1980-03-30 18:27:41', 1);
INSERT INTO `contactdetailinfors` VALUES (12, 3, 'Email', 'steven08@example.net', 1, '2006-12-30 21:07:47', 1, '2015-12-14 01:24:47', 1);
INSERT INTO `contactdetailinfors` VALUES (13, 3, 'Email', 'simmonsmichael@example.com', 1, '1979-02-09 16:10:04', 1, '1985-06-18 01:57:07', 1);
INSERT INTO `contactdetailinfors` VALUES (14, 3, 'Email', 'bmcknight@example.net', 1, '1984-07-06 00:31:18', 1, '2004-10-23 09:23:01', 1);
INSERT INTO `contactdetailinfors` VALUES (15, 3, 'Email', 'susansimpson@example.org', 1, '1994-02-03 17:50:37', 1, '1971-07-24 13:52:11', 1);
INSERT INTO `contactdetailinfors` VALUES (16, 4, 'Email', 'teresajacobson@example.com', 1, '1987-03-30 09:51:47', 1, '2007-08-17 07:08:25', 1);
INSERT INTO `contactdetailinfors` VALUES (17, 4, 'Email', 'danielmcguire@example.net', 1, '2014-04-12 19:27:48', 1, '2017-11-15 17:21:00', 1);
INSERT INTO `contactdetailinfors` VALUES (18, 4, 'Email', 'laura14@example.com', 1, '2002-01-04 12:34:07', 1, '1977-05-17 23:14:05', 1);
INSERT INTO `contactdetailinfors` VALUES (19, 4, 'Email', 'hicksroger@example.com', 1, '1994-06-05 09:40:18', 1, '1987-08-29 02:23:14', 1);
INSERT INTO `contactdetailinfors` VALUES (20, 4, 'Email', 'bkim@example.com', 1, '1995-10-24 11:06:18', 1, '1977-08-21 07:25:38', 1);
INSERT INTO `contactdetailinfors` VALUES (21, 5, 'Email', 'flee@example.net', 1, '2017-09-02 03:10:15', 1, '1996-10-29 02:06:42', 1);
INSERT INTO `contactdetailinfors` VALUES (22, 5, 'Email', 'david71@example.com', 1, '2010-09-07 00:27:39', 1, '1994-08-31 13:25:22', 1);
INSERT INTO `contactdetailinfors` VALUES (23, 5, 'Email', 'steven75@example.org', 1, '2024-05-16 04:52:08', 1, '1989-07-18 02:27:37', 1);
INSERT INTO `contactdetailinfors` VALUES (24, 5, 'Email', 'angelicaolson@example.net', 1, '1983-08-23 12:10:09', 1, '1988-12-13 10:19:42', 1);
INSERT INTO `contactdetailinfors` VALUES (25, 5, 'Email', 'tmorris@example.com', 1, '1981-05-29 22:03:07', 1, '1984-05-15 15:59:00', 1);
INSERT INTO `contactdetailinfors` VALUES (26, 6, 'Email', 'maxwellkelly@example.com', 1, '2008-05-12 03:46:37', 1, '1994-10-26 14:18:10', 1);
INSERT INTO `contactdetailinfors` VALUES (27, 6, 'Email', 'xbradley@example.org', 1, '2015-02-24 16:20:39', 1, '2010-02-23 01:32:46', 1);
INSERT INTO `contactdetailinfors` VALUES (28, 6, 'Email', 'bondmark@example.org', 1, '1991-05-16 23:32:29', 1, '2006-12-25 13:05:33', 1);
INSERT INTO `contactdetailinfors` VALUES (29, 6, 'Email', 'harrisscott@example.net', 1, '1982-02-23 09:40:30', 1, '2010-09-19 00:24:29', 1);
INSERT INTO `contactdetailinfors` VALUES (30, 6, 'Email', 'sjohnson@example.net', 1, '2008-06-30 01:05:41', 1, '2006-12-02 06:24:06', 1);
INSERT INTO `contactdetailinfors` VALUES (31, 7, 'Email', 'gwalters@example.org', 1, '1984-07-31 22:55:14', 1, '1983-11-26 06:07:14', 1);
INSERT INTO `contactdetailinfors` VALUES (32, 7, 'Email', 'garrettsummer@example.net', 1, '2015-06-19 19:49:31', 1, '1983-07-30 11:07:12', 1);
INSERT INTO `contactdetailinfors` VALUES (33, 7, 'Email', 'johnsmith@example.org', 1, '2013-10-20 01:31:58', 1, '1997-05-31 09:52:58', 1);
INSERT INTO `contactdetailinfors` VALUES (34, 7, 'Email', 'debra71@example.com', 1, '2011-10-07 00:49:51', 1, '2023-04-07 19:10:26', 1);
INSERT INTO `contactdetailinfors` VALUES (35, 7, 'Email', 'teresabryant@example.net', 1, '1970-06-24 10:07:35', 1, '1998-12-27 17:56:48', 1);
INSERT INTO `contactdetailinfors` VALUES (36, 8, 'Email', 'vasquezkimberly@example.org', 1, '1980-06-28 00:19:32', 1, '2002-08-17 00:41:34', 1);
INSERT INTO `contactdetailinfors` VALUES (37, 8, 'Email', 'hughestiffany@example.com', 1, '1975-10-16 21:57:05', 1, '1970-03-22 10:25:09', 1);
INSERT INTO `contactdetailinfors` VALUES (38, 8, 'Email', 'hamptonmadison@example.com', 1, '2004-07-21 01:21:32', 1, '2018-08-16 03:36:08', 1);
INSERT INTO `contactdetailinfors` VALUES (39, 8, 'Email', 'damon68@example.net', 1, '1982-03-30 11:52:34', 1, '1999-12-18 09:30:03', 1);
INSERT INTO `contactdetailinfors` VALUES (40, 8, 'Email', 'kpruitt@example.com', 1, '1993-04-03 23:40:33', 1, '1993-11-22 23:59:49', 1);
INSERT INTO `contactdetailinfors` VALUES (41, 9, 'Email', 'rachelvelasquez@example.org', 1, '2010-11-28 20:55:18', 1, '1971-12-26 23:26:13', 1);
INSERT INTO `contactdetailinfors` VALUES (42, 9, 'Email', 'thouse@example.com', 1, '2012-12-08 06:10:39', 1, '1973-01-08 10:29:56', 1);
INSERT INTO `contactdetailinfors` VALUES (43, 9, 'Email', 'kellerdustin@example.com', 1, '1979-06-25 14:35:59', 1, '1996-05-25 16:15:28', 1);
INSERT INTO `contactdetailinfors` VALUES (44, 9, 'Email', 'fisherkatrina@example.com', 1, '1981-07-28 04:32:09', 1, '1979-12-10 06:08:45', 1);
INSERT INTO `contactdetailinfors` VALUES (45, 9, 'Email', 'carlsonjessica@example.net', 1, '1993-07-04 20:51:36', 1, '2014-02-21 05:59:36', 1);
INSERT INTO `contactdetailinfors` VALUES (46, 10, 'Email', 'wernerdavid@example.net', 1, '1995-12-15 02:18:53', 1, '2003-09-29 04:45:08', 1);
INSERT INTO `contactdetailinfors` VALUES (47, 10, 'Email', 'wolfebrian@example.net', 1, '2002-04-29 17:10:24', 1, '2018-07-28 07:37:18', 1);
INSERT INTO `contactdetailinfors` VALUES (48, 10, 'Email', 'whamilton@example.net', 1, '2002-12-12 09:37:49', 1, '1983-04-07 06:45:53', 1);
INSERT INTO `contactdetailinfors` VALUES (49, 10, 'Email', 'goldenjeremy@example.net', 1, '1986-04-23 06:54:48', 1, '1971-03-22 02:42:52', 1);
INSERT INTO `contactdetailinfors` VALUES (50, 10, 'Email', 'tmarks@example.net', 1, '1971-11-23 18:31:19', 1, '1996-03-14 00:46:14', 1);
INSERT INTO `contactdetailinfors` VALUES (51, 11, 'Email', 'kkelly@example.net', 1, '1985-06-06 09:25:06', 1, '2021-08-05 01:14:22', 1);
INSERT INTO `contactdetailinfors` VALUES (52, 11, 'Email', 'susanjones@example.com', 1, '2015-06-09 13:46:30', 1, '2008-08-04 01:39:56', 1);
INSERT INTO `contactdetailinfors` VALUES (53, 11, 'Email', 'munozdavid@example.com', 1, '2023-02-11 02:08:53', 1, '1978-05-19 15:31:20', 1);
INSERT INTO `contactdetailinfors` VALUES (54, 11, 'Email', 'bryantashley@example.org', 1, '1981-02-03 05:48:07', 1, '2010-01-31 07:49:48', 1);
INSERT INTO `contactdetailinfors` VALUES (55, 11, 'Email', 'kevin27@example.com', 1, '2010-09-12 20:48:11', 1, '2007-10-09 01:01:00', 1);
INSERT INTO `contactdetailinfors` VALUES (56, 12, 'Email', 'amy99@example.com', 1, '1991-10-09 17:00:01', 1, '2006-02-16 00:57:00', 1);
INSERT INTO `contactdetailinfors` VALUES (57, 12, 'Email', 'robertharrison@example.org', 1, '2022-10-05 06:12:20', 1, '1994-03-31 10:32:03', 1);
INSERT INTO `contactdetailinfors` VALUES (58, 12, 'Email', 'katherinemitchell@example.org', 1, '1987-04-23 13:35:04', 1, '2001-11-07 05:24:20', 1);
INSERT INTO `contactdetailinfors` VALUES (59, 12, 'Email', 'debra92@example.org', 1, '1983-07-30 17:16:57', 1, '1999-06-28 21:12:17', 1);
INSERT INTO `contactdetailinfors` VALUES (60, 12, 'Email', 'jamesmiller@example.org', 1, '1989-05-03 03:57:10', 1, '2002-06-22 07:16:09', 1);
INSERT INTO `contactdetailinfors` VALUES (61, 13, 'Email', 'charles52@example.com', 1, '1975-06-19 11:00:38', 1, '2016-09-24 23:10:10', 1);
INSERT INTO `contactdetailinfors` VALUES (62, 13, 'Email', 'catherine76@example.org', 1, '1973-05-31 23:57:08', 1, '2010-06-06 02:04:41', 1);
INSERT INTO `contactdetailinfors` VALUES (63, 13, 'Email', 'hillryan@example.net', 1, '1982-08-16 15:03:52', 1, '2011-04-09 09:33:50', 1);
INSERT INTO `contactdetailinfors` VALUES (64, 13, 'Email', 'bburke@example.com', 1, '1979-08-03 09:55:24', 1, '1988-04-27 15:46:37', 1);
INSERT INTO `contactdetailinfors` VALUES (65, 13, 'Email', 'hugheskatherine@example.com', 1, '1970-07-11 14:50:03', 1, '2016-05-15 14:51:15', 1);
INSERT INTO `contactdetailinfors` VALUES (66, 14, 'Email', 'brooksmelissa@example.net', 1, '2016-02-07 02:39:47', 1, '2021-03-28 13:57:59', 1);
INSERT INTO `contactdetailinfors` VALUES (67, 14, 'Email', 'iroach@example.com', 1, '1981-01-20 20:17:54', 1, '2002-09-19 09:52:22', 1);
INSERT INTO `contactdetailinfors` VALUES (68, 14, 'Email', 'lshannon@example.net', 1, '1981-01-12 09:39:42', 1, '1990-07-07 02:20:54', 1);
INSERT INTO `contactdetailinfors` VALUES (69, 14, 'Email', 'lowemitchell@example.net', 1, '1994-05-30 06:57:51', 1, '1978-02-07 23:13:48', 1);
INSERT INTO `contactdetailinfors` VALUES (70, 14, 'Email', 'yvonneortega@example.net', 1, '1979-08-22 05:16:09', 1, '2008-01-13 17:43:41', 1);
INSERT INTO `contactdetailinfors` VALUES (71, 15, 'Email', 'dwalton@example.net', 1, '2003-04-03 21:39:06', 1, '1982-02-16 18:29:07', 1);
INSERT INTO `contactdetailinfors` VALUES (72, 15, 'Email', 'mcintoshjoseph@example.org', 1, '1977-08-27 13:40:35', 1, '1975-11-17 11:43:14', 1);
INSERT INTO `contactdetailinfors` VALUES (73, 15, 'Email', 'clee@example.net', 1, '1983-05-05 14:35:04', 1, '2002-03-18 19:20:39', 1);
INSERT INTO `contactdetailinfors` VALUES (74, 15, 'Email', 'lgonzalez@example.com', 1, '2000-02-04 20:08:35', 1, '1985-07-10 15:36:30', 1);
INSERT INTO `contactdetailinfors` VALUES (75, 15, 'Email', 'smithrachel@example.net', 1, '1997-08-27 19:48:52', 1, '1970-09-18 18:14:52', 1);
INSERT INTO `contactdetailinfors` VALUES (76, 16, 'Email', 'laurenmichael@example.net', 1, '2000-12-27 20:20:13', 1, '1979-01-16 20:21:05', 1);
INSERT INTO `contactdetailinfors` VALUES (77, 16, 'Email', 'vancelori@example.org', 1, '1978-09-23 17:03:56', 1, '2023-10-28 19:44:59', 1);
INSERT INTO `contactdetailinfors` VALUES (78, 16, 'Email', 'beckjoseph@example.org', 1, '1975-07-12 01:52:47', 1, '1981-11-17 02:02:02', 1);
INSERT INTO `contactdetailinfors` VALUES (79, 16, 'Email', 'nsmith@example.net', 1, '1983-06-01 18:22:35', 1, '2024-04-30 16:31:46', 1);
INSERT INTO `contactdetailinfors` VALUES (80, 16, 'Email', 'jenniferzimmerman@example.net', 1, '1980-05-22 14:29:14', 1, '2023-03-10 03:08:01', 1);
INSERT INTO `contactdetailinfors` VALUES (81, 17, 'Email', 'ehensley@example.org', 1, '2007-08-10 19:34:12', 1, '2018-08-16 11:31:40', 1);
INSERT INTO `contactdetailinfors` VALUES (82, 17, 'Email', 'tylerbird@example.com', 1, '2019-09-16 20:34:27', 1, '1993-06-29 08:53:48', 1);
INSERT INTO `contactdetailinfors` VALUES (83, 17, 'Email', 'chamberswilliam@example.com', 1, '1973-01-02 18:51:59', 1, '1987-08-01 01:28:30', 1);
INSERT INTO `contactdetailinfors` VALUES (84, 17, 'Email', 'fclark@example.com', 1, '2021-08-06 10:32:52', 1, '1979-04-11 01:59:37', 1);
INSERT INTO `contactdetailinfors` VALUES (85, 17, 'Email', 'madison76@example.org', 1, '1999-09-08 12:55:25', 1, '1975-10-26 04:04:21', 1);
INSERT INTO `contactdetailinfors` VALUES (86, 18, 'Email', 'esullivan@example.net', 1, '1976-01-09 00:34:38', 1, '2012-05-27 16:23:15', 1);
INSERT INTO `contactdetailinfors` VALUES (87, 18, 'Email', 'grahamlisa@example.net', 1, '1990-09-16 12:41:44', 1, '1986-09-17 08:29:39', 1);
INSERT INTO `contactdetailinfors` VALUES (88, 18, 'Email', 'mhodge@example.org', 1, '1999-09-10 07:07:12', 1, '1984-11-18 01:45:45', 1);
INSERT INTO `contactdetailinfors` VALUES (89, 18, 'Email', 'nprice@example.com', 1, '2015-12-16 16:27:10', 1, '1976-03-30 09:25:41', 1);
INSERT INTO `contactdetailinfors` VALUES (90, 18, 'Email', 'james51@example.org', 1, '1984-05-02 04:34:10', 1, '2002-03-24 10:44:53', 1);
INSERT INTO `contactdetailinfors` VALUES (91, 19, 'Email', 'jared89@example.net', 1, '1974-07-17 20:24:19', 1, '1995-01-07 16:37:01', 1);
INSERT INTO `contactdetailinfors` VALUES (92, 19, 'Email', 'florescynthia@example.net', 1, '1984-02-07 05:03:00', 1, '1999-08-28 02:14:55', 1);
INSERT INTO `contactdetailinfors` VALUES (93, 19, 'Email', 'michaelclark@example.net', 1, '1988-04-08 00:49:59', 1, '2014-01-27 07:58:41', 1);
INSERT INTO `contactdetailinfors` VALUES (94, 19, 'Email', 'deckerjames@example.net', 1, '2003-08-06 11:57:30', 1, '1989-12-29 05:56:30', 1);
INSERT INTO `contactdetailinfors` VALUES (95, 19, 'Email', 'archerbrittany@example.org', 1, '1981-02-07 11:37:22', 1, '1976-09-18 00:49:07', 1);
INSERT INTO `contactdetailinfors` VALUES (96, 20, 'Email', 'rosskaren@example.com', 1, '2001-02-14 00:22:38', 1, '1980-05-13 22:13:17', 1);
INSERT INTO `contactdetailinfors` VALUES (97, 20, 'Email', 'powellchristine@example.net', 1, '2014-04-29 03:54:13', 1, '2001-06-13 21:21:31', 1);
INSERT INTO `contactdetailinfors` VALUES (98, 20, 'Email', 'alexisgilbert@example.com', 1, '1970-01-30 01:13:33', 1, '2022-07-02 01:35:01', 1);
INSERT INTO `contactdetailinfors` VALUES (99, 20, 'Email', 'amyadams@example.net', 1, '2000-03-23 02:07:48', 1, '2010-02-28 08:34:55', 1);
INSERT INTO `contactdetailinfors` VALUES (100, 20, 'Email', 'christopher81@example.com', 1, '1987-09-30 17:16:55', 1, '2003-05-31 05:29:52', 1);
INSERT INTO `contactdetailinfors` VALUES (101, 21, 'Email', 'qfleming@example.net', 1, '2005-11-16 14:11:50', 1, '1990-08-20 06:27:00', 1);
INSERT INTO `contactdetailinfors` VALUES (102, 21, 'Email', 'lauren47@example.org', 1, '1972-12-18 06:46:31', 1, '1997-07-23 21:52:03', 1);
INSERT INTO `contactdetailinfors` VALUES (103, 21, 'Email', 'izimmerman@example.net', 1, '1972-05-27 21:42:34', 1, '2006-10-27 06:17:16', 1);
INSERT INTO `contactdetailinfors` VALUES (104, 21, 'Email', 'douglasmorris@example.net', 1, '1989-10-22 13:57:21', 1, '1993-03-25 11:47:54', 1);
INSERT INTO `contactdetailinfors` VALUES (105, 21, 'Email', 'robinsonjavier@example.net', 1, '2008-12-27 09:20:44', 1, '2013-05-12 21:23:23', 1);
INSERT INTO `contactdetailinfors` VALUES (106, 22, 'Email', 'hdrake@example.com', 1, '2018-02-16 21:56:00', 1, '2020-10-21 14:18:55', 1);
INSERT INTO `contactdetailinfors` VALUES (107, 22, 'Email', 'jnixon@example.net', 1, '1973-06-04 22:13:26', 1, '2023-01-16 16:21:29', 1);
INSERT INTO `contactdetailinfors` VALUES (108, 22, 'Email', 'pmartin@example.com', 1, '2007-03-13 07:06:11', 1, '1990-01-26 12:16:55', 1);
INSERT INTO `contactdetailinfors` VALUES (109, 22, 'Email', 'keith80@example.net', 1, '1975-08-27 15:58:02', 1, '1975-09-03 01:22:09', 1);
INSERT INTO `contactdetailinfors` VALUES (110, 22, 'Email', 'medinashelby@example.net', 1, '1974-11-13 06:10:32', 1, '1986-01-17 08:16:36', 1);
INSERT INTO `contactdetailinfors` VALUES (111, 23, 'Email', 'slane@example.com', 1, '1970-09-10 15:41:41', 1, '1976-03-30 18:37:10', 1);
INSERT INTO `contactdetailinfors` VALUES (112, 23, 'Email', 'vargasedward@example.net', 1, '1990-06-30 02:16:27', 1, '1999-11-14 05:35:43', 1);
INSERT INTO `contactdetailinfors` VALUES (113, 23, 'Email', 'pflores@example.org', 1, '1998-06-26 08:17:27', 1, '1984-03-22 03:47:04', 1);
INSERT INTO `contactdetailinfors` VALUES (114, 23, 'Email', 'amy61@example.com', 1, '2022-06-06 08:45:27', 1, '2002-10-13 00:38:41', 1);
INSERT INTO `contactdetailinfors` VALUES (115, 23, 'Email', 'davidbarton@example.net', 1, '2008-01-01 21:50:20', 1, '1970-01-19 00:55:22', 1);
INSERT INTO `contactdetailinfors` VALUES (116, 24, 'Email', 'jacksoncarl@example.org', 1, '1996-03-13 06:56:21', 1, '2018-03-23 06:55:39', 1);
INSERT INTO `contactdetailinfors` VALUES (117, 24, 'Email', 'moorejoseph@example.com', 1, '1976-06-21 13:58:03', 1, '1983-08-10 19:47:36', 1);
INSERT INTO `contactdetailinfors` VALUES (118, 24, 'Email', 'kellyfernandez@example.net', 1, '1982-08-22 00:06:54', 1, '2008-01-14 16:34:04', 1);
INSERT INTO `contactdetailinfors` VALUES (119, 24, 'Email', 'hskinner@example.org', 1, '2020-04-10 23:46:10', 1, '2000-03-03 21:01:11', 1);
INSERT INTO `contactdetailinfors` VALUES (120, 24, 'Email', 'alan92@example.org', 1, '1988-03-13 09:16:04', 1, '1999-11-09 07:58:53', 1);
INSERT INTO `contactdetailinfors` VALUES (121, 25, 'Email', 'ounderwood@example.org', 1, '2012-09-06 03:46:37', 1, '2012-09-01 22:39:16', 1);
INSERT INTO `contactdetailinfors` VALUES (122, 25, 'Email', 'norrisbradley@example.com', 1, '2007-07-18 19:46:47', 1, '1979-05-01 05:46:02', 1);
INSERT INTO `contactdetailinfors` VALUES (123, 25, 'Email', 'rodney72@example.org', 1, '1992-02-06 23:43:26', 1, '2011-03-12 13:31:04', 1);
INSERT INTO `contactdetailinfors` VALUES (124, 25, 'Email', 'patricia69@example.org', 1, '1990-04-27 17:02:45', 1, '1980-12-18 17:45:55', 1);
INSERT INTO `contactdetailinfors` VALUES (125, 25, 'Email', 'cboyd@example.com', 1, '1977-07-06 05:16:54', 1, '1983-03-09 01:10:14', 1);
CREATE TABLE `userscontacts` (
  `id` INT NOT NULL  PRIMARY KEY,
  `contactDetailID` INT   ,
  `CMDId` INT   ,
  `UserId` INT   ,
  `CompanyId` INT   ,
  `MakeId` INT   ,
  `BranchId` INT   ,
  `isActive` INT   ,
  `flag` VARCHAR   ,
  `insertDate` VARCHAR   ,
  `insertUserID` INT   ,
  `updateDate` VARCHAR   ,
  `updateUserID` INT   
);
INSERT INTO `userscontacts` VALUES (1, 1, 1, 1, 1, 1, 1, 1, 'Primary', '2008-09-18 00:17:48', 1, '2003-04-02 23:40:04', 1);
INSERT INTO `userscontacts` VALUES (2, 1, 1, 1, 1, 1, 1, 1, 'Primary', '2012-08-24 07:20:25', 1, '2005-09-24 20:47:25', 1);
INSERT INTO `userscontacts` VALUES (3, 1, 1, 1, 1, 1, 1, 1, 'Primary', '1986-01-17 13:03:35', 1, '1989-02-21 13:25:15', 1);
INSERT INTO `userscontacts` VALUES (4, 1, 1, 1, 1, 1, 1, 1, 'Primary', '1989-08-13 12:47:56', 1, '2017-10-14 14:19:45', 1);
INSERT INTO `userscontacts` VALUES (5, 1, 1, 1, 1, 1, 1, 1, 'Primary', '2014-10-19 13:07:10', 1, '1983-03-18 18:19:45', 1);
INSERT INTO `userscontacts` VALUES (6, 1, 1, 2, 1, 1, 1, 1, 'Primary', '1991-03-21 11:32:04', 1, '2021-04-16 05:20:37', 1);
INSERT INTO `userscontacts` VALUES (7, 1, 1, 2, 1, 1, 1, 1, 'Primary', '2003-05-02 18:48:52', 1, '1985-07-16 16:10:45', 1);
INSERT INTO `userscontacts` VALUES (8, 1, 1, 2, 1, 1, 1, 1, 'Primary', '1992-02-03 04:27:58', 1, '1994-04-01 06:47:36', 1);
INSERT INTO `userscontacts` VALUES (9, 1, 1, 2, 1, 1, 1, 1, 'Primary', '2017-09-26 07:41:07', 1, '2013-03-25 08:55:42', 1);
INSERT INTO `userscontacts` VALUES (10, 1, 1, 2, 1, 1, 1, 1, 'Primary', '1970-06-14 03:42:36', 1, '2010-07-12 04:12:16', 1);
INSERT INTO `userscontacts` VALUES (11, 1, 1, 3, 1, 1, 1, 1, 'Primary', '2007-09-08 23:33:12', 1, '2023-01-19 15:06:21', 1);
INSERT INTO `userscontacts` VALUES (12, 1, 1, 3, 1, 1, 1, 1, 'Primary', '1972-03-26 16:40:50', 1, '2005-10-15 12:42:51', 1);
INSERT INTO `userscontacts` VALUES (13, 1, 1, 3, 1, 1, 1, 1, 'Primary', '2012-05-06 07:14:11', 1, '2017-06-14 04:30:41', 1);
INSERT INTO `userscontacts` VALUES (14, 1, 1, 3, 1, 1, 1, 1, 'Primary', '2016-08-24 20:16:39', 1, '1981-11-16 02:57:40', 1);
INSERT INTO `userscontacts` VALUES (15, 1, 1, 3, 1, 1, 1, 1, 'Primary', '1972-10-26 07:35:33', 1, '2014-04-22 17:00:32', 1);
INSERT INTO `userscontacts` VALUES (16, 1, 1, 4, 1, 1, 1, 1, 'Primary', '2011-11-18 00:31:40', 1, '2013-10-26 23:05:23', 1);
INSERT INTO `userscontacts` VALUES (17, 1, 1, 4, 1, 1, 1, 1, 'Primary', '2006-07-04 17:58:09', 1, '1979-03-11 10:55:30', 1);
INSERT INTO `userscontacts` VALUES (18, 1, 1, 4, 1, 1, 1, 1, 'Primary', '2009-02-18 22:55:26', 1, '2012-09-30 20:03:44', 1);
INSERT INTO `userscontacts` VALUES (19, 1, 1, 4, 1, 1, 1, 1, 'Primary', '1998-03-15 03:57:26', 1, '2016-11-04 16:28:53', 1);
INSERT INTO `userscontacts` VALUES (20, 1, 1, 4, 1, 1, 1, 1, 'Primary', '1984-12-06 06:04:48', 1, '2015-04-24 18:59:57', 1);
INSERT INTO `userscontacts` VALUES (21, 1, 1, 5, 1, 1, 1, 1, 'Primary', '1989-02-08 01:41:45', 1, '1979-02-20 00:31:17', 1);
INSERT INTO `userscontacts` VALUES (22, 1, 1, 5, 1, 1, 1, 1, 'Primary', '2011-10-11 06:56:30', 1, '1976-04-10 04:01:08', 1);
INSERT INTO `userscontacts` VALUES (23, 1, 1, 5, 1, 1, 1, 1, 'Primary', '1989-11-06 23:01:45', 1, '2006-02-18 07:37:09', 1);
INSERT INTO `userscontacts` VALUES (24, 1, 1, 5, 1, 1, 1, 1, 'Primary', '1984-09-06 21:06:27', 1, '2003-09-27 15:01:04', 1);
INSERT INTO `userscontacts` VALUES (25, 1, 1, 5, 1, 1, 1, 1, 'Primary', '1987-05-24 07:18:49', 1, '2020-10-22 14:57:11', 1);
