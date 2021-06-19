-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 19, 2021 at 10:46 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lms`
--

DELIMITER $$
--
-- Procedures
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `Addclass` (IN `class_name` VARCHAR(45), IN `teacher_id` INT, IN `section_name` VARCHAR(45))  begin
declare id int;
set id = (select max(Section_ID) from Section);
insert into ClassRoom(Class_Description) values (class_name);
insert into Section values (id+1,classid,teacher_id,section_name);
end$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `AddEmployee1` (IN `emp_fname` VARCHAR(30), IN `emp_lname` VARCHAR(30), IN `emp_email` VARCHAR(30), IN `emp_pass` VARCHAR(30), IN `emp_dob` DATE, IN `emp_telno` VARCHAR(20), `emp_mobno` VARCHAR(20), `emp_doj` DATE, `emp_status` VARCHAR(30), `emp_gender` VARCHAR(10), `emp_roleid` INT, `emp_salary` DECIMAL(10,0))  begin
insert into Employee(E_Fname,E_Lname,E_Email,E_Pass,E_DOB,E_TelNo,E_MobileNo,E_DOJ,E_Status,E_Gender,E_RoleID,E_Salary) values(emp_fname,emp_lname,emp_email,emp_pass,emp_dob,emp_telno,emp_mobno,emp_doj,emp_status,emp_gender,
emp_roleid,emp_salary);
End$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `AddExam` (IN `e_id` INT, IN `e_typeid` INT, IN `e_cid` INT, `e_starttime` DATETIME, IN `e_subid` INT)  begin
insert into Exam values(e_id,e_typeid,e_cid,e_starttime,e_subid);
end$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `AddFees` (IN `F_ID` INT, IN `F_stdid` INT, IN `F_PC` DECIMAL(10,0), IN `F_Issuedate` DATETIME, IN `F_duedate` DATETIME, IN `F_discount` DECIMAL(10,2), IN `F_DR` VARCHAR(70), IN `Feesstatus` VARCHAR(45), IN `Fees_amount` DECIMAL(10,0), IN `Fees_AC` DECIMAL(10,0), IN `paiddate` DATE)  begin
insert into AddFees values(F_ID,F_stdid,F_PC,F_Issuedate,F_duedate,F_discount,F_DR,Feesstatus,Fees_amount,Fees_AC,paiddate);
end$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `AddResult` (IN `R_Id` INT, `R_EType` INT, IN `R_total` DECIMAL(10,0), IN `R_Obtain` DECIMAL(10,0), IN `R_grade` VARCHAR(45), IN `R_Percent` DECIMAL(10,3), IN `R_Stdid` INT)  begin
insert into Result values (R_Id,R_EType,R_Total,R_Obtain,R_grade,R_Percent,R_Stdid);
end$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `AddStudent` (IN `std_id` INT, IN `std_Fname` VARCHAR(30), IN `std_Lname` VARCHAR(30), IN `std_Email` VARCHAR(30), IN `std_Pass` VARCHAR(30), IN `std_DOB` DATE, IN `std_telno` VARCHAR(20), IN `std_Mobno` VARCHAR(20), IN `std_DOA` DATE, IN `std_Status` VARCHAR(30), IN `std_gender` VARCHAR(10), IN `std_cid` INT, IN `std_secid` INT, IN `std_guardianid` INT)  begin
insert into Student values(std_id,std_Fname,std_Lname,std_Email,std_Pass,std_DOB,
std_DOB,std_telno,std_Mobno,std_DOA,std_Status,std_gender,std_cid,std_secid,std_guardianid);
End$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `AddSubject` (IN `subject_id` INT, IN `Subject_name` VARCHAR(50), IN `Subject_classid` INT, IN `subject_description` VARCHAR(60))  begin
insert into Subjects values(subject_id,Subject_name,Subject_classid,subject_description);
End$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `AddSubjectteaches` (IN `id` INT, IN `subteachby` INT, IN `subjectteach_cid` INT, IN `startdate` DATE, IN `S_enddate` DATE, IN `dropstatus` VARCHAR(45), IN `outcome` VARCHAR(70), IN `subject_id` INT)  begin
insert into SubjectTeaches values (id,subteachby,subjectteach_cid,startdate,S_enddate,dropstatus,outcome,subject_id);
end$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `AddTimetable` (IN `id` INT, `secid` INT, IN `Day` VARCHAR(10), IN `starttime` TIME, IN `description` VARCHAR(60), IN `subid` INT, IN `endtime` TIME)  begin
insert into TimeTable values(id,secid,Day,starttime,description,subid,endtime);
end$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `EditAttendance` (IN `sid` INT, IN `remarks` VARCHAR(20), IN `status` VARCHAR(20), IN `date` DATETIME)  begin
update Attendance set A_Remarks = remarks ,A_Status = status ,A_Date = date where A_StdID = sid; 
end$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `Editclass` (IN `classid` INT, IN `class_name` VARCHAR(45), IN `teacher_id` INT, IN `section_name` VARCHAR(45))  begin
declare id int;
set id = (select Section_ID from Section s where s.Section_ClassID = classid and s.Section_UnderObservation = teacher_id and s.Section_Name = section_name);
update ClassRoom set  Class_Description = class_name where Class_ID = classid;
update Section s set s.Section_ClassID = classid , s.Section_UnderObservation = teacher_id , s.Section_Name = section_name
where Section_ID = id;
end$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `EditEmployee` (IN `emp_id` INT, IN `emp_fname` VARCHAR(30), IN `emp_lname` VARCHAR(30), IN `emp_email` VARCHAR(30), IN `emp_pass` VARCHAR(30), IN `emp_dob` DATE, IN `emp_telno` VARCHAR(20), `emp_mobno` VARCHAR(20), `emp_doj` DATE, `emp_status` VARCHAR(30), `emp_gender` VARCHAR(10), `emp_roleid` INT, `emp_salary` DECIMAL(10,0))  begin
update Employee set E_Fname = emp_fname,E_Lname = emp_lname,E_Email = emp_email,E_Pass = emp_pass,E_DOB = emp_dob,
E_TelNo = emp_telno,E_MobileNo = emp_mobno,E_DOJ = emp_doj,E_Status = emp_status,E_Gender = emp_gender,
E_RoleID = emp_roleid, E_Salary = emp_salary where  E_ID=emp_id;
End$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `EditExam` (IN `e_id` INT, IN `e_typeid` INT, IN `e_cid` INT, `e_starttime` DATETIME, IN `e_subid` INT)  begin
update Exam set Exam_TypeID = e_typeid ,Exam_ClassID = e_cid,Exam_Start_DateTime = e_starttime, Exam_SubjectID = e_subid where Exam_ID = e_id;
end$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `EditFees` (IN `F_ID` INT, IN `F_stdid` INT, IN `F_PC` DECIMAL(10,0), IN `F_Issuedate` DATETIME, IN `F_duedate` DATETIME, IN `F_discount` DECIMAL(10,2), IN `F_DR` VARCHAR(70), IN `Feesstatus` VARCHAR(45), IN `Fees_amount` DECIMAL(10,0), IN `Fees_AC` DECIMAL(10,0), IN `paiddate` DATE)  begin
update AddFees Set Fees_StdID = F_stdid,Fees_PreviousCharges = F_PC,Fees_IssueDateTime = F_Issuedate,Fees_DueDateTime = F_duedate,Fees_Discount = F_discount,Fees_DiscountReason = F_DR,FeesStatus=Feesstatus,Fees_Amount = Fees_amount,Fees_AdditionalCharges = Fees_AC,Fees_PaidDate = paiddate where Fees_ID = F_ID;
end$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `EditGuardian` (IN `id` INT, IN `gr_fname` VARCHAR(30), IN `gr_lname` VARCHAR(30), IN `gr_email` VARCHAR(30), IN `gr_pass` VARCHAR(30), IN `gr_cnic` VARCHAR(20), IN `gr_telno` VARCHAR(20), IN `gr_mobno` VARCHAR(20), IN `gr_address` VARCHAR(100), IN `gr_relationship` VARCHAR(100))  begin
update Guardian set Gr_Fname = gr_fname,Gr_Lname = gr_lname, Gr_Email = gr_email,Gr_Pass = gr_pass,Gr_CNIC = gr_cnic,
Gr_TelNo = gr_telno,Gr_MobileNo = gr_mobno,Gr_Address = gr_address,Gr_Relationship = gr_relationship 
where Gr_Id = id;
end$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `EditResult` (IN `R_Id` INT, `R_EType` INT, IN `R_total` DECIMAL(10,0), IN `R_Obtain` DECIMAL(10,0), IN `R_grade` VARCHAR(45), IN `R_Percent` DECIMAL(10,3), IN `R_Stdid` INT)  begin
update Result set Result_ExamTypeID = R_EType,Result_TotalMarks = R_Total,Result_ObtainMarks = R_Obtain,Result_Grade = R_grade,Result_Percentage = R_Percent,Result_StdID = R_Stdid  where Result_ID = R_Id;
end$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `EditStudent` (IN `id` INT, IN `std_fname` VARCHAR(30), IN `std_lname` VARCHAR(30), IN `std_email` VARCHAR(30), IN `std_pass` VARCHAR(30), IN `std_dob` DATE, IN `std_telno` VARCHAR(20), IN `std_Mobno` VARCHAR(20), IN `std_doa` DATE, IN `std_status` VARCHAR(30), IN `std_gender` VARCHAR(10), IN `std_cid` INT, IN `std_secid` INT, IN `std_guardianid` INT)  begin
update Student set Std_Fname = std_fname,Std_Lname = std_lname, Std_Email = std_email,Std_Pass = std_pass,
Std_DOb = std_dob,Std_TelNo = std_telno, Std_MobileNo = std_Mobno,Std_DOA = std_doa, Std_Status = std_status,
Std_Gender = std_gender,Std_ClassID = std_cid, Std_SectionID = std_secid,Std_GuardianID = std_guardianid
where Std_Id = id;
End$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `EditSubject` (IN `subject_id` INT, IN `Subject_name` VARCHAR(50), IN `Subject_classid` INT, IN `subject_description` VARCHAR(60))  begin
update Subjects set Subject_Name = Subject_name ,Subject_ClassID = Subject_classid,Subject_Description = subject_description 
where Subject_ID = subject_id;
End$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `EditSubjectteaches` (IN `id` INT, IN `subteachby` INT, IN `subjectteach_cid` INT, IN `startdate` DATE, IN `S_enddate` DATE, IN `dropstatus` VARCHAR(45), IN `outcome` VARCHAR(70), IN `subject_id` INT)  begin
update SubjectTeaches set SubjectTeachesBy = subteachby, SubjectTeachesClassID = subjectteach_cid,SubjectTeachesStartDate = startdate,SubjectTeachesEndDate = S_enddate,SubjectTeachesDropStatus = dropstatus,SubjectTeachesOutCome = outcome,SubjectTeaches_SubjectID = subject_id where idSubjectTeaches =  id;
end$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `EditTimetable` (IN `id` INT, `secid` INT, IN `Day` VARCHAR(10), IN `starttime` TIME, IN `description` VARCHAR(60), IN `subid` INT, IN `endtime` TIME)  begin
update TimeTable set TT_SectionID = secid,TT_Day = Day,TT_StartTime = starttime,TT_Description = description,TT_SubjectID = subid ,TT_EndTime = endtime where  TT_ID = id ;
end$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `MarkAttendance` (IN `sid` INT, IN `remarks` VARCHAR(20), IN `status` VARCHAR(20), IN `date` DATETIME)  begin
insert into Attendance values (sid,remarks,status,date);
end$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `Admin_ID` int(11) NOT NULL,
  `Admin_Name` varchar(25) NOT NULL,
  `Admin_Email` varchar(30) NOT NULL,
  `Admin_Pass` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

CREATE TABLE `attendance` (
  `A_StdID` int(11) NOT NULL,
  `A_Remarks` varchar(20) DEFAULT 'Not Provided',
  `A_Status` varchar(20) NOT NULL,
  `A_Date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `attendance`
--

INSERT INTO `attendance` (`A_StdID`, `A_Remarks`, `A_Status`, `A_Date`) VALUES
(3, 'absent', 'Present', '2021-04-19 18:00:01');

-- --------------------------------------------------------

--
-- Table structure for table `classroom`
--

CREATE TABLE `classroom` (
  `Class_ID` int(11) NOT NULL,
  `Class_Description` varchar(200) DEFAULT 'NoDescription'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `classroom`
--

INSERT INTO `classroom` (`Class_ID`, `Class_Description`) VALUES
(1, '5'),
(2, '2'),
(3, '4'),
(4, '7'),
(5, '6');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `E_ID` int(11) NOT NULL,
  `E_Fname` varchar(30) CHARACTER SET utf8 NOT NULL,
  `E_Lname` varchar(30) CHARACTER SET utf8 NOT NULL,
  `E_Email` varchar(30) CHARACTER SET utf8 NOT NULL,
  `E_Pass` varchar(30) CHARACTER SET utf8 NOT NULL,
  `E_DOB` date NOT NULL,
  `E_TelNo` varchar(20) DEFAULT 'Not Provided',
  `E_MobileNo` varchar(20) NOT NULL,
  `E_DOJ` date NOT NULL,
  `E_Status` varchar(30) NOT NULL,
  `E_Gender` varchar(10) NOT NULL,
  `E_RoleID` int(11) NOT NULL,
  `E_Salary` decimal(10,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`E_ID`, `E_Fname`, `E_Lname`, `E_Email`, `E_Pass`, `E_DOB`, `E_TelNo`, `E_MobileNo`, `E_DOJ`, `E_Status`, `E_Gender`, `E_RoleID`, `E_Salary`) VALUES
(1, 'Muhammad Ahsan', 'Muhammad Nadeem', 'AHNKHAN@GMAIL.COM', 'Muneeb123@', '2021-04-22', '02150124513', '03343831941', '2021-04-19', 'Working', 'Male', 2, '20000'),
(2, 'Ahsan', 'Nadeem', 'ahnkhn804@gmail.com', 'Muneeb123@', '2000-01-01', '02150124511', '03452641780', '2021-01-13', 'Leave', 'Male', 1, '30000'),
(3, 'Ahsan', 'Nadeem', 'ahnkhn01@gmail.com', '123', '2000-01-01', '02150124511', '03452641789', '2021-01-13', 'Leave', 'Male', 1, '30000'),
(4, 'Majeed', 'Mehmood', 'majeedmehmood14@gmail.com', 'Majeed77@.', '2000-01-01', '02150124511', '03452641781', '2021-01-13', 'Working', 'Male', 1, '35000'),
(5, 'Muhammad', 'Waseem', 'ahnkha1n@gmail.com', 'Muneeb123@', '2021-04-23', '', '03343831732', '2021-04-23', 'Working', 'Male', 2, '20000'),
(6, 'Kamal', 'Khan', 'kamalkhn804@gmail.com', 'Kamal123@', '2011-04-08', '', '03343831111', '2013-04-03', 'Working', 'Male', 2, '25000'),
(7, 'Muhammad', 'Maheed', 'mahee804@gmail.com', 'Muneeb123@', '1994-05-10', '', '03343831120', '2020-01-21', 'Working', 'Male', 2, '47000'),
(8, 'Atif', 'Malik', 'ahnkhan576@gmail.com', 'Atif12@.', '1992-04-16', '', '03343831790', '2020-04-23', 'Working', 'Male', 2, '50000');

--
-- Triggers `employee`
--
DELIMITER $$
CREATE TRIGGER `employee` AFTER UPDATE ON `employee` FOR EACH ROW begin
insert into eventonEmployee values(old.E_ID,old.E_Fname,old.E_Lname,old.E_Email,old.E_Pass,old.E_DOB,old.E_TelNo,old.E_MobileNo,old.E_DOJ,old.E_Status,old.E_Gender,old.E_RoleID,old.E_Salary,"Update",curtime());
end
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `eventonemployee`
--

CREATE TABLE `eventonemployee` (
  `E_ID` int(11) DEFAULT NULL,
  `E_Fname` varchar(30) DEFAULT NULL,
  `E_Lname` varchar(30) DEFAULT NULL,
  `E_Email` varchar(30) DEFAULT NULL,
  `E_Pass` varchar(30) DEFAULT NULL,
  `E_DOB` date DEFAULT NULL,
  `E_TelNo` varchar(20) DEFAULT NULL,
  `E_MobileNo` varchar(20) DEFAULT NULL,
  `E_DOJ` date DEFAULT NULL,
  `E_Status` varchar(30) DEFAULT NULL,
  `E_Gender` varchar(10) DEFAULT NULL,
  `E_RoleID` int(11) DEFAULT NULL,
  `E_Salary` decimal(10,0) DEFAULT NULL,
  `operation_perform` varchar(45) CHARACTER SET utf8 DEFAULT NULL,
  `change_time` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `eventonemployee`
--

INSERT INTO `eventonemployee` (`E_ID`, `E_Fname`, `E_Lname`, `E_Email`, `E_Pass`, `E_DOB`, `E_TelNo`, `E_MobileNo`, `E_DOJ`, `E_Status`, `E_Gender`, `E_RoleID`, `E_Salary`, `operation_perform`, `change_time`) VALUES
(4, 'Ahsan', 'Nadeem', 'ahnkhn@gmail.com', '123', '2000-01-01', '02150124511', '03452641781', '2021-01-13', 'Working', 'Male', 1, '25000', 'Update', '06:51:15'),
(1, 'MUNEEB', 'KHAN', 'muneeb@gmail.com', 'muneeb', '1990-03-25', 'Not Provided', '03212550123', '2021-01-12', 'Working', 'Male', 1, '20000', 'Update', '17:19:46'),
(2, 'Ahsan', 'Nadeem', 'ahnkhn54@gmail.com', 'Muneeb123@', '2000-01-01', '02150124511', '03452641780', '2021-01-13', 'Leave', 'Male', 1, '30000', 'Update', '18:32:24'),
(1, 'Ahsan Nad', 'KHAAN', 'AHNKHAN@GMAIL.COM', 'Muneeb123@', '2021-04-22', '02150124513', '03343831941', '2021-04-19', 'live', 'Male', 1, '20000', 'Update', '19:10:25'),
(1, 'Ahsan Nadeem', 'KHAN', 'AHNKHAN@GMAIL.COM', 'Muneeb123@', '2021-04-22', '02150124513', '03343831941', '2021-04-19', 'live', 'Male', 1, '20000', 'Update', '01:47:53'),
(1, 'Ahsan Nadeem', 'KHAN', 'AHNKHAN@GMAIL.COM', 'Muneeb123@', '2021-04-22', '02150124513', '03343831941', '2021-04-19', 'ALIVE', 'Male', 1, '20000', 'Update', '01:51:12'),
(1, 'Ahsan Nadeem', 'KHAN', 'AHNKHAN@GMAIL.COM', 'Muneeb123@', '2021-04-22', '02150124513', '03343831941', '2021-04-19', 'LEAVE', 'Male', 1, '20000', 'Update', '01:54:22'),
(1, 'Ahsan Nadeem', 'KHAN', 'AHNKHAN@GMAIL.COM', 'Muneeb123@', '2021-04-22', '02150124513', '03343831941', '2021-04-19', 'LEAVE', 'Male', 1, '200000', 'Update', '01:56:07'),
(1, 'Ahsan Nadeem', 'KHAN', 'AHNKHAN@GMAIL.COM', 'Muneeb123@', '2021-04-22', '02150124513', '03343831941', '2021-04-19', 'LEAVE', 'Male', 1, '20000', 'Update', '01:57:27'),
(1, 'Ahsan ', 'KHAN', 'AHNKHAN@GMAIL.COM', 'Muneeb123@', '2021-04-22', '02150124513', '03343831941', '2021-04-19', 'LEAVE', 'Male', 1, '20000', 'Update', '01:58:07'),
(1, 'Ahsan ', 'Nadeem', 'AHNKHAN@GMAIL.COM', 'Muneeb123@', '2021-04-22', '02150124513', '03343831941', '2021-04-19', 'LEAVE', 'Male', 1, '20000', 'Update', '01:59:28'),
(1, 'Ahsan ', 'Nadeem', 'AHNKHAN@GMAIL.COM', 'Muneeb123@', '2021-04-22', '02150124513', '03343831941', '2021-04-19', 'LEAVE', 'Male', 1, '200000', 'Update', '02:19:06'),
(1, 'Ahsan ', 'Nadeem', 'AHNKHAN@GMAIL.COM', 'Muneeb123@', '2021-04-22', '02150124513', '03343831941', '2021-04-19', 'LEAVE', 'Male', 1, '20000', 'Update', '02:23:51'),
(1, 'Ahsan ', 'Nadeem', 'AHNKHAN@GMAIL.COM', 'Muneeb123@', '2021-04-22', '02150124513', '03343831941', '2021-04-19', 'Working', 'Male', 1, '20000', 'Update', '02:25:11'),
(1, 'Ahsan ', 'Nadeem', 'AHNKHAN@GMAIL.COM', 'Muneeb123@', '2021-04-22', '02150124513', '03343831941', '2021-04-19', 'Working', 'Male', 1, '200000', 'Update', '02:30:12'),
(2, 'Muhammad Ahsan', 'Nadeem', 'ahnkhn54@gmail.com', 'Muneeb123@', '2000-01-01', '02150124511', '03452641780', '2021-01-13', 'Leave', 'Male', 1, '30000', 'Update', '02:37:30'),
(2, 'Ahsan', 'Nadeem', 'ahnkhn80@gmail.com', 'Muneeb123@', '2000-01-01', '02150124511', '03452641780', '2021-01-13', 'Leave', 'Male', 1, '30000', 'Update', '03:37:30'),
(4, 'Majeed', 'Mehmood', 'ahnkhn@gmail.com', '123', '2000-01-01', '02150124511', '03452641781', '2021-01-13', 'Working', 'Male', 1, '25000', 'Update', '03:44:03'),
(6, 'Kamal', 'Khan', 'kamalkhn801@gmail.com', 'Kamal123@', '2001-04-12', '', '03343831111', '2019-04-11', 'Working', 'Male', 2, '25000', 'Update', '14:46:32'),
(6, 'Kamal', 'Khan', 'kamalkhn801@gmail.com', 'Kamal123@', '2001-04-12', '', '03343831111', '2019-04-11', 'Working', 'Male', 2, '35000', 'Update', '14:57:50'),
(1, 'Ahsan ', 'Nadeem', 'AHNKHAN@GMAIL.COM', 'Muneeb123@', '2021-04-22', '02150124513', '03343831941', '2021-04-19', 'Working', 'Male', 1, '20000', 'Update', '15:14:46'),
(1, 'Muhammad Ahsan', 'Muhammad Nadeem', 'AHNKHAN@GMAIL.COM', 'Muneeb123@', '2021-04-22', '02150124513', '03343831941', '2021-04-19', 'Working', 'Male', 2, '20000', 'Update', '15:15:13'),
(6, 'Kamal', 'Khan', 'kamalkhn804@gmail.com', 'Kamal123@', '2001-04-12', '', '03343831111', '2019-04-11', 'Working', 'Male', 2, '45000', 'Update', '15:34:42'),
(6, 'Kamal', 'Khan', 'kamalkhn804@gmail.com', 'Kamal123@', '2011-04-06', '', '03343831111', '2021-04-27', 'Working', 'Male', 2, '35000', 'Update', '15:36:15'),
(7, 'Muhammad', 'Maheed', 'mahee804@gmail.com', 'Muneeb123@', '1994-04-02', '', '03343831121', '2021-04-23', 'Working', 'Male', 2, '45000', 'Update', '04:02:06'),
(8, 'Atif', 'Malik', 'ahnkhan576@gmail.com', 'Atif12@.', '1992-04-16', '', '03343831790', '2020-04-23', 'Working', 'Male', 2, '40000', 'Update', '04:19:48');

-- --------------------------------------------------------

--
-- Table structure for table `eventonguardian`
--

CREATE TABLE `eventonguardian` (
  `Gr_ID` int(11) DEFAULT NULL,
  `Gr_Fname` varchar(30) DEFAULT NULL,
  `Gr_Lname` varchar(30) DEFAULT NULL,
  `Gr_Email` varchar(30) DEFAULT NULL,
  `Gr_Pass` varchar(30) DEFAULT NULL,
  `Gr_CNIC` varchar(20) DEFAULT NULL,
  `Gr_TelNo` varchar(20) DEFAULT NULL,
  `Gr_MobileNo` varchar(20) DEFAULT NULL,
  `Gr_Address` varchar(100) DEFAULT NULL,
  `Gr_Relationship` varchar(100) DEFAULT NULL,
  `operation_perform` varchar(45) CHARACTER SET utf8 DEFAULT NULL,
  `change_time` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `eventonguardian`
--

INSERT INTO `eventonguardian` (`Gr_ID`, `Gr_Fname`, `Gr_Lname`, `Gr_Email`, `Gr_Pass`, `Gr_CNIC`, `Gr_TelNo`, `Gr_MobileNo`, `Gr_Address`, `Gr_Relationship`, `operation_perform`, `change_time`) VALUES
(12, 'MK', 'AK', 'akhter@gmail.com', 'akhter123', '12345678910', '02154678941', '032124569871', 'DHA-PHASE 6', 'Father', 'Update', '07:00:14'),
(12, 'Ahsan', 'Naddem', 'akhter@gmail.com', 'akhter123', '12345678910', '02154678941', '032124569871', 'DHA-PHASE 6', 'Father', 'Update', '15:24:06'),
(12, 'Ahsan', 'Naddem', 'akhter@gmail.com', 'akhter123', '12345678910', '02154678941', '032124569871', 'DHA-PHASE 6', 'Father', 'Update', '15:29:10'),
(12, 'Ahsan', 'Naddem', 'akhter@gmail.com', 'akhter123', '12345678910', '02154678941', '032124569871', 'DHA-PHASE 6', 'Father', 'Update', '15:32:20'),
(12, 'Ahsan', 'Naddem', 'akhter@gmail.com', 'akhter123', '12345678910', '02154678941', '032124569871', 'DHA-PHASE 6', 'Father', 'Update', '15:35:08'),
(12, 'Ahsan', 'Naddem', 'akhter@gmail.com', 'akhter123', '12345678910', '02154678941', '032124569871', 'DHA-PHASE 6', 'Father', 'Update', '15:49:08'),
(12, 'Ahsan', 'Naddem', 'akhter@gmail.com', 'akhter123', '12345678910', '02154678941', '032124569871', 'DHA-PHASE 6', 'Father', 'Update', '15:49:43'),
(12, 'Ahsan', 'Naddem', 'akhter@gmail.com', 'akhter123', '12345678910', '02154678941', '032124569871', 'DHA-PHASE 6', 'Father', 'Update', '15:52:41'),
(12, 'Ahsan', 'Naddem', 'akhter@gmail.com', 'akhter123', '12345678910', '02154678941', '032124569871', 'DHA-PHASE 6', 'Father', 'Update', '15:55:04'),
(12, 'MK', 'AK', 'akhter@gmail.com', 'akhter123', '12345678910', '02154678941', '032124569871', 'DHA-PHASE 6', 'Father', 'Update', '15:56:26'),
(12, 'MK', 'AK', 'akhter@gmail.com', 'akhter123', '12345678910', '02154678941', '032124569871', 'DHA-PHASE 6', 'Father', 'Update', '15:57:27'),
(12, 'MK', 'AK', 'akhter@gmail.com', 'akhter123', '12345678910', '02154678941', '032124569871', 'DHA-PHASE 6', 'Father', 'Update', '16:11:07'),
(12, 'MK', 'AK', 'akhter@gmail.com', 'akhter123', '12345678910', '02154678941', '032124569871', 'DHA-PHASE 6', 'Father', 'Update', '16:32:42'),
(12, 'MK', 'AK', 'akhter@gmail.com', 'akhter123', '12345678910', '02154678941', '032124569871', 'DHA-PHASE 6', 'Father', 'Update', '19:07:52'),
(12, 'MUNEEB', 'KHAN', 'akhter@gmail.com', 'akhter123', '12345678910', '02154678941', '03212456987', 'DHA-PHASE 6', 'Father', 'Update', '19:09:36'),
(12, 'MUNEEB', 'KHAN', 'akhter@gmail.com', 'akhter123', '12345678910', '0215467894', '03212456987', 'DHA-PHASE 6', 'Father', 'Update', '19:10:05'),
(12, 'MUNEEB', 'KHAN', 'akhter@gmail.com', 'akhter123', '12345678910', '02154678945', '03212456987', 'DHA-PHASE 6', 'Father', 'Update', '02:31:50'),
(12, 'MUNEEB', 'KHAN', 'akhter@gmail.com', 'akhter123', '12345678910', '02154678945', '03212456981', 'DHA-PHASE 6', 'Father', 'Update', '02:32:35'),
(12, 'MUNEEB', 'KHAN', 'akhter@gmail.com', 'akhter123', '12345678911', '02154678945', '03212456981', 'DHA-PHASE 6', 'Father', 'Update', '03:38:13'),
(26, 'RAMEEZ', 'AKBAR', 'RAMEEZ84@GMAIL.COM', 'Ahsan2001@.', '42000-3142372999', '', '03212456999', 'Nazimabad,Karachi', 'Father', 'Update', '14:28:01'),
(12, 'MUNEEB', 'KHAN', 'akhter494@gmail.com', 'akhter123@', '12345678911', '02154678945', '03212456981', 'DHA-PHASE 6', 'Father', 'Update', '15:00:20'),
(12, 'MUHAMMAD MUNEEB', 'KHAN', 'akhter494@gmail.com', 'akhter123@', '12345678911', '02154678945', '03212456981', 'DHA-PHASE 6', 'Father', 'Update', '15:11:30'),
(12, 'MUHAMMAD MUNEEB', 'MUHAMMAD MUNEER', 'akhter494@gmail.com', 'akhter123@', '12345678911', '02154678945', '03212456981', 'DHA-PHASE 6', 'Father', 'Update', '15:59:42'),
(12, 'MUHAMMAD MUNEEB', 'MUHAMMAD MUNEER', 'akhter494@gmail.com', 'akhter123@', '42101-4598796-1', '02154678945', '03212456981', 'DHA PHASE 6', 'Father', 'Update', '16:02:09'),
(28, 'OSAMA', 'UMER', 'OSAMEUMER84@GMAIL.COM', 'OsaME12@.', '42000-31423713-0', '', '03212456102', 'Gulberg 02, Karachi', 'Father', 'Update', '04:20:46');

-- --------------------------------------------------------

--
-- Table structure for table `eventonresult`
--

CREATE TABLE `eventonresult` (
  `R_id` int(11) DEFAULT NULL,
  `R_ExamType_ID` int(11) DEFAULT NULL,
  `R_Totalmarks` decimal(10,0) DEFAULT NULL,
  `R_ObtainMarks` decimal(10,0) DEFAULT NULL,
  `R_grade` varchar(45) DEFAULT NULL,
  `R_percent` decimal(10,3) DEFAULT NULL,
  `R_stdId` int(11) DEFAULT NULL,
  `operation_perform` varchar(45) CHARACTER SET utf8 DEFAULT NULL,
  `change_time` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `eventonresult`
--

INSERT INTO `eventonresult` (`R_id`, `R_ExamType_ID`, `R_Totalmarks`, `R_ObtainMarks`, `R_grade`, `R_percent`, `R_stdId`, `operation_perform`, `change_time`) VALUES
(1, 12, '700', '540', 'B', '79.000', 2, 'UPDATE', '06:35:37');

-- --------------------------------------------------------

--
-- Table structure for table `eventonstudent`
--

CREATE TABLE `eventonstudent` (
  `std_id` int(11) DEFAULT NULL,
  `std_fname` varchar(30) DEFAULT NULL,
  `std_lname` varchar(30) DEFAULT NULL,
  `std_email` varchar(30) DEFAULT NULL,
  `std_pass` varchar(30) DEFAULT NULL,
  `std_dob` date DEFAULT NULL,
  `std_Telno` varchar(20) DEFAULT NULL,
  `std_mobileno` varchar(20) DEFAULT NULL,
  `std_doa` date DEFAULT NULL,
  `std_status` varchar(30) DEFAULT NULL,
  `std_gender` varchar(10) DEFAULT NULL,
  `std_classid` int(11) DEFAULT NULL,
  `std_secid` int(11) DEFAULT NULL,
  `std_gid` int(11) DEFAULT NULL,
  `operation_perform` varchar(50) DEFAULT NULL,
  `change_time` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `eventonstudent`
--

INSERT INTO `eventonstudent` (`std_id`, `std_fname`, `std_lname`, `std_email`, `std_pass`, `std_dob`, `std_Telno`, `std_mobileno`, `std_doa`, `std_status`, `std_gender`, `std_classid`, `std_secid`, `std_gid`, `operation_perform`, `change_time`) VALUES
(3, 'Muneebkhan', 'Kjnjk', '01@gmail.com', '123', '2000-08-24', '0215014566', '03398745209', '2006-10-12', 'Leave', 'M', 4, 1, 12, 'Update', '06:22:05'),
(3, 'Ahsdn', 'Kjnjk', '01@gmail.com', '123', '2000-08-24', '0215014566', '03398745209', '2006-10-12', 'Leave', 'M', 4, 1, 12, 'Update', '06:23:59'),
(4, 'Muhammad', 'Ahsan', 'ahnkhan804@gmail.com', 'Ahsan2001@.', '1997-11-05', '', '03312398971', '2011-04-05', 'Admitted', 'Male', 4, 4, 12, 'Update', '05:06:51'),
(7, 'Muhammad', 'Hammmad', 'ahnkhan1804@gmail.com', 'Ahsan2001@.', '1997-11-05', '', '03312398974', '2021-04-14', 'Admitted', 'Male', 4, 3, 20, 'Update', '06:07:44'),
(4, 'Muhammad', 'Ahsan', 'ahnkhan804@gmail.com', 'Ahsan2001@.', '1997-11-05', '', '03312398971', '2011-04-05', 'Admitted', 'Male', 4, 3, 16, 'Update', '15:53:12');

-- --------------------------------------------------------

--
-- Table structure for table `exam`
--

CREATE TABLE `exam` (
  `Exam_ID` int(11) NOT NULL,
  `Exam_TypeID` int(11) NOT NULL,
  `Exam_ClassID` int(11) NOT NULL,
  `Exam_Start_DateTime` datetime NOT NULL,
  `Exam_SubjectID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `exam`
--

INSERT INTO `exam` (`Exam_ID`, `Exam_TypeID`, `Exam_ClassID`, `Exam_Start_DateTime`, `Exam_SubjectID`) VALUES
(1, 12, 1, '2020-02-23 06:25:15', 1),
(2, 12, 4, '2021-01-25 04:05:12', 2),
(3, 12, 5, '2021-01-25 04:05:12', 1);

-- --------------------------------------------------------

--
-- Table structure for table `exam_result`
--

CREATE TABLE `exam_result` (
  `Exam_ID` int(11) NOT NULL,
  `Exam_StdID` int(11) NOT NULL,
  `Exam_TotalMarks` decimal(10,0) NOT NULL,
  `Exam_Grade` varchar(45) NOT NULL,
  `Exam_ObtainMarks` decimal(10,0) NOT NULL,
  `ExamResult_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `exam_result`
--

INSERT INTO `exam_result` (`Exam_ID`, `Exam_StdID`, `Exam_TotalMarks`, `Exam_Grade`, `Exam_ObtainMarks`, `ExamResult_ID`) VALUES
(1, 3, '100', 'A', '87', 1);

-- --------------------------------------------------------

--
-- Table structure for table `exam_type`
--

CREATE TABLE `exam_type` (
  `Exam_TypeID` int(11) NOT NULL,
  `Exam_Name` varchar(20) NOT NULL,
  `Description` varchar(20) DEFAULT 'Not Provided'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `exam_type`
--

INSERT INTO `exam_type` (`Exam_TypeID`, `Exam_Name`, `Description`) VALUES
(5, 'Exam', 'Exam'),
(12, 'Quiz', 'Quiz');

-- --------------------------------------------------------

--
-- Table structure for table `fees`
--

CREATE TABLE `fees` (
  `Fees_ID` int(11) NOT NULL,
  `Fees_StdID` int(11) NOT NULL,
  `Fees_PreviousCharges` decimal(10,0) NOT NULL,
  `Fees_IssueDateTime` datetime NOT NULL,
  `Fees_DueDateTime` datetime NOT NULL,
  `Fees_Discount` decimal(10,2) DEFAULT NULL,
  `Fees_DiscountReason` varchar(70) DEFAULT NULL,
  `FeesStatus` varchar(45) NOT NULL,
  `Fees_Amount` decimal(10,2) NOT NULL,
  `Fees_AdditionalCharges` decimal(10,0) DEFAULT NULL,
  `Fees_PaidDate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `guardian`
--

CREATE TABLE `guardian` (
  `Gr_Id` int(11) NOT NULL,
  `Gr_Fname` varchar(30) CHARACTER SET utf8 NOT NULL,
  `Gr_Lname` varchar(30) CHARACTER SET utf8 NOT NULL,
  `Gr_Email` varchar(30) CHARACTER SET utf8 NOT NULL,
  `Gr_Pass` varchar(30) CHARACTER SET utf8 NOT NULL,
  `Gr_CNIC` varchar(20) NOT NULL,
  `Gr_TelNo` varchar(20) DEFAULT NULL,
  `Gr_MobileNo` varchar(20) NOT NULL,
  `Gr_Address` varchar(100) NOT NULL,
  `Gr_Relationship` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `guardian`
--

INSERT INTO `guardian` (`Gr_Id`, `Gr_Fname`, `Gr_Lname`, `Gr_Email`, `Gr_Pass`, `Gr_CNIC`, `Gr_TelNo`, `Gr_MobileNo`, `Gr_Address`, `Gr_Relationship`) VALUES
(12, 'MUHAMMAD MUNEEB', 'MUHAMMAD MUNEER', 'muneebkhn7@gmail.com', 'muneeb12@.', '42101-4500096-1', '02154678945', '03212456981', 'DHA PHASE 2', 'Father'),
(13, 'MUNEEB', 'KHAN', 'mk01@gmail.com', 'mkkk', '12345678900', '02154678901', '032124569801', 'Gulshan Iqbal', 'Father'),
(14, 'NAEEM', 'ALI', 'NAEEMALI@GMAIL.COM', 'Ahsan2001@.', '42000-314237', '', '03312398970', 'Nazimabad,Karachi', 'Father'),
(15, 'AHMEND', 'KHAN', 'MEEM84@GMAIL.COM', 'Ahsan2001@.', '42000-3142371', '', '03312398971', 'Nazimabad,Karachi', 'Father'),
(16, 'AHMEND', 'KHAN', 'NAEEMALI804@GMAIL.COM', 'Ahsan2001@.', '42000-3142372', '', '03312398972', 'Nazimabad,Karachi', 'Father'),
(17, 'AHMEND', 'ALI', 'NA41EEMALI@GMAIL.COM', 'Ahsan2001@.', '42000-3142374', '', '03312398973', 'Nazimabad,Karachi', 'Father'),
(18, 'WASEEM', 'BASIM', 'WASEEM@hotmail.com', 'Ahsan2001@.', '42000-3143124', '', '03312398997', 'Nazimabad,Karachi', 'Father'),
(19, 'saleem', 'ameen', 'saleem814@yahoo.com', 'Ahsan2001@.', '42000-3147894', '', '03312397891', 'Nazimabad,Karachi', 'Father'),
(20, 'saleem', 'KHAN', 'saleem8104@yahoo.com', 'Ahsan2001@.', '42000-3147891', '', '03312398998', 'Nazimabad,Karachi', 'Father'),
(21, 'aaaa', 'aaaaa', 'ahnkhan804@gmail.com', 'Ahsan2001@.', '42000-314298', '', '03212456988', 'Nazimabad,Karachi', 'Father'),
(22, 'saleem', 'ALI', 'MEEM804@GMAIL.COM', 'Ahsan2001@.', '42000-31423765', '', '03312398978', 'Nazimabad,Karachi', 'Father'),
(23, 'YAMEEN', 'RASHEED', 'YAN12@YAHOO.COM', 'Ahsan2001@.', '42000-31423714', '0215467894', '03212456987', 'Nazimabad,Karachi', 'Father'),
(24, 'YASMEEN', 'ALI', 'NAEEMALI88@GMAIL.COM', 'Ahsan2001@.', '42000-31423789', '', '03212456777', 'Nazimabad,Karachi', 'Mother'),
(25, 'AHMED', 'KASIM', 'AHMEN@YAHOO.COM', 'Ahsan2001@.', '42010-314237', '', '03122456987', 'Nazimabad,Karachi', 'Father'),
(26, 'RAMEEZ', 'AKBAR', 'RAMEEZ804@GMAIL.COM', 'akhter123@', '42000-3142372999', '', '03212456999', 'Nazimabad,Karachi', 'Father'),
(27, 'OSAMA', 'UMER', 'OSAMUMER84@GMAIL.COM', 'OsaME12@.', '42001-3142372-0', '', '03212456911', 'Gulberg, Karachi', 'Father'),
(28, 'OSAMA', 'UMER', 'OSAMEUMER84@GMAIL.COM', 'Osama13@.', '42000-31423713-1', '02154678945', '03212456102', 'Gulberg 02, Karachi', 'Father'),
(29, 'Hamid', 'Ejaz', 'HmdEjaaz@yahoo.com', 'HamidEjaaz12@', '42101-45000196-0', '02154678945', '03212456962', 'Nazimabad,Karachi', 'Father');

--
-- Triggers `guardian`
--
DELIMITER $$
CREATE TRIGGER `guardian` AFTER UPDATE ON `guardian` FOR EACH ROW begin
insert into eventonGuardian values(old.Gr_Id,old.Gr_Fname,old.Gr_Lname,old.Gr_Email,old.Gr_Pass,old.Gr_CNIC,old.Gr_TelNo,old.Gr_MobileNo,old.Gr_Address,old.Gr_Relationship,"Update",curtime());
end
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `result`
--

CREATE TABLE `result` (
  `Result_ID` int(11) NOT NULL,
  `Result_ExamTypeID` int(11) NOT NULL,
  `Result_TotalMarks` decimal(10,0) NOT NULL,
  `Result_ObtainMarks` decimal(10,0) NOT NULL,
  `Result_Grade` varchar(45) NOT NULL,
  `Result_Percentage` decimal(10,3) NOT NULL,
  `Result_StdID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `result`
--

INSERT INTO `result` (`Result_ID`, `Result_ExamTypeID`, `Result_TotalMarks`, `Result_ObtainMarks`, `Result_Grade`, `Result_Percentage`, `Result_StdID`) VALUES
(1, 5, '700', '540', 'B', '79.000', 2);

--
-- Triggers `result`
--
DELIMITER $$
CREATE TRIGGER `result` AFTER UPDATE ON `result` FOR EACH ROW begin
insert into eventonResult values(old.Result_ID,old.Result_ExamTypeID,old.Result_TotalMarks,old.Result_ObtainMarks,old.Result_Grade,old.Result_Percentage,old.Result_StdID,"UPDATE",curtime());
end
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `Role_ID` int(11) NOT NULL,
  `Role_Name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`Role_ID`, `Role_Name`) VALUES
(2, 'Accountant'),
(3, 'Receptionist'),
(1, 'Teacher');

-- --------------------------------------------------------

--
-- Table structure for table `school`
--

CREATE TABLE `school` (
  `SchoolName` varchar(150) NOT NULL,
  `SchoolAddress` varchar(200) NOT NULL,
  `SchoolEmail` varchar(45) NOT NULL,
  `SchoolPhoneNumber` varchar(45) NOT NULL,
  `SchoolAdmin` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `section`
--

CREATE TABLE `section` (
  `Section_ID` int(11) NOT NULL,
  `Section_ClassID` int(11) NOT NULL,
  `Section_UnderObservation` int(11) NOT NULL,
  `Section_Name` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `section`
--

INSERT INTO `section` (`Section_ID`, `Section_ClassID`, `Section_UnderObservation`, `Section_Name`) VALUES
(1, 1, 1, 'B'),
(2, 4, 1, 'C'),
(3, 4, 1, 'A'),
(4, 4, 1, 'B');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `Std_Id` int(11) NOT NULL,
  `Std_Fname` varchar(30) CHARACTER SET utf8 NOT NULL,
  `Std_Lname` varchar(30) CHARACTER SET utf8 NOT NULL,
  `Std_Email` varchar(30) CHARACTER SET utf8 NOT NULL,
  `Std_Pass` varchar(30) CHARACTER SET utf8 NOT NULL,
  `Std_DOB` date NOT NULL,
  `Std_TelNo` varchar(20) DEFAULT 'Not Provided',
  `Std_MobileNo` varchar(20) DEFAULT 'Not Provided',
  `Std_DOA` date NOT NULL,
  `Std_Status` varchar(30) NOT NULL,
  `Std_Gender` varchar(10) NOT NULL,
  `Std_ClassID` int(11) DEFAULT NULL,
  `Std_SectionID` int(11) DEFAULT NULL,
  `Std_GuardianID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`Std_Id`, `Std_Fname`, `Std_Lname`, `Std_Email`, `Std_Pass`, `Std_DOB`, `Std_TelNo`, `Std_MobileNo`, `Std_DOA`, `Std_Status`, `Std_Gender`, `Std_ClassID`, `Std_SectionID`, `Std_GuardianID`) VALUES
(1, 'Mkkkk', 'Kjnjk', '01@gmail.com', '123', '2000-08-24', '0215014566', '03398745209', '2006-10-12', 'Leave', 'M', 4, 1, 12),
(2, 'Mkkkk', 'Kjnjk', '01@gmail.com', '123', '2000-08-24', '0215014566', '03398745209', '2006-10-12', 'Leave', 'M', 4, 1, 12),
(3, 'Ahsan', 'Kjnjk', '01@gmail.com', '123', '2000-08-24', '0215014566', '03398745209', '2006-10-12', 'Leave', 'M', 4, 1, 12),
(4, 'Muhammad', 'Ahsan', 'ahnkhan804@gmail.com', 'Ahsan2001@.', '1997-11-05', '', '03312398971', '2011-04-05', 'Admitted', 'Male', 1, 1, 22),
(5, 'Muhammad', 'Ahsan', 'ahnkhan804@gmail.com', 'Ahsan2001@.', '1997-11-05', '', '03312398971', '2011-04-05', 'Admitted', 'Male', 4, 4, 12),
(6, 'Muhammad', 'Muneeb', 'ahnkhan804@gmail.com', 'Ahsan2001@.', '2000-02-23', '', '03312398971', '2011-04-05', 'Admitted', 'Male', 4, 4, 22),
(7, 'Muhammad', 'Hammad', 'ahnkhan1804@gmail.com', 'Ahsan2001@.', '1997-11-05', '', '03312398974', '2021-04-14', 'Admitted', 'Male', 1, 1, 23),
(8, 'Muhammad', 'Saaf', 'saafali1@gmail.com', 'Ahsan21@.', '1999-05-19', '0219687654', '03472398971', '2021-05-27', 'Admitted', 'Male', 4, 4, 25);

--
-- Triggers `student`
--
DELIMITER $$
CREATE TRIGGER `student` AFTER UPDATE ON `student` FOR EACH ROW begin
insert into eventonStudent values(old.Std_Id,old.Std_Fname,old.Std_Lname,old.Std_Email,old.Std_Pass,old.Std_DOB,old.Std_TelNo,old.Std_MobileNo,old.Std_DOA,old.Std_Status,old.Std_Gender,old.Std_ClassID,old.Std_SectionID,old.Std_GuardianID,"Update",now());
end
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE `subjects` (
  `Subject_ID` int(11) NOT NULL,
  `Subject_Name` varchar(50) NOT NULL,
  `Subject_ClassID` int(11) NOT NULL,
  `Subject_Description` varchar(60) DEFAULT 'Not Provided'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`Subject_ID`, `Subject_Name`, `Subject_ClassID`, `Subject_Description`) VALUES
(1, 'maths', 4, 'MATHS'),
(2, 'ComputerScience', 1, 'CS');

-- --------------------------------------------------------

--
-- Table structure for table `subjectteaches`
--

CREATE TABLE `subjectteaches` (
  `idSubjectTeaches` int(11) NOT NULL,
  `SubjectTeachesBy` int(11) NOT NULL,
  `SubjectTeachesClassID` int(11) NOT NULL,
  `SubjectTeachesStartDate` date NOT NULL,
  `SubjectTeachesEndDate` date DEFAULT NULL,
  `SubjectTeachesDropStatus` varchar(45) NOT NULL DEFAULT 'Not Provided',
  `SubjectTeachesOutCome` varchar(70) NOT NULL DEFAULT 'Not Provided',
  `SubjectTeaches_SubjectID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `timetable`
--

CREATE TABLE `timetable` (
  `TT_ID` int(11) NOT NULL,
  `TT_SectionID` int(11) NOT NULL,
  `TT_Day` varchar(10) CHARACTER SET utf8 NOT NULL,
  `TT_StartTime` time NOT NULL,
  `TT_Description` varchar(60) CHARACTER SET utf8 DEFAULT NULL,
  `TT_SubjectID` int(11) NOT NULL,
  `TT_EndTime` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `timetable`
--

INSERT INTO `timetable` (`TT_ID`, `TT_SectionID`, `TT_Day`, `TT_StartTime`, `TT_Description`, `TT_SubjectID`, `TT_EndTime`) VALUES
(1, 1, 'Wed', '17:46:48', 'test', 2, '11:26:13'),
(12, 2, 'MONDAY', '17:15:07', 'mm', 1, '17:15:07');

-- --------------------------------------------------------

--
-- Stand-in structure for view `viewattendance`
-- (See below for the actual view)
--
CREATE TABLE `viewattendance` (
`A_StdID` int(11)
,`A_Remarks` varchar(20)
,`A_Status` varchar(20)
,`A_Date` datetime
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `viewclass`
-- (See below for the actual view)
--
CREATE TABLE `viewclass` (
`Class_ID` int(11)
,`Class_Description` varchar(200)
,`Teacher` varchar(61)
,`Section_Name` varchar(45)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `viewemployee`
-- (See below for the actual view)
--
CREATE TABLE `viewemployee` (
`E_ID` int(11)
,`E_Fname` varchar(30)
,`E_Lname` varchar(30)
,`E_Email` varchar(30)
,`E_Pass` varchar(30)
,`E_DOB` date
,`E_TelNo` varchar(20)
,`E_MobileNo` varchar(20)
,`E_DOJ` date
,`E_Status` varchar(30)
,`E_Gender` varchar(10)
,`E_RoleID` int(11)
,`E_Salary` decimal(10,0)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `viewexam`
-- (See below for the actual view)
--
CREATE TABLE `viewexam` (
`Exam_ID` int(11)
,`Exam_TypeID` int(11)
,`Exam_ClassID` int(11)
,`Exam_Start_DateTime` datetime
,`Exam_SubjectID` int(11)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `viewfees`
-- (See below for the actual view)
--
CREATE TABLE `viewfees` (
`Fees_ID` int(11)
,`Fees_StdID` int(11)
,`Fees_PreviousCharges` decimal(10,0)
,`Fees_IssueDateTime` datetime
,`Fees_DueDateTime` datetime
,`Fees_Discount` decimal(10,2)
,`Fees_DiscountReason` varchar(70)
,`FeesStatus` varchar(45)
,`Fees_Amount` decimal(10,2)
,`Fees_AdditionalCharges` decimal(10,0)
,`Fees_PaidDate` date
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `viewguardian`
-- (See below for the actual view)
--
CREATE TABLE `viewguardian` (
`Gr_Id` int(11)
,`Gr_Fname` varchar(30)
,`Gr_Lname` varchar(30)
,`Gr_Email` varchar(30)
,`Gr_Pass` varchar(30)
,`Gr_CNIC` varchar(20)
,`Gr_TelNo` varchar(20)
,`Gr_MobileNo` varchar(20)
,`Gr_Address` varchar(100)
,`Gr_Relationship` varchar(100)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `viewstudent`
-- (See below for the actual view)
--
CREATE TABLE `viewstudent` (
`Std_Id` int(11)
,`Std_Fname` varchar(30)
,`Std_Lname` varchar(30)
,`Std_Email` varchar(30)
,`Std_Pass` varchar(30)
,`Std_DOB` date
,`Std_TelNo` varchar(20)
,`Std_MobileNo` varchar(20)
,`Std_DOA` date
,`Std_Status` varchar(30)
,`Std_Gender` varchar(10)
,`Std_ClassID` int(11)
,`Std_SectionID` int(11)
,`Std_GuardianID` int(11)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `viewsubject`
-- (See below for the actual view)
--
CREATE TABLE `viewsubject` (
`Subject_ID` int(11)
,`Subject_Name` varchar(50)
,`Subject_ClassID` int(11)
,`Subject_Description` varchar(60)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `viewsubjectteaches`
-- (See below for the actual view)
--
CREATE TABLE `viewsubjectteaches` (
`idSubjectTeaches` int(11)
,`SubjectTeachesBy` int(11)
,`SubjectTeachesClassID` int(11)
,`SubjectTeachesStartDate` date
,`SubjectTeachesEndDate` date
,`SubjectTeachesDropStatus` varchar(45)
,`SubjectTeachesOutCome` varchar(70)
,`SubjectTeaches_SubjectID` int(11)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `viewtimetable`
-- (See below for the actual view)
--
CREATE TABLE `viewtimetable` (
`TT_ID` int(11)
,`TT_SectionID` int(11)
,`TT_Day` varchar(10)
,`TT_StartTime` time
,`TT_Description` varchar(60)
,`TT_SubjectID` int(11)
,`TT_EndTime` time
);

-- --------------------------------------------------------

--
-- Structure for view `viewattendance`
--
DROP TABLE IF EXISTS `viewattendance`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `viewattendance`  AS SELECT `attendance`.`A_StdID` AS `A_StdID`, `attendance`.`A_Remarks` AS `A_Remarks`, `attendance`.`A_Status` AS `A_Status`, `attendance`.`A_Date` AS `A_Date` FROM `attendance` ;

-- --------------------------------------------------------

--
-- Structure for view `viewclass`
--
DROP TABLE IF EXISTS `viewclass`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `viewclass`  AS SELECT DISTINCT `c`.`Class_ID` AS `Class_ID`, `c`.`Class_Description` AS `Class_Description`, concat(`e`.`E_Fname`,' ',`e`.`E_Lname`) AS `Teacher`, `s`.`Section_Name` AS `Section_Name` FROM ((`classroom` `c` join `section` `s` on(`s`.`Section_ClassID` = `c`.`Class_ID`)) join `employee` `e` on(`e`.`E_ID` = `s`.`Section_UnderObservation`)) ;

-- --------------------------------------------------------

--
-- Structure for view `viewemployee`
--
DROP TABLE IF EXISTS `viewemployee`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `viewemployee`  AS SELECT `employee`.`E_ID` AS `E_ID`, `employee`.`E_Fname` AS `E_Fname`, `employee`.`E_Lname` AS `E_Lname`, `employee`.`E_Email` AS `E_Email`, `employee`.`E_Pass` AS `E_Pass`, `employee`.`E_DOB` AS `E_DOB`, `employee`.`E_TelNo` AS `E_TelNo`, `employee`.`E_MobileNo` AS `E_MobileNo`, `employee`.`E_DOJ` AS `E_DOJ`, `employee`.`E_Status` AS `E_Status`, `employee`.`E_Gender` AS `E_Gender`, `employee`.`E_RoleID` AS `E_RoleID`, `employee`.`E_Salary` AS `E_Salary` FROM `employee` ;

-- --------------------------------------------------------

--
-- Structure for view `viewexam`
--
DROP TABLE IF EXISTS `viewexam`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `viewexam`  AS SELECT `exam`.`Exam_ID` AS `Exam_ID`, `exam`.`Exam_TypeID` AS `Exam_TypeID`, `exam`.`Exam_ClassID` AS `Exam_ClassID`, `exam`.`Exam_Start_DateTime` AS `Exam_Start_DateTime`, `exam`.`Exam_SubjectID` AS `Exam_SubjectID` FROM `exam` ;

-- --------------------------------------------------------

--
-- Structure for view `viewfees`
--
DROP TABLE IF EXISTS `viewfees`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `viewfees`  AS SELECT `fees`.`Fees_ID` AS `Fees_ID`, `fees`.`Fees_StdID` AS `Fees_StdID`, `fees`.`Fees_PreviousCharges` AS `Fees_PreviousCharges`, `fees`.`Fees_IssueDateTime` AS `Fees_IssueDateTime`, `fees`.`Fees_DueDateTime` AS `Fees_DueDateTime`, `fees`.`Fees_Discount` AS `Fees_Discount`, `fees`.`Fees_DiscountReason` AS `Fees_DiscountReason`, `fees`.`FeesStatus` AS `FeesStatus`, `fees`.`Fees_Amount` AS `Fees_Amount`, `fees`.`Fees_AdditionalCharges` AS `Fees_AdditionalCharges`, `fees`.`Fees_PaidDate` AS `Fees_PaidDate` FROM `fees` ;

-- --------------------------------------------------------

--
-- Structure for view `viewguardian`
--
DROP TABLE IF EXISTS `viewguardian`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `viewguardian`  AS SELECT `guardian`.`Gr_Id` AS `Gr_Id`, `guardian`.`Gr_Fname` AS `Gr_Fname`, `guardian`.`Gr_Lname` AS `Gr_Lname`, `guardian`.`Gr_Email` AS `Gr_Email`, `guardian`.`Gr_Pass` AS `Gr_Pass`, `guardian`.`Gr_CNIC` AS `Gr_CNIC`, `guardian`.`Gr_TelNo` AS `Gr_TelNo`, `guardian`.`Gr_MobileNo` AS `Gr_MobileNo`, `guardian`.`Gr_Address` AS `Gr_Address`, `guardian`.`Gr_Relationship` AS `Gr_Relationship` FROM `guardian` ;

-- --------------------------------------------------------

--
-- Structure for view `viewstudent`
--
DROP TABLE IF EXISTS `viewstudent`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `viewstudent`  AS SELECT `student`.`Std_Id` AS `Std_Id`, `student`.`Std_Fname` AS `Std_Fname`, `student`.`Std_Lname` AS `Std_Lname`, `student`.`Std_Email` AS `Std_Email`, `student`.`Std_Pass` AS `Std_Pass`, `student`.`Std_DOB` AS `Std_DOB`, `student`.`Std_TelNo` AS `Std_TelNo`, `student`.`Std_MobileNo` AS `Std_MobileNo`, `student`.`Std_DOA` AS `Std_DOA`, `student`.`Std_Status` AS `Std_Status`, `student`.`Std_Gender` AS `Std_Gender`, `student`.`Std_ClassID` AS `Std_ClassID`, `student`.`Std_SectionID` AS `Std_SectionID`, `student`.`Std_GuardianID` AS `Std_GuardianID` FROM `student` ;

-- --------------------------------------------------------

--
-- Structure for view `viewsubject`
--
DROP TABLE IF EXISTS `viewsubject`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `viewsubject`  AS SELECT `subjects`.`Subject_ID` AS `Subject_ID`, `subjects`.`Subject_Name` AS `Subject_Name`, `subjects`.`Subject_ClassID` AS `Subject_ClassID`, `subjects`.`Subject_Description` AS `Subject_Description` FROM `subjects` ;

-- --------------------------------------------------------

--
-- Structure for view `viewsubjectteaches`
--
DROP TABLE IF EXISTS `viewsubjectteaches`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `viewsubjectteaches`  AS SELECT `subjectteaches`.`idSubjectTeaches` AS `idSubjectTeaches`, `subjectteaches`.`SubjectTeachesBy` AS `SubjectTeachesBy`, `subjectteaches`.`SubjectTeachesClassID` AS `SubjectTeachesClassID`, `subjectteaches`.`SubjectTeachesStartDate` AS `SubjectTeachesStartDate`, `subjectteaches`.`SubjectTeachesEndDate` AS `SubjectTeachesEndDate`, `subjectteaches`.`SubjectTeachesDropStatus` AS `SubjectTeachesDropStatus`, `subjectteaches`.`SubjectTeachesOutCome` AS `SubjectTeachesOutCome`, `subjectteaches`.`SubjectTeaches_SubjectID` AS `SubjectTeaches_SubjectID` FROM `subjectteaches` ;

-- --------------------------------------------------------

--
-- Structure for view `viewtimetable`
--
DROP TABLE IF EXISTS `viewtimetable`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `viewtimetable`  AS SELECT `timetable`.`TT_ID` AS `TT_ID`, `timetable`.`TT_SectionID` AS `TT_SectionID`, `timetable`.`TT_Day` AS `TT_Day`, `timetable`.`TT_StartTime` AS `TT_StartTime`, `timetable`.`TT_Description` AS `TT_Description`, `timetable`.`TT_SubjectID` AS `TT_SubjectID`, `timetable`.`TT_EndTime` AS `TT_EndTime` FROM `timetable` ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`Admin_ID`);

--
-- Indexes for table `attendance`
--
ALTER TABLE `attendance`
  ADD KEY `A_StdID` (`A_StdID`);

--
-- Indexes for table `classroom`
--
ALTER TABLE `classroom`
  ADD PRIMARY KEY (`Class_ID`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`E_ID`),
  ADD UNIQUE KEY `E_MobileNo_UNIQUE` (`E_MobileNo`),
  ADD KEY `E_RoleID` (`E_RoleID`);

--
-- Indexes for table `exam`
--
ALTER TABLE `exam`
  ADD PRIMARY KEY (`Exam_ID`),
  ADD KEY `Exam_TypeID` (`Exam_TypeID`),
  ADD KEY `Exam_ClassID_idx` (`Exam_ClassID`),
  ADD KEY `Exam_SubjectID_idx` (`Exam_SubjectID`);

--
-- Indexes for table `exam_result`
--
ALTER TABLE `exam_result`
  ADD PRIMARY KEY (`ExamResult_ID`),
  ADD KEY `Exam_ID` (`Exam_ID`),
  ADD KEY `Exam_StdID` (`Exam_StdID`);

--
-- Indexes for table `exam_type`
--
ALTER TABLE `exam_type`
  ADD PRIMARY KEY (`Exam_TypeID`),
  ADD UNIQUE KEY `Exam_Name` (`Exam_Name`);

--
-- Indexes for table `fees`
--
ALTER TABLE `fees`
  ADD PRIMARY KEY (`Fees_ID`),
  ADD KEY `Fees_StdID` (`Fees_StdID`);

--
-- Indexes for table `guardian`
--
ALTER TABLE `guardian`
  ADD PRIMARY KEY (`Gr_Id`),
  ADD UNIQUE KEY `Gr_Email` (`Gr_Email`),
  ADD UNIQUE KEY `Gr_CNIC` (`Gr_CNIC`),
  ADD UNIQUE KEY `Gr_MobileNo` (`Gr_MobileNo`);

--
-- Indexes for table `result`
--
ALTER TABLE `result`
  ADD PRIMARY KEY (`Result_ID`),
  ADD KEY `Res_StdID_idx` (`Result_StdID`),
  ADD KEY `Res_ExamTypeID_idx` (`Result_ExamTypeID`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`Role_ID`),
  ADD UNIQUE KEY `Role_Name` (`Role_Name`);

--
-- Indexes for table `school`
--
ALTER TABLE `school`
  ADD KEY `Sch_Admin_idx` (`SchoolAdmin`);

--
-- Indexes for table `section`
--
ALTER TABLE `section`
  ADD PRIMARY KEY (`Section_ID`),
  ADD KEY `Section_ClassID_idx` (`Section_ClassID`),
  ADD KEY `Section_ClassTeacher_idx` (`Section_UnderObservation`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`Std_Id`),
  ADD KEY `Std_ClassID_idx` (`Std_ClassID`),
  ADD KEY `Std_SectionID_idx` (`Std_SectionID`),
  ADD KEY `Std_GuardianID_idx` (`Std_GuardianID`);

--
-- Indexes for table `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`Subject_ID`),
  ADD UNIQUE KEY `Subject_Name` (`Subject_Name`),
  ADD KEY `Subject_ClsIDfk_idx` (`Subject_ClassID`);

--
-- Indexes for table `subjectteaches`
--
ALTER TABLE `subjectteaches`
  ADD PRIMARY KEY (`idSubjectTeaches`),
  ADD KEY `Teacher_ID_idx` (`SubjectTeachesBy`),
  ADD KEY `Class_ID_idx` (`SubjectTeachesClassID`),
  ADD KEY `Subject_ID_idx` (`SubjectTeaches_SubjectID`);

--
-- Indexes for table `timetable`
--
ALTER TABLE `timetable`
  ADD PRIMARY KEY (`TT_ID`),
  ADD KEY `TimeTable_Subject_idx` (`TT_SubjectID`),
  ADD KEY `TimeTable_ibfk_1_idx` (`TT_SectionID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `Admin_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `classroom`
--
ALTER TABLE `classroom`
  MODIFY `Class_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `E_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `exam`
--
ALTER TABLE `exam`
  MODIFY `Exam_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `exam_type`
--
ALTER TABLE `exam_type`
  MODIFY `Exam_TypeID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `fees`
--
ALTER TABLE `fees`
  MODIFY `Fees_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `guardian`
--
ALTER TABLE `guardian`
  MODIFY `Gr_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `Role_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `Std_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `subjects`
--
ALTER TABLE `subjects`
  MODIFY `Subject_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `timetable`
--
ALTER TABLE `timetable`
  MODIFY `TT_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `attendance`
--
ALTER TABLE `attendance`
  ADD CONSTRAINT `Attendance_ibfk_1` FOREIGN KEY (`A_StdID`) REFERENCES `student` (`Std_Id`);

--
-- Constraints for table `employee`
--
ALTER TABLE `employee`
  ADD CONSTRAINT `Employee_ibfk_1` FOREIGN KEY (`E_RoleID`) REFERENCES `role` (`Role_ID`);

--
-- Constraints for table `exam`
--
ALTER TABLE `exam`
  ADD CONSTRAINT `Exam_ClassID` FOREIGN KEY (`Exam_ClassID`) REFERENCES `classroom` (`Class_ID`),
  ADD CONSTRAINT `Exam_SubjectID` FOREIGN KEY (`Exam_SubjectID`) REFERENCES `subjects` (`Subject_ID`),
  ADD CONSTRAINT `Exam_ibfk_1` FOREIGN KEY (`Exam_TypeID`) REFERENCES `exam_type` (`Exam_TypeID`);

--
-- Constraints for table `exam_result`
--
ALTER TABLE `exam_result`
  ADD CONSTRAINT `Exam_Result_ibfk_1` FOREIGN KEY (`Exam_ID`) REFERENCES `exam` (`Exam_ID`),
  ADD CONSTRAINT `Exam_Result_ibfk_2` FOREIGN KEY (`Exam_StdID`) REFERENCES `student` (`Std_Id`);

--
-- Constraints for table `fees`
--
ALTER TABLE `fees`
  ADD CONSTRAINT `Fees_ibfk_1` FOREIGN KEY (`Fees_StdID`) REFERENCES `student` (`Std_Id`);

--
-- Constraints for table `result`
--
ALTER TABLE `result`
  ADD CONSTRAINT `Res_ExamTypeID` FOREIGN KEY (`Result_ExamTypeID`) REFERENCES `exam_type` (`Exam_TypeID`),
  ADD CONSTRAINT `Res_StdID` FOREIGN KEY (`Result_StdID`) REFERENCES `student` (`Std_Id`);

--
-- Constraints for table `school`
--
ALTER TABLE `school`
  ADD CONSTRAINT `Sch_Admin` FOREIGN KEY (`SchoolAdmin`) REFERENCES `admin` (`Admin_ID`);

--
-- Constraints for table `section`
--
ALTER TABLE `section`
  ADD CONSTRAINT `Section_ClassID` FOREIGN KEY (`Section_ClassID`) REFERENCES `classroom` (`Class_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `Section_ClassTeacher` FOREIGN KEY (`Section_UnderObservation`) REFERENCES `employee` (`E_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `student`
--
ALTER TABLE `student`
  ADD CONSTRAINT `Std_ClassID` FOREIGN KEY (`Std_ClassID`) REFERENCES `classroom` (`Class_ID`),
  ADD CONSTRAINT `Std_GuardianID` FOREIGN KEY (`Std_GuardianID`) REFERENCES `guardian` (`Gr_Id`),
  ADD CONSTRAINT `Std_SectionID` FOREIGN KEY (`Std_SectionID`) REFERENCES `section` (`Section_ID`);

--
-- Constraints for table `subjects`
--
ALTER TABLE `subjects`
  ADD CONSTRAINT `Subject_ClsIDfk` FOREIGN KEY (`Subject_ClassID`) REFERENCES `classroom` (`Class_ID`);

--
-- Constraints for table `subjectteaches`
--
ALTER TABLE `subjectteaches`
  ADD CONSTRAINT `Class_ID` FOREIGN KEY (`SubjectTeachesClassID`) REFERENCES `classroom` (`Class_ID`),
  ADD CONSTRAINT `Subject_ID` FOREIGN KEY (`SubjectTeaches_SubjectID`) REFERENCES `subjects` (`Subject_ID`),
  ADD CONSTRAINT `Teacher_ID` FOREIGN KEY (`SubjectTeachesBy`) REFERENCES `employee` (`E_ID`);

--
-- Constraints for table `timetable`
--
ALTER TABLE `timetable`
  ADD CONSTRAINT `TimeTable_Subject` FOREIGN KEY (`TT_SubjectID`) REFERENCES `subjects` (`Subject_ID`),
  ADD CONSTRAINT `TimeTable_ibfk_1` FOREIGN KEY (`TT_SectionID`) REFERENCES `section` (`Section_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
