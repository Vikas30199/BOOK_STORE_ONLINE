/*
SQLyog Community v13.2.0 (64 bit)
MySQL - 8.0.31 : Database - vikas
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`vikas` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `vikas`;

/*Table structure for table `ADD_BOOKS` */

DROP TABLE IF EXISTS `ADD_BOOKS`;

CREATE TABLE `ADD_BOOKS` (
  `BOOK_CODE` varchar(255) NOT NULL,
  `BOOK_TITLE_NAME` varchar(255) DEFAULT NULL,
  `AUTHOR` varchar(255) DEFAULT NULL,
  `GENRE` varchar(255) DEFAULT NULL,
  `EDITION` varchar(255) DEFAULT NULL,
  `TOTAL_PRICE` decimal(10,0) DEFAULT NULL,
  `ENTRY_NAME` varchar(255) DEFAULT NULL,
  `QUANTITY` decimal(10,0) DEFAULT NULL,
  PRIMARY KEY (`BOOK_CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `ADD_BOOKS` */

insert  into `ADD_BOOKS`(`BOOK_CODE`,`BOOK_TITLE_NAME`,`AUTHOR`,`GENRE`,`EDITION`,`TOTAL_PRICE`,`ENTRY_NAME`,`QUANTITY`) values 
('B001','The Catcher in the Rye','J.D. Salinger','Fiction','1st',255,'John Doe',50),
('B002','To Kill a Mockingbird','Harper Lee','Classics','2nd',3002,'Jane Smith',50),
('B003','1984','George Orwell','Science Fiction','Revised',2999,'David Johnson',50),
('B004','The Great Gatsby','F. Scott Fitzgerald','Classics','1st',1850,'Sarah Thompson',50),
('B005','Moby Dick','Herman Melville','Classics','2nd',24095,'Michael Brown',50),
('B006','The Hobbit','J.R.R. Tolkien','Fantasy','Revised',221,'Jennifer Garcia',50),
('B007','Pride and Prejudice','Jane Austen','Romance','3rd',221,'Emily Davis',50),
('B008','Harry Potter and the Philosopher\'s Stone','J.K. Rowling','Fantasy','1st',2905,'Daniel Wilson',50),
('B009','The Lord of the Rings','J.R.R. Tolkien','Fantasy','Revised',399,'Rachel Miller',50),
('B010','The Catcher in the Rye','J.D. Salinger','Fiction','1st',2599,'John Doe',50),
('B011','To Kill a Mockingbird','Harper Lee','Classics','2nd',1999,'Jane Smith',50),
('B012','1984','George Orwell','Science Fiction','Revised',2999,'David Johnson',50),
('B013','The Great Gatsby','F. Scott Fitzgerald','Classics','1st',1850,'Sarah Thompson',50),
('B014','Moby Dick','Herman Melville','Classics','2nd',2495,'Michael Brown',50),
('B015','The Hobbit','J.R.R. Tolkien','Fantasy','Revised',2299,'Jennifer Garcia',50),
('B016','Pride and Prejudice','Jane Austen','Romance','3rd',2250,'Emily Davis',50),
('B017','Harry Potter and the Philosopher\'s Stone','J.K. Rowling','Fantasy','1st',2995,'Daniel Wilson',50),
('B018','The Lord of the Rings','J.R.R. Tolkien','Fantasy','Revised',3999,'Rachel Miller',50),
('B019','The Catcher in the Rye','J.D. Salinger','Fiction','1st',2599,'John Doe',50),
('B020','To Kill a Mockingbird','Harper Lee','Classics','2nd',1999,'Jane Smith',50),
('B021','1984','George Orwell','Science Fiction','Revised',2999,'David Johnson',50),
('B022','The Great Gatsby','F. Scott Fitzgerald','Classics','1st',1850,'Sarah Thompson',50),
('B023','Moby Dick','Herman Melville','Classics','2nd',2495,'Michael Brown',50),
('B024','The Hobbit','J.R.R. Tolkien','Fantasy','Revised',2299,'Jennifer Garcia',50),
('B025','Pride and Prejudice','Jane Austen','Romance','3rd',2250,'Emily Davis',50),
('B026','Harry Potter and the Philosopher\'s Stone','J.K. Rowling','Fantasy','1st',2995,'Daniel Wilson',50),
('B027','The Lord of the Rings','J.R.R. Tolkien','Fantasy','Revised',3999,'Rachel Miller',50),
('B028','The Catcher in the Rye','J.D. Salinger','Fiction','1st',2599,'John Doe',50),
('B029','To Kill a Mockingbird','Harper Lee','Classics','2nd',1999,'Jane Smith',50),
('B030','1984','George Orwell','Science Fiction','Revised',2999,'David Johnson',50),
('B031','मनुष्यका साप','शरत चंद्र चट्टोपाध्याय','कहानी','1st',150,'राहुल शर्मा',50),
('B032','निर्मला','प्रेमचंद','कहानी','2nd',120,'सुमिता गुप्ता',50),
('B033','गबन','प्रेमचंद','कहानी','1st',130,'मोहन यादव',50),
('B034','मधुशाला','हरिवंश राय बच्चन','कविता','Revised',100,'कवि नामदेव',50),
('B035','गोदान','मुंशी प्रेमचंद','कहानी','1st',140,'अजय वर्मा',50),
('B036','राग दरबारी','श्रीलाल शुक्ल','कहानी','Revised',110,'दीपक मिश्र',50),
('B037','मानवीयकरण','रवींद्र नाथ टैगोर','कहानी','3rd',160,'सुशीला देवी',50),
('B038','परिन्दे','रवींद्र नाथ टैगोर','कहानी','1st',125,'रामेश्वर मिश्र',50),
('B039','कामायनी','जयशंकर प्रसाद','कविता','2nd',115,'विमला यादव',50),
('B040','निराश्रित लोग','मुंशी प्रेमचंद','कहानी','Revised',135,'सुशील कुमार',50),
('B041','मनसरोवर','मुंशी प्रेमचंद','कहानी','1st',145,'सरिता शर्मा',50),
('B042','श्रीमद्भगवदगीता','वेदव्यास','धार्मिक','Revised',95,'मोहन यादव',50),
('B043','सिद्धार्थ','हरिवंश राय बच्चन','काव्य','2nd',105,'शिवानी गुप्ता',50),
('B044','आधुनिक भारत का इतिहास','बिपिन चंद्र','इतिहास','Revised',180,'राजेश शर्मा',50),
('B045','माधविका','जैनेन्द्र कुमार','कहानी','1st',125,'आदित्य त्रिपाठी',50),
('B046','राजकुमारी','बंकिमचंद्र चट्टोपाध्याय','कहानी','3rd',155,'अभय मिश्र',55),
('B047','कर्मभूमि','प्रेमचंद','कहानी','1st',130,'सुमिता गुप्ता',55),
('B048','रश्मिरथी','रामधारी सिंह दिनकर','काव्य','Revised',110,'विनय कुमार',55),
('B049','मृत्युंजय','शिवाजी सावंत','काव्य','2nd',120,'सरिता शर्मा',55),
('B050','सत्यार्थ प्रकाश','स्वामी दयानंद सरस्वती','धार्मिक','Revised',90,'रामेश्वर मिश्र',55),
('B051','प्रेमा','चंद्रकांता','कहानी','1st',140,'प्रदीप यादव',55),
('B052','इंदुलेखा','चंद्रकांता','कहानी','3rd',160,'सुशीला देवी',55),
('B053','काव्यालय','रामधारी सिंह दिनकर','काव्य','1st',150,'महेश गुप्ता',55),
('B054','नागमणि','श्रीलाल शुक्ल','कहानी','Revised',125,'दीपक मिश्र',55),
('B055','वाल्मीकि रामायण','वाल्मीकि','काव्य','2nd',135,'अजय वर्मा',55),
('B056','पुस्तकलय','रामाधीर सिंह दिनकर','कहानी','1st',145,'राजेश शर्मा',55),
('B057','अलंकार','भारतेन्दु हरिश्चंद्र','काव्य','Revised',115,'विमला यादव',55),
('B058','यशोधरा','महादेवी वर्मा','कहानी','3rd',155,'अभय मिश्र',55),
('B059','हैरी पॉटर और राहस्यमयी तहखाना','जे.के. रोलिंग','फ़ैंटेसी','1st',180,'देविका शर्मा',55),
('B0590','PREMCHAND KI GATHA','VIKAS','vikas kumar','5TH',5000,'VIKRAM',51),
('B05901','PREMCHAND KI GATHA','VIKAS','Komal','6TH',5000,'VIKRAM',51),
('B060','पानी की कहानी','सुनील गंगोपाध्याय','कहानी','Revised',170,'मोहन यादव',55),
('B061','Introduction to Sociology','George Ritzer','Sociology','5th',480,'Rajesh Verma',50),
('B062','Fundamentals of Software Engineering','Rajib Mall','Software Engineering','4th',720,'Sakshi Gupta',50),
('B063','Principles of Economics','N. Gregory Mankiw','Economics','8th',650,'Deepak Sharma',50),
('B064','Essentials of Organizational Behavior','Stephen P. Robbins','Management','15th',690,'Ananya Singh',50),
('B065','Database Systems: Design, Implementation, and Management','Carlos Coronel','Database Systems','13th',680,'Amit Kumar',50),
('B066','Indian Constitution at Work','NCERT','Political Science','1st',220,'Meena Gupta',50),
('B067','Digital Electronics','R. P. Jain','Electronics','5th',540,'Kavita Verma',50),
('B068','Fundamentals of Financial Accounting','Fred Phillips','Accounting','6th',520,'Vikas Singh',50),
('B069','Operations Management','Jay Heizer','Operations Management','12th',710,'Sachin Verma',50),
('B070','Marketing Management','Philip Kotler','Marketing','15th',720,'Pooja Sharma',50),
('B071','Human Resource Management','Gary Dessler','Human Resource Management','15th',690,'Neha Kapoor',50),
('B072','Software Engineering: A Practitioner\'s Approach','Roger S. Pressman','Software Engineering','8th',760,'Alok Kumar',50),
('B073','Business Statistics','Norean D. Sharpe','Statistics','4th',540,'Anjali Sharma',50),
('B074','Introduction to Psychology','Clifford T. Morgan','Psychology','15th',580,'Rohit Verma',50),
('B075','Microeconomics','Paul Krugman','Microeconomics','5th',610,'Sneha Singh',50),
('B076','Macroeconomics','Gregory Mankiw','Macroeconomics','9th',670,'Vivek Verma',50),
('B077','Principles of Management','Harold Koontz','Management','12th',690,'Priya Singh',50),
('B078','Corporate Finance','Stephen A. Ross','Finance','12th',740,'Manish Kumar',50),
('B079','Principles of Microeconomics','N. Gregory Mankiw','Microeconomics','8th',650,'Aarti Verma',50),
('B080','International Business: Competing in the Global Marketplace','Charles W. L. Hill','International Business','12th',720,'Sanjay Sharma',50),
('B081','Business Law','Henry R. Cheeseman','Business Law','10th',590,'Preeti Verma',50),
('B082','Operations Research: An Introduction','Hamdy A. Taha','Operations Research','10th',680,'Rahul Singh',50),
('B083','Consumer Behavior','Michael R. Solomon','Marketing','12th',690,'Neha Gupta',50),
('B084','Financial Accounting','Walter T. Harrison Jr.','Accounting','12th',670,'Alok Verma',50),
('B085','Organizational Theory, Design, and Change','Gareth R. Jones','Organizational Behavior','8th',630,'Ritu Sharma',50),
('B086','Supply Chain Management','Sunil Chopra','Supply Chain Management','7th',720,'Amit Kumar',50),
('B087','Business Ethics: Concepts and Cases','Manuel G. Velasquez','Business Ethics','8th',640,'Ananya Verma',50),
('B088','Financial Management: Principles and Applications','Sheridan Titman','Finance','14th',710,'Vikas Gupta',50),
('B089','Strategic Management: Concepts and Cases','Fred R. David','Strategic Management','15th',730,'Pooja Singh',50),
('B090','Leadership: Theory and Practice','Peter G. Northouse','Leadership','9th',690,'Rohit Kumar',50);

/*Table structure for table `ADD_CART` */

DROP TABLE IF EXISTS `ADD_CART`;

CREATE TABLE `ADD_CART` (
  `BOOK_CODE` varchar(255) NOT NULL,
  `BOOK_TITLE_NAME` varchar(255) DEFAULT NULL,
  `AUTHOR` varchar(255) DEFAULT NULL,
  `GENRE` varchar(255) NOT NULL,
  `EDITION` varchar(255) DEFAULT NULL,
  `TOTAL_PRICE` varchar(255) DEFAULT NULL,
  `USERNAME` varchar(255) DEFAULT NULL,
  `DELIVERY_ADDRESS` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`BOOK_CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `ADD_CART` */

/*Table structure for table `ORDER_BOOK` */

DROP TABLE IF EXISTS `ORDER_BOOK`;

CREATE TABLE `ORDER_BOOK` (
  `BOOK_CODE` varchar(255) NOT NULL,
  `BOOK_TITLE_NAME` varchar(255) DEFAULT NULL,
  `AUTHOR` varchar(255) DEFAULT NULL,
  `GENRE` varchar(255) NOT NULL,
  `EDITION` varchar(255) DEFAULT NULL,
  `TOTAL_PRICE` varchar(255) DEFAULT NULL,
  `USERNAME` varchar(255) DEFAULT NULL,
  `DELIVERY_ADDRESS` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`BOOK_CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `ORDER_BOOK` */

insert  into `ORDER_BOOK`(`BOOK_CODE`,`BOOK_TITLE_NAME`,`AUTHOR`,`GENRE`,`EDITION`,`TOTAL_PRICE`,`USERNAME`,`DELIVERY_ADDRESS`) values 
('B059','हैरी पॉटर और राहस्यमयी तहखाना','जे.के. रोलिंग','फ़ैंटेसी','1st','180','VIKAS','UJJAIN');

/*Table structure for table `Register` */

DROP TABLE IF EXISTS `Register`;

CREATE TABLE `Register` (
  `username` varchar(255) NOT NULL,
  `Password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Confirm_Password` varchar(255) DEFAULT NULL,
  `Coustmer_Name` varchar(255) DEFAULT NULL,
  `Address` varchar(255) DEFAULT NULL,
  `City` varchar(255) DEFAULT NULL,
  `State` varchar(255) DEFAULT NULL,
  `Mobile` varchar(255) DEFAULT NULL,
  `Email` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `Register` */

insert  into `Register`(`username`,`Password`,`Confirm_Password`,`Coustmer_Name`,`Address`,`City`,`State`,`Mobile`,`Email`) values 
('','','','','','','','',''),
('Arpita77','A123@','A123@','Arpita Ranjan','Brahmpura','Muzaffarpur','Bihar','8521479632','arpita@gmail.com'),
('Komal99','A123@','A123@','Komal Kumari','Brahampua','muzaffarpur','Bihar','7412589632','komal@gmail.com'),
('Kumari77','A123@','A123@','Kumari RashmiRaj','Teara','Buxar','Bihar','1263547895','kumari@gmail.com'),
('Tannu88','A123@','A123@','Tannu Kumari','Brahmpura','Muzaffarpur','Bihar','7412589632','tannu@gmil.com'),
('Vaibhav88','A123@','A123@','Vaibhav Ranjan','Brahampura','muzaffarpur','bihar','258741369','vaibhav@gmail.com'),
('Vikas1','A123@',NULL,'Vikas Kumar','Shastri Nager','ujjain','M.P','9898988555','VIKAS@GMAIL.COM'),
('vikas123','vikas55','vikas55','vikas kumar','kuhu','huiuh','kuhui','8523697412','nghhv@gmail.com'),
('vikas1235','vikas55','vikas55','vikas kumar','kuhu','huiuh','kuhui','8523697412','nghhv@gmail.com'),
('vikas12356','vikas55','vikas55','vikas kumar','kuhu','huiuh','kuhui','85236974124','nghhv@gmail.com'),
('vikas1238','vikas554','vikas554','Komal','kuhu','huiuh','kuhui','8523697412','kk@gmail.com');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
