-- MySQL dump 10.11
--
-- Host: localhost    Database: email_blaster
-- ------------------------------------------------------
-- Server version	5.0.51a-3ubuntu5.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `asp_applications`
--

DROP TABLE IF EXISTS `asp_applications`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `asp_applications` (
  `application_id` varchar(100) NOT NULL,
  `application_data` blob,
  PRIMARY KEY  (`application_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `asp_applications`
--

LOCK TABLES `asp_applications` WRITE;
/*!40000 ALTER TABLE `asp_applications` DISABLE KEYS */;
INSERT INTO `asp_applications` VALUES ('DefaultApp','1234\0\0\0\n1\0\0\0__Server_Started18945\n1\0\0\0__Server_Started18546\n1\0\0\0__Server_Started18766\n1\0\0\0__Server_Started18758\n1\0\0\0__Server_Started18934\n1\0\0\0__Server_Started18549\n1\0\0\0__Server_Started19226\n1\0\0\0__Server_Started18545\n1\0\0\0__Application_Started\n1\0\0\0__Server_Started19222\n1\0\0\0__Server_Started18760\n1\0\0\0__Server_Started18941\n1\0\0\0__Server_Started18765\n1\0\0\0__Server_Started18938\n1\0\0\0__Server_Started19220\n1\0\0\0__Server_Started19216\n1\0\0\0__Server_Started19218\n1\0\0\0__Server_Started18761\n1\0\0\0__Server_Started18542\n1\0\0\0__Server_Started18541\n1\0\0\0__Server_Started18936');
/*!40000 ALTER TABLE `asp_applications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `asp_sessions`
--

DROP TABLE IF EXISTS `asp_sessions`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `asp_sessions` (
  `session_id` char(32) NOT NULL,
  `session_data` blob,
  `created_on` datetime default NULL,
  `modified_on` datetime default NULL,
  PRIMARY KEY  (`session_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `asp_sessions`
--

LOCK TABLES `asp_sessions` WRITE;
/*!40000 ALTER TABLE `asp_sessions` DISABLE KEYS */;
INSERT INTO `asp_sessions` VALUES ('02d9d373411094823a09cb57e101fa2e','1234\0\0\0\n 59bf8c3ad8307a866240dd2fb8725e71\0\0\0__signature\n1	\0\0\0__Started\n 02d9d373411094823a09cb57e101fa2e	\0\0\0SessionID','2008-11-26 22:38:55','2008-11-26 22:38:55'),('078702af315981ee0f49f15cf36ef0bd','1234\0\0\0\n 2450f186de1dbfc9cb85db709dbdf734\0\0\0__signature\n1	\0\0\0__Started\n 078702af315981ee0f49f15cf36ef0bd	\0\0\0SessionID','2008-11-26 22:52:05','2008-11-26 22:52:05'),('19eeb447b405edea6aa0ea1dbd9518f4','1234\0\0\0\n 4861c985660e9b0b3b003c22a2bb5828\0\0\0__signature\n1	\0\0\0__Started\n 19eeb447b405edea6aa0ea1dbd9518f4	\0\0\0SessionID','2008-11-26 22:36:45','2008-11-26 22:36:45'),('1d0a8a8ef6b6e03dd22c0b5d908170ca','1234\0\0\0\n 43ca15fb25440efb0d4c00b99e52eac4\0\0\0__signature\n1	\0\0\0__Started\n 1d0a8a8ef6b6e03dd22c0b5d908170ca	\0\0\0SessionID','2008-11-26 22:52:04','2008-11-26 22:52:04'),('23283dcb2cd1771434dff01fcf637c45','1234\0\0\0\n a5bbbf580d6134e2d846c11930d7972b\0\0\0__signature\n1	\0\0\0__Started\n 23283dcb2cd1771434dff01fcf637c45	\0\0\0SessionID','2008-11-26 22:38:55','2008-11-26 22:38:55'),('26f110b821e217850cc26a51d5efab6a','1234\0\0\0\n 51a6d26f5598718062b4d4e0c6b4b0e9\0\0\0__signature\n1	\0\0\0__Started\n 26f110b821e217850cc26a51d5efab6a	\0\0\0SessionID','2008-11-26 22:38:03','2008-11-26 22:38:03'),('289eaed7a3cbe1c21dceac0899724563','1234\0\0\0\n c1aa38284316e1849365837bfd716b44\0\0\0__signature\n1	\0\0\0__Started\n 289eaed7a3cbe1c21dceac0899724563	\0\0\0SessionID','2008-11-26 22:38:55','2008-11-26 22:38:55'),('3dc968d0645f43c566e4b269139a5b74','1234\0\0\0\n cb732e4cb17b43036b6dc7ae5ea774f0\0\0\0__signature\n1	\0\0\0__Started\n 3dc968d0645f43c566e4b269139a5b74	\0\0\0SessionID','2008-11-26 22:38:55','2008-11-26 22:38:55'),('413252c693d4a6a5fef276099ffb7304','1234\0\0\0\n 72e4184d8c8843d6dc0b8692f684ee25\0\0\0__signature\n1	\0\0\0__Started\n 413252c693d4a6a5fef276099ffb7304	\0\0\0SessionID','2008-11-26 22:52:04','2008-11-26 22:52:05'),('425077d1f39bf0fc7a6394571377e60c','1234\0\0\0\n 5bc678a6125b93903256c1f4abb1a383\0\0\0__signature\n1	\0\0\0__Started\n 425077d1f39bf0fc7a6394571377e60c	\0\0\0SessionID','2008-11-26 22:36:45','2008-11-26 22:36:45'),('5f161f932cfc67991610f2c6db63c7e0','1234\0\0\0\n 9d3370a6c6ddb741f8df33603b00596e\0\0\0__signature\n1	\0\0\0__Started\n 5f161f932cfc67991610f2c6db63c7e0	\0\0\0SessionID','2008-11-26 22:36:45','2008-11-26 22:36:45'),('6a5bf5465f5a76b2d4355faf9cda4d62','1234\0\0\0\n 9be204d2b2e30577d700f6a8a25ff4df\0\0\0__signature\n1	\0\0\0__Started\n 6a5bf5465f5a76b2d4355faf9cda4d62	\0\0\0SessionID','2008-11-26 22:38:03','2008-11-26 22:38:03'),('6e1a7071a4cdc6b6857b3d1fd005510e','1234\0\0\0\n 39227219c02f0ccaec5b5139e85d2e17\0\0\0__signature\n1	\0\0\0__Started\n 6e1a7071a4cdc6b6857b3d1fd005510e	\0\0\0SessionID','2008-11-26 22:36:45','2008-11-26 22:36:45'),('a24b6532942ba118e41f1e98778af635','1234\0\0\0\n 40eabd07c5b9e7350454340c250ecf2e\0\0\0__signature\n1	\0\0\0__Started\n a24b6532942ba118e41f1e98778af635	\0\0\0SessionID','2008-11-26 22:52:04','2008-11-26 22:52:04'),('a767e6c3e5545a4a17ea5368bd7e96c5','1234\0\0\0\n feab3dfa8fb7431084c85665154655db\0\0\0__signature\n1	\0\0\0__Started\n a767e6c3e5545a4a17ea5368bd7e96c5	\0\0\0SessionID','2008-11-26 22:38:03','2008-11-26 22:38:03'),('a80e8ebf307ac263168e01eb8721e529','1234\0\0\0\n b7c959b5a4089e0f6c2e2e15a6a98e86\0\0\0__signature\n1	\0\0\0__Started\n a80e8ebf307ac263168e01eb8721e529	\0\0\0SessionID','2008-11-26 22:38:03','2008-11-26 22:38:03'),('b7cd70fbdd6fb313926ba56302b6e679','1234\0\0\0\n b64eb1eba26d0432766cf361b86fe9e2\0\0\0__signature\n1	\0\0\0__Started\n b7cd70fbdd6fb313926ba56302b6e679	\0\0\0SessionID','2008-11-26 22:38:55','2008-11-26 22:38:55'),('d5f6e78e8b1f67c5e26004be0ac7d446','1234\0\0\0\n 4a3d00822da49ed589c42adaf2088dcf\0\0\0__signature\n1	\0\0\0__Started\n d5f6e78e8b1f67c5e26004be0ac7d446	\0\0\0SessionID','2008-11-26 22:52:04','2008-11-26 22:52:04'),('d6fae5e3f2ae79959b2b34bca45befc4','1234\0\0\0\n 70c0cc3dcb9a63b16b9f92cb0ecb95f1\0\0\0__signature\n1	\0\0\0__Started\n d6fae5e3f2ae79959b2b34bca45befc4	\0\0\0SessionID','2008-11-26 22:36:45','2008-11-26 22:36:45'),('dc1165c875d11d9f33f1f406ad13dec2','1234\0\0\0\n ac16f2ab4f48054972626ff490e83ce2\0\0\0__signature\n1	\0\0\0__Started\n dc1165c875d11d9f33f1f406ad13dec2	\0\0\0SessionID','2008-11-26 22:38:03','2008-11-26 22:38:03');
/*!40000 ALTER TABLE `asp_sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_lists`
--

DROP TABLE IF EXISTS `contact_lists`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `contact_lists` (
  `contact_list_id` int(11) NOT NULL auto_increment,
  `contact_list_name` varchar(50) NOT NULL,
  PRIMARY KEY  (`contact_list_id`)
) ENGINE=InnoDB AUTO_INCREMENT=98 DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `contact_lists`
--

LOCK TABLES `contact_lists` WRITE;
/*!40000 ALTER TABLE `contact_lists` DISABLE KEYS */;
INSERT INTO `contact_lists` VALUES (96,'ContactList1'),(97,'ContactList2');
/*!40000 ALTER TABLE `contact_lists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_subscriptions`
--

DROP TABLE IF EXISTS `contact_subscriptions`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `contact_subscriptions` (
  `contact_subscription_id` int(11) NOT NULL auto_increment,
  `contact_id` int(11) NOT NULL,
  `contact_list_id` int(11) NOT NULL,
  `created_on` datetime NOT NULL,
  PRIMARY KEY  (`contact_subscription_id`),
  KEY `FK_subscriptions_contacts` (`contact_id`),
  KEY `FK_subscriptions_lists` (`contact_list_id`),
  CONSTRAINT `FK_subscriptions_contacts` FOREIGN KEY (`contact_id`) REFERENCES `contacts` (`contact_id`) ON DELETE CASCADE,
  CONSTRAINT `FK_subscriptions_lists` FOREIGN KEY (`contact_list_id`) REFERENCES `contact_lists` (`contact_list_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=7205 DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `contact_subscriptions`
--

LOCK TABLES `contact_subscriptions` WRITE;
/*!40000 ALTER TABLE `contact_subscriptions` DISABLE KEYS */;
INSERT INTO `contact_subscriptions` VALUES (7055,4801,96,'0000-00-00 00:00:00'),(7056,4802,96,'0000-00-00 00:00:00'),(7057,4803,96,'0000-00-00 00:00:00'),(7058,4804,96,'0000-00-00 00:00:00'),(7059,4805,96,'0000-00-00 00:00:00'),(7060,4806,96,'0000-00-00 00:00:00'),(7061,4807,96,'0000-00-00 00:00:00'),(7062,4808,96,'0000-00-00 00:00:00'),(7063,4809,96,'0000-00-00 00:00:00'),(7064,4810,96,'0000-00-00 00:00:00'),(7065,4811,96,'0000-00-00 00:00:00'),(7066,4812,96,'0000-00-00 00:00:00'),(7067,4813,96,'0000-00-00 00:00:00'),(7068,4814,96,'0000-00-00 00:00:00'),(7069,4815,96,'0000-00-00 00:00:00'),(7070,4816,96,'0000-00-00 00:00:00'),(7071,4817,96,'0000-00-00 00:00:00'),(7072,4818,96,'0000-00-00 00:00:00'),(7073,4819,96,'0000-00-00 00:00:00'),(7074,4820,96,'0000-00-00 00:00:00'),(7075,4821,96,'0000-00-00 00:00:00'),(7076,4822,96,'0000-00-00 00:00:00'),(7077,4823,96,'0000-00-00 00:00:00'),(7078,4824,96,'0000-00-00 00:00:00'),(7079,4825,96,'0000-00-00 00:00:00'),(7080,4826,96,'0000-00-00 00:00:00'),(7081,4827,96,'0000-00-00 00:00:00'),(7082,4828,96,'0000-00-00 00:00:00'),(7083,4829,96,'0000-00-00 00:00:00'),(7084,4830,96,'0000-00-00 00:00:00'),(7085,4831,96,'0000-00-00 00:00:00'),(7086,4832,96,'0000-00-00 00:00:00'),(7087,4833,96,'0000-00-00 00:00:00'),(7088,4834,96,'0000-00-00 00:00:00'),(7089,4835,96,'0000-00-00 00:00:00'),(7090,4836,96,'0000-00-00 00:00:00'),(7091,4837,96,'0000-00-00 00:00:00'),(7092,4838,96,'0000-00-00 00:00:00'),(7093,4839,96,'0000-00-00 00:00:00'),(7094,4840,96,'0000-00-00 00:00:00'),(7095,4841,96,'0000-00-00 00:00:00'),(7096,4842,96,'0000-00-00 00:00:00'),(7097,4843,96,'0000-00-00 00:00:00'),(7098,4844,96,'0000-00-00 00:00:00'),(7099,4845,96,'0000-00-00 00:00:00'),(7100,4846,96,'0000-00-00 00:00:00'),(7101,4847,96,'0000-00-00 00:00:00'),(7102,4848,96,'0000-00-00 00:00:00'),(7103,4849,96,'0000-00-00 00:00:00'),(7104,4850,96,'0000-00-00 00:00:00'),(7105,4851,96,'0000-00-00 00:00:00'),(7106,4852,96,'0000-00-00 00:00:00'),(7107,4853,96,'0000-00-00 00:00:00'),(7108,4854,96,'0000-00-00 00:00:00'),(7109,4855,96,'0000-00-00 00:00:00'),(7110,4856,96,'0000-00-00 00:00:00'),(7111,4857,96,'0000-00-00 00:00:00'),(7112,4858,96,'0000-00-00 00:00:00'),(7113,4859,96,'0000-00-00 00:00:00'),(7114,4860,96,'0000-00-00 00:00:00'),(7115,4861,96,'0000-00-00 00:00:00'),(7116,4862,96,'0000-00-00 00:00:00'),(7117,4863,96,'0000-00-00 00:00:00'),(7118,4864,96,'0000-00-00 00:00:00'),(7119,4865,96,'0000-00-00 00:00:00'),(7120,4866,96,'0000-00-00 00:00:00'),(7121,4867,96,'0000-00-00 00:00:00'),(7122,4868,96,'0000-00-00 00:00:00'),(7123,4869,96,'0000-00-00 00:00:00'),(7124,4870,96,'0000-00-00 00:00:00'),(7125,4871,96,'0000-00-00 00:00:00'),(7126,4872,96,'0000-00-00 00:00:00'),(7127,4873,96,'0000-00-00 00:00:00'),(7128,4874,96,'0000-00-00 00:00:00'),(7129,4875,96,'0000-00-00 00:00:00'),(7130,4876,96,'0000-00-00 00:00:00'),(7131,4877,96,'0000-00-00 00:00:00'),(7132,4878,96,'0000-00-00 00:00:00'),(7133,4879,96,'0000-00-00 00:00:00'),(7134,4880,96,'0000-00-00 00:00:00'),(7135,4881,96,'0000-00-00 00:00:00'),(7136,4882,96,'0000-00-00 00:00:00'),(7137,4883,96,'0000-00-00 00:00:00'),(7138,4884,96,'0000-00-00 00:00:00'),(7139,4885,96,'0000-00-00 00:00:00'),(7140,4886,96,'0000-00-00 00:00:00'),(7141,4887,96,'0000-00-00 00:00:00'),(7142,4888,96,'0000-00-00 00:00:00'),(7143,4889,96,'0000-00-00 00:00:00'),(7144,4890,96,'0000-00-00 00:00:00'),(7145,4891,96,'0000-00-00 00:00:00'),(7146,4892,96,'0000-00-00 00:00:00'),(7147,4893,96,'0000-00-00 00:00:00'),(7148,4894,96,'0000-00-00 00:00:00'),(7149,4895,96,'0000-00-00 00:00:00'),(7150,4896,96,'0000-00-00 00:00:00'),(7151,4897,96,'0000-00-00 00:00:00'),(7152,4898,96,'0000-00-00 00:00:00'),(7153,4899,96,'0000-00-00 00:00:00'),(7154,4900,96,'0000-00-00 00:00:00'),(7155,4801,97,'0000-00-00 00:00:00'),(7156,4803,97,'0000-00-00 00:00:00'),(7157,4805,97,'0000-00-00 00:00:00'),(7158,4807,97,'0000-00-00 00:00:00'),(7159,4809,97,'0000-00-00 00:00:00'),(7160,4811,97,'0000-00-00 00:00:00'),(7161,4813,97,'0000-00-00 00:00:00'),(7162,4815,97,'0000-00-00 00:00:00'),(7163,4817,97,'0000-00-00 00:00:00'),(7164,4819,97,'0000-00-00 00:00:00'),(7165,4821,97,'0000-00-00 00:00:00'),(7166,4823,97,'0000-00-00 00:00:00'),(7167,4825,97,'0000-00-00 00:00:00'),(7168,4827,97,'0000-00-00 00:00:00'),(7169,4829,97,'0000-00-00 00:00:00'),(7170,4831,97,'0000-00-00 00:00:00'),(7171,4833,97,'0000-00-00 00:00:00'),(7172,4835,97,'0000-00-00 00:00:00'),(7173,4837,97,'0000-00-00 00:00:00'),(7174,4839,97,'0000-00-00 00:00:00'),(7175,4841,97,'0000-00-00 00:00:00'),(7176,4843,97,'0000-00-00 00:00:00'),(7177,4845,97,'0000-00-00 00:00:00'),(7178,4847,97,'0000-00-00 00:00:00'),(7179,4849,97,'0000-00-00 00:00:00'),(7180,4851,97,'0000-00-00 00:00:00'),(7181,4853,97,'0000-00-00 00:00:00'),(7182,4855,97,'0000-00-00 00:00:00'),(7183,4857,97,'0000-00-00 00:00:00'),(7184,4859,97,'0000-00-00 00:00:00'),(7185,4861,97,'0000-00-00 00:00:00'),(7186,4863,97,'0000-00-00 00:00:00'),(7187,4865,97,'0000-00-00 00:00:00'),(7188,4867,97,'0000-00-00 00:00:00'),(7189,4869,97,'0000-00-00 00:00:00'),(7190,4871,97,'0000-00-00 00:00:00'),(7191,4873,97,'0000-00-00 00:00:00'),(7192,4875,97,'0000-00-00 00:00:00'),(7193,4877,97,'0000-00-00 00:00:00'),(7194,4879,97,'0000-00-00 00:00:00'),(7195,4881,97,'0000-00-00 00:00:00'),(7196,4883,97,'0000-00-00 00:00:00'),(7197,4885,97,'0000-00-00 00:00:00'),(7198,4887,97,'0000-00-00 00:00:00'),(7199,4889,97,'0000-00-00 00:00:00'),(7200,4891,97,'0000-00-00 00:00:00'),(7201,4893,97,'0000-00-00 00:00:00'),(7202,4895,97,'0000-00-00 00:00:00'),(7203,4897,97,'0000-00-00 00:00:00'),(7204,4899,97,'0000-00-00 00:00:00');
/*!40000 ALTER TABLE `contact_subscriptions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contacts`
--

DROP TABLE IF EXISTS `contacts`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `contacts` (
  `contact_id` int(11) NOT NULL auto_increment,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `is_subscribed` int(11) NOT NULL,
  PRIMARY KEY  (`contact_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4901 DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `contacts`
--

LOCK TABLES `contacts` WRITE;
/*!40000 ALTER TABLE `contacts` DISABLE KEYS */;
INSERT INTO `contacts` VALUES (4801,'TestFirst1','TestLast1','email1@aol.com',0),(4802,'TestFirst2','TestLast2','email2@test.com',1),(4803,'TestFirst3','TestLast3','email3@aol.com',1),(4804,'TestFirst4','TestLast4','email4@test.com',1),(4805,'TestFirst5','TestLast5','email5@aol.com',1),(4806,'TestFirst6','TestLast6','email6@test.com',1),(4807,'TestFirst7','TestLast7','email7@aol.com',1),(4808,'TestFirst8','TestLast8','email8@test.com',1),(4809,'TestFirst9','TestLast9','email9@aol.com',1),(4810,'TestFirst10','TestLast10','email10@test.com',1),(4811,'TestFirst11','TestLast11','email11@aol.com',1),(4812,'TestFirst12','TestLast12','email12@test.com',1),(4813,'TestFirst13','TestLast13','email13@aol.com',1),(4814,'TestFirst14','TestLast14','email14@test.com',1),(4815,'TestFirst15','TestLast15','email15@aol.com',1),(4816,'TestFirst16','TestLast16','email16@test.com',1),(4817,'TestFirst17','TestLast17','email17@aol.com',1),(4818,'TestFirst18','TestLast18','email18@test.com',1),(4819,'TestFirst19','TestLast19','email19@aol.com',1),(4820,'TestFirst20','TestLast20','email20@test.com',1),(4821,'TestFirst21','TestLast21','email21@aol.com',1),(4822,'TestFirst22','TestLast22','email22@test.com',1),(4823,'TestFirst23','TestLast23','email23@aol.com',1),(4824,'TestFirst24','TestLast24','email24@test.com',1),(4825,'TestFirst25','TestLast25','email25@aol.com',1),(4826,'TestFirst26','TestLast26','email26@test.com',1),(4827,'TestFirst27','TestLast27','email27@aol.com',1),(4828,'TestFirst28','TestLast28','email28@test.com',1),(4829,'TestFirst29','TestLast29','email29@aol.com',1),(4830,'TestFirst30','TestLast30','email30@test.com',1),(4831,'TestFirst31','TestLast31','email31@aol.com',1),(4832,'TestFirst32','TestLast32','email32@test.com',1),(4833,'TestFirst33','TestLast33','email33@aol.com',1),(4834,'TestFirst34','TestLast34','email34@test.com',1),(4835,'TestFirst35','TestLast35','email35@aol.com',1),(4836,'TestFirst36','TestLast36','email36@test.com',1),(4837,'TestFirst37','TestLast37','email37@aol.com',1),(4838,'TestFirst38','TestLast38','email38@test.com',1),(4839,'TestFirst39','TestLast39','email39@aol.com',1),(4840,'TestFirst40','TestLast40','email40@test.com',1),(4841,'TestFirst41','TestLast41','email41@aol.com',1),(4842,'TestFirst42','TestLast42','email42@test.com',1),(4843,'TestFirst43','TestLast43','email43@aol.com',1),(4844,'TestFirst44','TestLast44','email44@test.com',1),(4845,'TestFirst45','TestLast45','email45@aol.com',1),(4846,'TestFirst46','TestLast46','email46@test.com',1),(4847,'TestFirst47','TestLast47','email47@aol.com',1),(4848,'TestFirst48','TestLast48','email48@test.com',1),(4849,'TestFirst49','TestLast49','email49@aol.com',1),(4850,'TestFirst50','TestLast50','email50@test.com',1),(4851,'TestFirst51','TestLast51','email51@aol.com',1),(4852,'TestFirst52','TestLast52','email52@test.com',1),(4853,'TestFirst53','TestLast53','email53@aol.com',1),(4854,'TestFirst54','TestLast54','email54@test.com',1),(4855,'TestFirst55','TestLast55','email55@aol.com',1),(4856,'TestFirst56','TestLast56','email56@test.com',1),(4857,'TestFirst57','TestLast57','email57@aol.com',1),(4858,'TestFirst58','TestLast58','email58@test.com',1),(4859,'TestFirst59','TestLast59','email59@aol.com',1),(4860,'TestFirst60','TestLast60','email60@test.com',1),(4861,'TestFirst61','TestLast61','email61@aol.com',1),(4862,'TestFirst62','TestLast62','email62@test.com',1),(4863,'TestFirst63','TestLast63','email63@aol.com',1),(4864,'TestFirst64','TestLast64','email64@test.com',1),(4865,'TestFirst65','TestLast65','email65@aol.com',1),(4866,'TestFirst66','TestLast66','email66@test.com',1),(4867,'TestFirst67','TestLast67','email67@aol.com',1),(4868,'TestFirst68','TestLast68','email68@test.com',1),(4869,'TestFirst69','TestLast69','email69@aol.com',1),(4870,'TestFirst70','TestLast70','email70@test.com',1),(4871,'TestFirst71','TestLast71','email71@aol.com',1),(4872,'TestFirst72','TestLast72','email72@test.com',1),(4873,'TestFirst73','TestLast73','email73@aol.com',1),(4874,'TestFirst74','TestLast74','email74@test.com',1),(4875,'TestFirst75','TestLast75','email75@aol.com',1),(4876,'TestFirst76','TestLast76','email76@test.com',1),(4877,'TestFirst77','TestLast77','email77@aol.com',1),(4878,'TestFirst78','TestLast78','email78@test.com',1),(4879,'TestFirst79','TestLast79','email79@aol.com',1),(4880,'TestFirst80','TestLast80','email80@test.com',1),(4881,'TestFirst81','TestLast81','email81@aol.com',1),(4882,'TestFirst82','TestLast82','email82@test.com',1),(4883,'TestFirst83','TestLast83','email83@aol.com',1),(4884,'TestFirst84','TestLast84','email84@test.com',1),(4885,'TestFirst85','TestLast85','email85@aol.com',1),(4886,'TestFirst86','TestLast86','email86@test.com',1),(4887,'TestFirst87','TestLast87','email87@aol.com',1),(4888,'TestFirst88','TestLast88','email88@test.com',1),(4889,'TestFirst89','TestLast89','email89@aol.com',1),(4890,'TestFirst90','TestLast90','email90@test.com',1),(4891,'TestFirst91','TestLast91','email91@aol.com',1),(4892,'TestFirst92','TestLast92','email92@test.com',1),(4893,'TestFirst93','TestLast93','email93@aol.com',1),(4894,'TestFirst94','TestLast94','email94@test.com',1),(4895,'TestFirst95','TestLast95','email95@aol.com',1),(4896,'TestFirst96','TestLast96','email96@test.com',1),(4897,'TestFirst97','TestLast97','email97@aol.com',1),(4898,'TestFirst98','TestLast98','email98@test.com',1),(4899,'TestFirst99','TestLast99','email99@aol.com',1),(4900,'TestFirst100','TestLast100','email100@test.com',1);
/*!40000 ALTER TABLE `contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `event_types`
--

DROP TABLE IF EXISTS `event_types`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `event_types` (
  `event_type_id` int(11) NOT NULL auto_increment,
  `event_type_name` varchar(100) NOT NULL,
  PRIMARY KEY  (`event_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `event_types`
--

LOCK TABLES `event_types` WRITE;
/*!40000 ALTER TABLE `event_types` DISABLE KEYS */;
INSERT INTO `event_types` VALUES (1,'server_shutdown'),(2,'server_startup'),(3,'bounce'),(4,'subscribe'),(5,'unsubscribe'),(6,'end_transmission'),(7,'init_transmission'),(8,'create_transmission');
/*!40000 ALTER TABLE `event_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `events`
--

DROP TABLE IF EXISTS `events`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `events` (
  `event_id` int(11) NOT NULL auto_increment,
  `event_type_id` int(11) NOT NULL,
  `transmission_id` int(11) NOT NULL,
  `sendlog_id` int(11) NOT NULL,
  `created_on` datetime NOT NULL,
  PRIMARY KEY  (`event_id`)
) ENGINE=InnoDB AUTO_INCREMENT=460 DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `events`
--

LOCK TABLES `events` WRITE;
/*!40000 ALTER TABLE `events` DISABLE KEYS */;
INSERT INTO `events` VALUES (1,2,0,0,'0000-00-00 00:00:00'),(3,2,0,0,'0000-00-00 00:00:00'),(5,2,0,0,'0000-00-00 00:00:00'),(7,1,0,0,'0000-00-00 00:00:00'),(8,1,0,0,'0000-00-00 00:00:00'),(9,2,0,0,'0000-00-00 00:00:00'),(11,1,0,0,'0000-00-00 00:00:00'),(13,2,0,0,'0000-00-00 00:00:00'),(15,1,0,0,'0000-00-00 00:00:00'),(16,1,0,0,'0000-00-00 00:00:00'),(17,2,0,0,'0000-00-00 00:00:00'),(19,1,0,0,'0000-00-00 00:00:00'),(20,1,0,0,'0000-00-00 00:00:00'),(21,2,0,0,'0000-00-00 00:00:00'),(23,1,0,0,'0000-00-00 00:00:00'),(24,1,0,0,'0000-00-00 00:00:00'),(25,2,0,0,'0000-00-00 00:00:00'),(27,2,0,0,'0000-00-00 00:00:00'),(29,1,0,0,'0000-00-00 00:00:00'),(30,1,0,0,'0000-00-00 00:00:00'),(31,2,0,0,'0000-00-00 00:00:00'),(33,1,0,0,'0000-00-00 00:00:00'),(34,1,0,0,'0000-00-00 00:00:00'),(35,2,0,0,'0000-00-00 00:00:00'),(37,1,0,0,'0000-00-00 00:00:00'),(38,2,0,0,'0000-00-00 00:00:00'),(40,1,0,0,'0000-00-00 00:00:00'),(41,2,0,0,'0000-00-00 00:00:00'),(43,1,0,0,'0000-00-00 00:00:00'),(44,2,0,0,'0000-00-00 00:00:00'),(46,1,0,0,'0000-00-00 00:00:00'),(47,2,0,0,'0000-00-00 00:00:00'),(49,1,0,0,'0000-00-00 00:00:00'),(50,2,0,0,'0000-00-00 00:00:00'),(51,1,0,0,'0000-00-00 00:00:00'),(52,2,0,0,'0000-00-00 00:00:00'),(54,1,0,0,'0000-00-00 00:00:00'),(55,2,0,0,'0000-00-00 00:00:00'),(57,1,0,0,'0000-00-00 00:00:00'),(58,2,0,0,'0000-00-00 00:00:00'),(60,1,0,0,'0000-00-00 00:00:00'),(61,2,0,0,'0000-00-00 00:00:00'),(63,1,0,0,'0000-00-00 00:00:00'),(64,2,0,0,'0000-00-00 00:00:00'),(66,1,0,0,'0000-00-00 00:00:00'),(67,2,0,0,'0000-00-00 00:00:00'),(69,1,0,0,'0000-00-00 00:00:00'),(70,2,0,0,'0000-00-00 00:00:00'),(72,1,0,0,'0000-00-00 00:00:00'),(73,2,0,0,'0000-00-00 00:00:00'),(75,1,0,0,'0000-00-00 00:00:00'),(76,2,0,0,'0000-00-00 00:00:00'),(78,2,0,0,'0000-00-00 00:00:00'),(80,2,0,0,'0000-00-00 00:00:00'),(82,1,0,0,'0000-00-00 00:00:00'),(83,2,0,0,'0000-00-00 00:00:00'),(85,1,0,0,'0000-00-00 00:00:00'),(86,2,0,0,'0000-00-00 00:00:00'),(88,1,0,0,'0000-00-00 00:00:00'),(89,2,0,0,'0000-00-00 00:00:00'),(91,1,0,0,'0000-00-00 00:00:00'),(92,2,0,0,'0000-00-00 00:00:00'),(94,1,0,0,'0000-00-00 00:00:00'),(95,1,0,0,'0000-00-00 00:00:00'),(96,1,0,0,'0000-00-00 00:00:00'),(97,1,0,0,'0000-00-00 00:00:00'),(98,1,0,0,'0000-00-00 00:00:00'),(99,1,0,0,'0000-00-00 00:00:00'),(100,2,0,0,'0000-00-00 00:00:00'),(102,1,0,0,'0000-00-00 00:00:00'),(103,2,0,0,'0000-00-00 00:00:00'),(104,1,0,0,'0000-00-00 00:00:00'),(105,2,0,0,'0000-00-00 00:00:00'),(107,1,0,0,'0000-00-00 00:00:00'),(108,2,0,0,'0000-00-00 00:00:00'),(110,1,0,0,'0000-00-00 00:00:00'),(111,2,0,0,'0000-00-00 00:00:00'),(113,1,0,0,'0000-00-00 00:00:00'),(114,2,0,0,'0000-00-00 00:00:00'),(116,1,0,0,'0000-00-00 00:00:00'),(117,2,0,0,'0000-00-00 00:00:00'),(119,1,0,0,'0000-00-00 00:00:00'),(120,2,0,0,'0000-00-00 00:00:00'),(122,1,0,0,'0000-00-00 00:00:00'),(123,2,0,0,'0000-00-00 00:00:00'),(125,1,0,0,'0000-00-00 00:00:00'),(126,2,0,0,'0000-00-00 00:00:00'),(128,1,0,0,'0000-00-00 00:00:00'),(129,2,0,0,'0000-00-00 00:00:00'),(131,1,0,0,'0000-00-00 00:00:00'),(132,2,0,0,'0000-00-00 00:00:00'),(134,1,0,0,'0000-00-00 00:00:00'),(135,2,0,0,'0000-00-00 00:00:00'),(136,1,0,0,'0000-00-00 00:00:00'),(137,2,0,0,'0000-00-00 00:00:00'),(139,1,0,0,'0000-00-00 00:00:00'),(140,2,0,0,'0000-00-00 00:00:00'),(141,2,0,0,'0000-00-00 00:00:00'),(143,2,0,0,'0000-00-00 00:00:00'),(145,1,0,0,'0000-00-00 00:00:00'),(146,1,0,0,'0000-00-00 00:00:00'),(148,1,0,0,'0000-00-00 00:00:00'),(149,1,0,0,'0000-00-00 00:00:00'),(150,1,0,0,'0000-00-00 00:00:00'),(151,1,0,0,'0000-00-00 00:00:00'),(152,2,0,0,'0000-00-00 00:00:00'),(153,2,0,0,'0000-00-00 00:00:00'),(154,2,0,0,'0000-00-00 00:00:00'),(155,2,0,0,'0000-00-00 00:00:00'),(156,2,0,0,'0000-00-00 00:00:00'),(157,1,0,0,'0000-00-00 00:00:00'),(158,1,0,0,'0000-00-00 00:00:00'),(159,2,0,0,'0000-00-00 00:00:00'),(161,1,0,0,'0000-00-00 00:00:00'),(162,1,0,0,'0000-00-00 00:00:00'),(163,1,0,0,'0000-00-00 00:00:00'),(164,1,0,0,'0000-00-00 00:00:00'),(165,1,0,0,'0000-00-00 00:00:00'),(166,1,0,0,'0000-00-00 00:00:00'),(167,1,0,0,'0000-00-00 00:00:00'),(168,2,0,0,'0000-00-00 00:00:00'),(169,1,0,0,'0000-00-00 00:00:00'),(170,1,0,0,'0000-00-00 00:00:00'),(171,2,0,0,'0000-00-00 00:00:00'),(172,1,0,0,'0000-00-00 00:00:00'),(173,1,0,0,'0000-00-00 00:00:00'),(174,2,0,0,'0000-00-00 00:00:00'),(175,1,0,0,'0000-00-00 00:00:00'),(176,2,0,0,'0000-00-00 00:00:00'),(177,1,0,0,'0000-00-00 00:00:00'),(178,2,0,0,'0000-00-00 00:00:00'),(179,1,0,0,'0000-00-00 00:00:00'),(180,2,0,0,'0000-00-00 00:00:00'),(181,1,0,0,'0000-00-00 00:00:00'),(182,2,0,0,'0000-00-00 00:00:00'),(183,1,0,0,'0000-00-00 00:00:00'),(184,2,0,0,'0000-00-00 00:00:00'),(185,1,0,0,'0000-00-00 00:00:00'),(186,2,0,0,'0000-00-00 00:00:00'),(187,1,0,0,'0000-00-00 00:00:00'),(188,2,0,0,'0000-00-00 00:00:00'),(189,1,0,0,'0000-00-00 00:00:00'),(190,1,0,0,'0000-00-00 00:00:00'),(191,2,0,0,'0000-00-00 00:00:00'),(192,1,0,0,'0000-00-00 00:00:00'),(193,1,0,0,'0000-00-00 00:00:00'),(194,2,0,0,'0000-00-00 00:00:00'),(195,1,0,0,'0000-00-00 00:00:00'),(196,1,0,0,'0000-00-00 00:00:00'),(197,2,0,0,'0000-00-00 00:00:00'),(198,1,0,0,'0000-00-00 00:00:00'),(199,1,0,0,'0000-00-00 00:00:00'),(200,2,0,0,'0000-00-00 00:00:00'),(201,1,0,0,'0000-00-00 00:00:00'),(202,1,0,0,'0000-00-00 00:00:00'),(203,2,0,0,'0000-00-00 00:00:00'),(204,1,0,0,'0000-00-00 00:00:00'),(205,2,0,0,'0000-00-00 00:00:00'),(207,1,0,0,'0000-00-00 00:00:00'),(208,1,0,0,'0000-00-00 00:00:00'),(209,1,0,0,'0000-00-00 00:00:00'),(210,1,0,0,'0000-00-00 00:00:00'),(211,1,0,0,'0000-00-00 00:00:00'),(212,1,0,0,'0000-00-00 00:00:00'),(213,1,0,0,'0000-00-00 00:00:00'),(214,2,0,0,'0000-00-00 00:00:00'),(215,1,0,0,'0000-00-00 00:00:00'),(216,2,0,0,'0000-00-00 00:00:00'),(217,1,0,0,'0000-00-00 00:00:00'),(218,1,0,0,'0000-00-00 00:00:00'),(219,2,0,0,'0000-00-00 00:00:00'),(220,1,0,0,'0000-00-00 00:00:00'),(221,1,0,0,'0000-00-00 00:00:00'),(222,2,0,0,'0000-00-00 00:00:00'),(224,1,0,0,'0000-00-00 00:00:00'),(225,1,0,0,'0000-00-00 00:00:00'),(226,1,0,0,'0000-00-00 00:00:00'),(227,1,0,0,'0000-00-00 00:00:00'),(228,1,0,0,'0000-00-00 00:00:00'),(229,1,0,0,'0000-00-00 00:00:00'),(230,1,0,0,'0000-00-00 00:00:00'),(231,2,0,0,'0000-00-00 00:00:00'),(232,1,0,0,'0000-00-00 00:00:00'),(233,2,0,0,'0000-00-00 00:00:00'),(234,1,0,0,'0000-00-00 00:00:00'),(235,1,0,0,'0000-00-00 00:00:00'),(236,2,0,0,'0000-00-00 00:00:00'),(237,1,0,0,'0000-00-00 00:00:00'),(238,1,0,0,'0000-00-00 00:00:00'),(239,2,0,0,'0000-00-00 00:00:00'),(240,1,0,0,'0000-00-00 00:00:00'),(241,2,0,0,'0000-00-00 00:00:00'),(242,1,0,0,'0000-00-00 00:00:00'),(243,1,0,0,'0000-00-00 00:00:00'),(244,2,0,0,'0000-00-00 00:00:00'),(245,1,0,0,'0000-00-00 00:00:00'),(246,1,0,0,'0000-00-00 00:00:00'),(247,2,0,0,'0000-00-00 00:00:00'),(248,1,0,0,'0000-00-00 00:00:00'),(249,1,0,0,'0000-00-00 00:00:00'),(250,2,0,0,'0000-00-00 00:00:00'),(251,1,0,0,'0000-00-00 00:00:00'),(252,1,0,0,'0000-00-00 00:00:00'),(253,2,0,0,'0000-00-00 00:00:00'),(254,1,0,0,'0000-00-00 00:00:00'),(255,1,0,0,'0000-00-00 00:00:00'),(256,2,0,0,'0000-00-00 00:00:00'),(257,1,0,0,'0000-00-00 00:00:00'),(258,1,0,0,'0000-00-00 00:00:00'),(259,2,0,0,'0000-00-00 00:00:00'),(260,1,0,0,'0000-00-00 00:00:00'),(261,1,0,0,'0000-00-00 00:00:00'),(262,2,0,0,'0000-00-00 00:00:00'),(263,1,0,0,'0000-00-00 00:00:00'),(264,1,0,0,'0000-00-00 00:00:00'),(265,2,0,0,'0000-00-00 00:00:00'),(266,1,0,0,'0000-00-00 00:00:00'),(267,1,0,0,'0000-00-00 00:00:00'),(268,2,0,0,'0000-00-00 00:00:00'),(269,1,0,0,'0000-00-00 00:00:00'),(270,1,0,0,'0000-00-00 00:00:00'),(271,2,0,0,'0000-00-00 00:00:00'),(272,1,0,0,'0000-00-00 00:00:00'),(273,1,0,0,'0000-00-00 00:00:00'),(274,2,0,0,'0000-00-00 00:00:00'),(276,2,0,0,'0000-00-00 00:00:00'),(278,1,0,0,'0000-00-00 00:00:00'),(279,1,0,0,'0000-00-00 00:00:00'),(280,2,0,0,'0000-00-00 00:00:00'),(282,1,0,0,'0000-00-00 00:00:00'),(283,2,0,0,'0000-00-00 00:00:00'),(285,1,0,0,'0000-00-00 00:00:00'),(286,2,0,0,'0000-00-00 00:00:00'),(287,1,0,0,'0000-00-00 00:00:00'),(288,1,0,0,'0000-00-00 00:00:00'),(289,2,0,0,'0000-00-00 00:00:00'),(291,1,0,0,'0000-00-00 00:00:00'),(292,2,0,0,'0000-00-00 00:00:00'),(293,2,0,0,'0000-00-00 00:00:00'),(295,1,0,0,'0000-00-00 00:00:00'),(296,2,0,0,'0000-00-00 00:00:00'),(297,2,0,0,'0000-00-00 00:00:00'),(299,1,0,0,'0000-00-00 00:00:00'),(300,1,0,0,'0000-00-00 00:00:00'),(301,2,0,0,'0000-00-00 00:00:00'),(302,1,0,0,'0000-00-00 00:00:00'),(303,2,0,0,'0000-00-00 00:00:00'),(305,2,0,0,'0000-00-00 00:00:00'),(307,1,0,0,'0000-00-00 00:00:00'),(308,2,0,0,'0000-00-00 00:00:00'),(310,1,0,0,'0000-00-00 00:00:00'),(311,2,0,0,'0000-00-00 00:00:00'),(313,1,0,0,'0000-00-00 00:00:00'),(314,2,0,0,'0000-00-00 00:00:00'),(315,1,0,0,'0000-00-00 00:00:00'),(316,1,0,0,'0000-00-00 00:00:00'),(317,2,0,0,'0000-00-00 00:00:00'),(319,1,0,0,'0000-00-00 00:00:00'),(320,2,0,0,'0000-00-00 00:00:00'),(322,1,0,0,'0000-00-00 00:00:00'),(323,2,0,0,'0000-00-00 00:00:00'),(325,1,0,0,'0000-00-00 00:00:00'),(326,2,0,0,'0000-00-00 00:00:00'),(327,1,0,0,'0000-00-00 00:00:00'),(328,1,0,0,'0000-00-00 00:00:00'),(329,2,0,0,'0000-00-00 00:00:00'),(330,1,0,0,'0000-00-00 00:00:00'),(331,2,0,0,'0000-00-00 00:00:00'),(332,1,0,0,'0000-00-00 00:00:00'),(333,2,0,0,'0000-00-00 00:00:00'),(334,1,0,0,'0000-00-00 00:00:00'),(335,1,0,0,'0000-00-00 00:00:00'),(336,2,0,0,'0000-00-00 00:00:00'),(337,1,0,0,'0000-00-00 00:00:00'),(338,2,0,0,'0000-00-00 00:00:00'),(339,1,0,0,'0000-00-00 00:00:00'),(340,1,0,0,'0000-00-00 00:00:00'),(341,2,0,0,'0000-00-00 00:00:00'),(342,1,0,0,'0000-00-00 00:00:00'),(343,2,0,0,'0000-00-00 00:00:00'),(344,1,0,0,'0000-00-00 00:00:00'),(345,1,0,0,'0000-00-00 00:00:00'),(346,2,0,0,'0000-00-00 00:00:00'),(348,2,0,0,'0000-00-00 00:00:00'),(350,1,0,0,'0000-00-00 00:00:00'),(351,2,0,0,'0000-00-00 00:00:00'),(352,2,0,0,'0000-00-00 00:00:00'),(353,1,0,0,'0000-00-00 00:00:00'),(354,1,0,0,'0000-00-00 00:00:00'),(355,2,0,0,'0000-00-00 00:00:00'),(356,1,0,0,'0000-00-00 00:00:00'),(357,1,0,0,'0000-00-00 00:00:00'),(358,2,0,0,'0000-00-00 00:00:00'),(360,1,0,0,'0000-00-00 00:00:00'),(361,1,0,0,'0000-00-00 00:00:00'),(362,2,0,0,'0000-00-00 00:00:00'),(364,2,0,0,'0000-00-00 00:00:00'),(366,2,0,0,'0000-00-00 00:00:00'),(367,1,0,0,'0000-00-00 00:00:00'),(368,1,0,0,'0000-00-00 00:00:00'),(369,2,0,0,'0000-00-00 00:00:00'),(370,1,0,0,'0000-00-00 00:00:00'),(371,1,0,0,'0000-00-00 00:00:00'),(372,2,0,0,'0000-00-00 00:00:00'),(374,1,0,0,'0000-00-00 00:00:00'),(375,2,0,0,'0000-00-00 00:00:00'),(377,1,0,0,'0000-00-00 00:00:00'),(378,2,0,0,'0000-00-00 00:00:00'),(380,1,0,0,'0000-00-00 00:00:00'),(381,2,0,0,'0000-00-00 00:00:00'),(383,1,0,0,'0000-00-00 00:00:00'),(384,2,0,0,'0000-00-00 00:00:00'),(385,1,0,0,'0000-00-00 00:00:00'),(386,1,0,0,'0000-00-00 00:00:00'),(387,2,0,0,'0000-00-00 00:00:00'),(388,1,0,0,'0000-00-00 00:00:00'),(389,1,0,0,'0000-00-00 00:00:00'),(390,2,0,0,'0000-00-00 00:00:00'),(391,7,40,0,'0000-00-00 00:00:00'),(392,1,0,0,'0000-00-00 00:00:00'),(393,1,0,0,'0000-00-00 00:00:00'),(394,2,0,0,'0000-00-00 00:00:00'),(395,7,40,0,'0000-00-00 00:00:00'),(396,2,0,0,'0000-00-00 00:00:00'),(397,7,40,0,'0000-00-00 00:00:00'),(398,2,0,0,'0000-00-00 00:00:00'),(399,7,40,0,'0000-00-00 00:00:00'),(400,2,0,0,'0000-00-00 00:00:00'),(402,1,0,0,'0000-00-00 00:00:00'),(403,2,0,0,'0000-00-00 00:00:00'),(405,1,0,0,'0000-00-00 00:00:00'),(406,1,0,0,'0000-00-00 00:00:00'),(407,1,0,0,'0000-00-00 00:00:00'),(408,2,0,0,'0000-00-00 00:00:00'),(410,2,0,0,'0000-00-00 00:00:00'),(412,1,0,0,'0000-00-00 00:00:00'),(413,2,0,0,'0000-00-00 00:00:00'),(414,1,0,0,'0000-00-00 00:00:00'),(415,1,0,0,'0000-00-00 00:00:00'),(416,2,0,0,'0000-00-00 00:00:00'),(417,1,0,0,'0000-00-00 00:00:00'),(418,2,0,0,'0000-00-00 00:00:00'),(420,1,0,0,'0000-00-00 00:00:00'),(421,1,0,0,'0000-00-00 00:00:00'),(422,1,0,0,'0000-00-00 00:00:00'),(423,1,0,0,'0000-00-00 00:00:00'),(424,1,0,0,'0000-00-00 00:00:00'),(425,1,0,0,'0000-00-00 00:00:00'),(426,1,0,0,'0000-00-00 00:00:00'),(427,2,0,0,'0000-00-00 00:00:00'),(429,1,0,0,'0000-00-00 00:00:00'),(430,1,0,0,'0000-00-00 00:00:00'),(431,1,0,0,'0000-00-00 00:00:00'),(432,1,0,0,'0000-00-00 00:00:00'),(433,1,0,0,'0000-00-00 00:00:00'),(434,1,0,0,'0000-00-00 00:00:00'),(435,1,0,0,'0000-00-00 00:00:00'),(436,2,0,0,'0000-00-00 00:00:00'),(438,1,0,0,'0000-00-00 00:00:00'),(439,2,0,0,'0000-00-00 00:00:00'),(440,1,0,0,'0000-00-00 00:00:00'),(441,1,0,0,'0000-00-00 00:00:00'),(442,2,0,0,'0000-00-00 00:00:00'),(443,1,0,0,'0000-00-00 00:00:00'),(444,2,0,0,'0000-00-00 00:00:00'),(446,1,0,0,'0000-00-00 00:00:00'),(447,2,0,0,'0000-00-00 00:00:00'),(448,1,0,0,'0000-00-00 00:00:00'),(449,2,0,0,'0000-00-00 00:00:00'),(451,1,0,0,'0000-00-00 00:00:00'),(452,2,0,0,'0000-00-00 00:00:00'),(454,1,0,0,'0000-00-00 00:00:00'),(455,2,0,0,'0000-00-00 00:00:00'),(456,1,0,0,'0000-00-00 00:00:00'),(457,2,0,0,'0000-00-00 00:00:00'),(458,7,4,0,'0000-00-00 00:00:00'),(459,1,0,0,'0000-00-00 00:00:00');
/*!40000 ALTER TABLE `events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recipients`
--

DROP TABLE IF EXISTS `recipients`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `recipients` (
  `recipient_id` int(11) NOT NULL auto_increment,
  `transmission_id` int(11) NOT NULL,
  `contact_list_id` int(11) NOT NULL,
  `contact_id` int(11) NOT NULL,
  PRIMARY KEY  (`recipient_id`),
  KEY `FK_recipients_transmissions` (`transmission_id`),
  CONSTRAINT `FK_recipients_transmissions` FOREIGN KEY (`transmission_id`) REFERENCES `transmissions` (`transmission_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `recipients`
--

LOCK TABLES `recipients` WRITE;
/*!40000 ALTER TABLE `recipients` DISABLE KEYS */;
/*!40000 ALTER TABLE `recipients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sendlogs`
--

DROP TABLE IF EXISTS `sendlogs`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `sendlogs` (
  `sendlog_id` int(11) NOT NULL auto_increment,
  `transmission_id` int(11) NOT NULL,
  `contact_id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `first_name` varchar(255) default NULL,
  `last_name` varchar(255) default NULL,
  `throttled_domain` varchar(255) NOT NULL,
  `assigned_to_host` varchar(255) NOT NULL,
  `is_sent` int(11) NOT NULL default '0',
  `sent_on` datetime NOT NULL,
  `is_successful` double NOT NULL default '-1',
  `queued_as` varchar(50) NOT NULL,
  PRIMARY KEY  (`sendlog_id`),
  KEY `FK_sendlogs_transmissions` (`transmission_id`),
  KEY `FK_sendlogs_contacts` (`contact_id`),
  CONSTRAINT `FK_sendlogs_contacts` FOREIGN KEY (`contact_id`) REFERENCES `contacts` (`contact_id`) ON DELETE CASCADE,
  CONSTRAINT `FK_sendlogs_transmissions` FOREIGN KEY (`transmission_id`) REFERENCES `transmissions` (`transmission_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4655 DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `sendlogs`
--

LOCK TABLES `sendlogs` WRITE;
/*!40000 ALTER TABLE `sendlogs` DISABLE KEYS */;
/*!40000 ALTER TABLE `sendlogs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transmissions`
--

DROP TABLE IF EXISTS `transmissions`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `transmissions` (
  `transmission_id` int(11) NOT NULL auto_increment,
  `subject` varchar(255) NOT NULL,
  `from_name` varchar(255) NOT NULL,
  `from_address` varchar(255) NOT NULL,
  `reply_to` varchar(255) NOT NULL,
  `content_type` varchar(100) NOT NULL,
  `content` longtext NOT NULL,
  `is_queued` int(11) NOT NULL,
  `queued_on` datetime NOT NULL,
  `is_started` int(11) NOT NULL,
  `started_on` datetime NOT NULL,
  `is_completed` int(11) NOT NULL,
  `completed_on` datetime NOT NULL,
  `blaster_key` char(32) default NULL,
  PRIMARY KEY  (`transmission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `transmissions`
--

LOCK TABLES `transmissions` WRITE;
/*!40000 ALTER TABLE `transmissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `transmissions` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2008-11-27  6:03:12
