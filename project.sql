CREATE TABLE Gurdian (
    Gr_Id INT PRIMARY KEY AUTO_INCREMENT,
    Gr_Fname NVARCHAR(30) NOT NULL,
    Gr_Lname NVARCHAR(30) NOT NULL,
    Gr_Email NVARCHAR(30) NOT NULL unique,
    Gr_Pass NVARCHAR(30) NOT NULL,
    Gr_CNIC VARCHAR(20) NOT NULL unique,
    Gr_TelNo VARCHAR(20),
    Gr_MobileNo VARCHAR(20) NOT NULL unique,
    Gr_Address VARCHAR(100) NOT NULL,
    Gr_Relationship varchar(100) Not Null
);

CREATE TABLE Student (
    Std_Id INT PRIMARY KEY AUTO_INCREMENT,
    Std_ParentID INT NOT NULL,
    Std_Fname NVARCHAR(30) NOT NULL,
    Std_Lname NVARCHAR(30) NOT NULL,
    Std_Email NVARCHAR(30) NOT NULL,
    Std_Pass NVARCHAR(30) NOT NULL,
    Std_DOB DATE NOT NULL,
    Std_TelNo VARCHAR(20),
    Std_MobileNo VARCHAR(20) NOT NULL,
    Std_DOA DATE NOT NULL,
    Std_Status VARCHAR(30) NOT NULL,
    Std_Gender VARCHAR(10) NOT NULL,
    FOREIGN KEY (Std_ParentID)
        REFERENCES Parent (Pr_Id)
);

CREATE TABLE Role (
    Role_ID INT PRIMARY KEY AUTO_INCREMENT,
    Role_Name VARCHAR(50) UNIQUE NOT NULL
);

CREATE TABLE Employee (
    E_ID INT PRIMARY KEY AUTO_INCREMENT,
    E_Fname NVARCHAR(30) NOT NULL,
    E_Lname NVARCHAR(30) NOT NULL,
    E_Email NVARCHAR(30) NOT NULL,
    E_Pass NVARCHAR(30) NOT NULL,
    E_DOB DATE NOT NULL,
    E_TelNo VARCHAR(20),
    E_MobileNo VARCHAR(20) NOT NULL,
    E_DOJ DATE NOT NULL,
    E_Status VARCHAR(30) NOT NULL,
    E_Gender VARCHAR(10) NOT NULL,
    E_RoleID INT NOT NULL,
    E_Salary DECIMAL NOT NULL,
    FOREIGN KEY (E_RoleID)
        REFERENCES Role (Role_ID)
);

CREATE TABLE Grade (
    Grade_ID INT PRIMARY KEY AUTO_INCREMENT,
    Grade_Name VARCHAR(50) UNIQUE NOT NULL
);

CREATE TABLE Subjects (
    Subject_ID INT PRIMARY KEY AUTO_INCREMENT,
    Subject_Name VARCHAR(50) UNIQUE NOT NULL,
    Subject_GradeID int not null,
    foreign key(Subject_GradeID) references Grade (Grade_ID)
);

CREATE TABLE ClassRoom (
    Class_ID INT AUTO_INCREMENT PRIMARY KEY,
    Class_year VARCHAR(6) NOT NULL,
    Class_Section VARCHAR(3) NOT NULL,
    Class_remarks VARCHAR(25) NOT NULL,
    Class_TeacherID INT NOT NULL,
    Class_GradeID INT NOT NULL,
    FOREIGN KEY (Class_TeacherID)
        REFERENCES Employee (E_ID),
    FOREIGN KEY (Class_GradeID)
        REFERENCES Grade (Grade_ID)
);

CREATE TABLE Classroom_To_Student (
    CS_Student_ID INT NOT NULL,
    CS_ClassID INT NOT NULL,
    FOREIGN KEY (CS_Student_ID)
        REFERENCES Student (Std_Id),
    FOREIGN KEY (CS_ClassID)
        REFERENCES ClassRoom (Class_ID)
);

CREATE TABLE Attendance (
    A_StdID INT NOT NULL,
    A_Remarks VARCHAR(20) NOT NULL,
    A_Status VARCHAR(20) NOT NULL,
    A_Date DATETIME NOT NULL,
    FOREIGN KEY (A_StdID)
        REFERENCES Student (Std_Id)
);

CREATE TABLE Exam_Type (
    Exam_TypeID INT PRIMARY KEY AUTO_INCREMENT,
    Exam_Name VARCHAR(20) UNIQUE NOT NULL,
    Description VARCHAR(20)
);

CREATE TABLE Exam (
    Exam_ID INT PRIMARY KEY AUTO_INCREMENT,
    Exam_TypeID INT NOT NULL,
    Exam_Name VARCHAR(20) UNIQUE NOT NULL,
    Exam_Start_DateTime DATETIME NOT NULL,
    FOREIGN KEY (Exam_TypeID)
        REFERENCES Exam_Type (Exam_TypeID)
);

CREATE TABLE Exam_Result (
    Exam_ID INT NOT NULL,
    Exam_StdID INT NOT NULL,
    Exam_Marks DECIMAL NOT NULL,
    FOREIGN KEY (Exam_ID)
        REFERENCES Exam (Exam_ID),
    FOREIGN KEY (Exam_StdID)
        REFERENCES Student (Std_Id)
);

CREATE TABLE Admin (
    Admin_ID INT PRIMARY KEY AUTO_INCREMENT,
    Admin_Name VARCHAR(25) NOT NULL,
    Admin_Email VARCHAR(30) NOT NULL,
    Admin_Pass VARCHAR(20) NOT NULL
);

CREATE TABLE Fees (
    Fees_ID INT PRIMARY KEY AUTO_INCREMENT,
    Fees_StdID INT NOT NULL,
    Fees_PreviousCharges DECIMAL NOT NULL,
    Fees_DateTime DATETIME NOT NULL,
    FOREIGN KEY (Fees_StdID)
        REFERENCES Student (Std_Id)
);

Delimiter $$
create procedure Addclass (in class_name varchar(45),in teacher_id int,in section_name varchar(45))
begin
declare id int;
set id = (select max(Section_ID) from Section);
insert into ClassRoom(Class_Description) values (class_name);
insert into Section values (id+1,classid,teacher_id,section_name);
end $$

Delimiter $$
create procedure Editclass (in classid int , in class_name varchar(45),in teacher_id int,in section_name varchar(45))
begin
declare id int;
set id = (select Section_ID from Section s where s.Section_ClassID = classid and s.Section_UnderObservation = teacher_id and s.Section_Name = section_name);
update ClassRoom set  Class_Description = class_name where Class_ID = classid;
update Section s set s.Section_ClassID = classid , s.Section_UnderObservation = teacher_id , s.Section_Name = section_name
where Section_ID = id;
end $$
call Editclass(4,"7",3,"D");

select distinct c.Class_ID , c. Class_Description ,s.Section_Name from ClassRoom c 
inner join Section s on s.Section_ClassID = c.Class_ID inner join Employee E on E.E_ID = s.Section_UnderObservation;


create view ViewClass as 
select distinct c.Class_ID , c. Class_Description ,concat(E.E_Fname," ",E.E_Lname) as Teacher,s.Section_Name from ClassRoom c 
inner join Section s on s.Section_ClassID = c.Class_ID inner join Employee E on E.E_ID=s.Section_UnderObservation;

select * from ViewClass;

delimiter $$
create procedure AddSubject(in subject_id int , in Subject_name varchar(50),in Subject_classid int ,in subject_description varchar(60))
begin
insert into Subjects values(subject_id,Subject_name,Subject_classid,subject_description);
End$$

call AddSubject(2,"ComputerScience",1,"CS");

delimiter $$
create procedure EditSubject(in subject_id int , in Subject_name varchar(50),in Subject_classid int ,in subject_description varchar(60))
begin
update Subjects set Subject_Name = Subject_name ,Subject_ClassID = Subject_classid,Subject_Description = subject_description 
where Subject_ID = subject_id;
End$$

call EditSubject(1,"maths",4,"MATHS");

create view ViewSubject as
select * from Subjects;

select * from ViewSubject;

delimiter $$
create procedure AddEmployee1(in emp_fname varchar(30),in emp_lname varchar(30),
in emp_email varchar(30),in emp_pass varchar(30),in emp_dob date,in emp_telno varchar(20),
emp_mobno varchar(20), emp_doj date,emp_status varchar(30),emp_gender varchar(10),emp_roleid int,
emp_salary decimal(10,0))
begin
insert into Employee(E_Fname,E_Lname,E_Email,E_Pass,E_DOB,E_TelNo,E_MobileNo,E_DOJ,E_Status,E_Gender,E_RoleID,E_Salary) values(emp_fname,emp_lname,emp_email,emp_pass,emp_dob,emp_telno,emp_mobno,emp_doj,emp_status,emp_gender,
emp_roleid,emp_salary);
End$$

call AddEmployee1("Ahsan","Nadeem","ahnkhn@gmail.com","123",'2000-01-01/',"02150124511","03452641781",'2021-01-13',"Working","Male",1,25000);

delimiter $$
create procedure EditEmployee(in emp_id int , in emp_fname varchar(30),in emp_lname varchar(30),
in emp_email varchar(30),in emp_pass varchar(30),in emp_dob date,in emp_telno varchar(20),
emp_mobno varchar(20), emp_doj date,emp_status varchar(30),emp_gender varchar(10),emp_roleid int,
emp_salary decimal(10,0))
begin
update Employee set E_Fname = emp_fname,E_Lname = emp_lname,E_Email = emp_email,E_Pass = emp_pass,E_DOB = emp_dob,
E_TelNo = emp_telno,E_MobileNo = emp_mobno,E_DOJ = emp_doj,E_Status = emp_status,E_Gender = emp_gender,
E_RoleID = emp_roleid, E_Salary = emp_salary where  E_ID=emp_id;
End$$
call EditEmployee(2,"Ahsan","Nadeem","ahnkhn01@gmail.com","123",'2000-01-01/',"02150124511","03452641780",'2021-01-13',"Leave","Male",1,30000);

create view ViewEmployee as
select * from Employee; 

select * from ViewEmployee;

delimiter $$
create procedure AddStudent(in std_id int,in std_Fname varchar(30),
in std_Lname varchar(30),in std_Email varchar(30),in std_Pass varchar(30),
in std_DOB date, in std_telno varchar(20),in std_Mobno varchar(20),
in std_DOA date,in std_Status varchar(30),in std_gender varchar(10),
in std_cid int,in std_secid int,in std_guardianid int)
begin
insert into Student values(std_id,std_Fname,std_Lname,std_Email,std_Pass,std_DOB,
std_DOB,std_telno,std_Mobno,std_DOA,std_Status,std_gender,std_cid,std_secid,std_guardianid);
End$$

call AddStudent(3,"Ahsan","Nadeem","ahn01@gmail.com","123",'2000-05-10',"0215014525","03398745200",'2007-06-22',"Admitted","Male",1,1,12);

delimiter $$
create procedure EditStudent(in id int,in std_fname varchar(30),
in std_lname varchar(30),in std_email varchar(30),in std_pass varchar(30),
in std_dob date, in std_telno varchar(20),in std_Mobno varchar(20),
in std_doa date,in std_status varchar(30),in std_gender varchar(10),
in std_cid int,in std_secid int,in std_guardianid int)
begin
update Student set Std_Fname = std_fname,Std_Lname = std_lname, Std_Email = std_email,Std_Pass = std_pass,
Std_DOb = std_dob,Std_TelNo = std_telno, Std_MobileNo = std_Mobno,Std_DOA = std_doa, Std_Status = std_status,
Std_Gender = std_gender,Std_ClassID = std_cid, Std_SectionID = std_secid,Std_GuardianID = std_guardianid
where Std_Id = id;
End$$
call EditStudent(3,"M","Kjnjk","01@gmail.com","123",'2000-08-24',"0215014566","03398745209",'2006-10-12',"Leave","M",4,1,12);
delimiter $$
create procedure AddGuardian(in gr_id int,in gr_fname varchar(30),
in gr_lname varchar(30),in gr_email varchar(30),in gr_pass varchar(30),
in gr_cnic varchar(20),in gr_telno varchar(20),in gr_mobno varchar(20),
in gr_address varchar(100),in gr_relationship varchar(100))
begin
insert into Guardian values (gr_id,gr_fname,gr_lname,gr_email,gr_pass,gr_cnic,
gr_telno,gr_mobno,gr_address,gr_relationship);
end $$

call AddGuardian(13,"MUNEEB","KHAN","mk01@gmail.com","mkkk","12345678900","02154678901","032124569801","Gulshan Iqbal","Father");

delimiter $$
create procedure EditGuardian(in id int,in gr_fname varchar(30),
in gr_lname varchar(30),in gr_email varchar(30),in gr_pass varchar(30),
in gr_cnic varchar(20),in gr_telno varchar(20),in gr_mobno varchar(20),
in gr_address varchar(100),in gr_relationship varchar(100))
begin
update Guardian set Gr_Fname = gr_fname,Gr_Lname = gr_lname, Gr_Email = gr_email,Gr_Pass = gr_pass,Gr_CNIC = gr_cnic,
Gr_TelNo = gr_telno,Gr_MobileNo = gr_mobno,Gr_Address = gr_address,Gr_Relationship = gr_relationship 
where Gr_Id = id;
end $$

call EditGuardian(12,"MK","AK","akhter@gmail.com","akhter123","12345678910","02154678941","032124569871","DHA-PHASE 6","Father");
create table Student(
Std_Id int auto_increment primary key not null,
Std_Fname varchar(30) not null,
Std_Lname varchar(30) not null,
Std_Email varchar(30) not null,
Std_Pass varchar(30) not null,
Std_DOB date not null,
Std_TelNo varchar(20),
Std_MobileNo varchar(20),
Std_DOA date not null,
Std_Status varchar(30) not null,
Std_Gender varchar(10) not null,
Std_ClassID int not null,
Std_SectionID int not null,
Std_GuardianID int not null,
foreign key (Std_ClassID) references ClassRoom(Class_ID),
foreign key (Std_SectionID) references Section(Section_ID),
foreign key (Std_GuardianID) references Guardian(Gr_Id) 
);

create view ViewStudent as 
select * from Student;

select * from ViewStudent;

create view ViewGuardian as
select * from Guardian;
delimiter $$
create procedure AddResult(in R_Id int, R_EType int , in R_total decimal(10,0),in R_Obtain decimal(10,0), in R_grade varchar(45),in R_Percent decimal(10,3),in R_Stdid int)
begin
insert into Result values (R_Id,R_EType,R_Total,R_Obtain,R_grade,R_Percent,R_Stdid);
end $$
call AddResult(1,12,800,740,"A",85,3);

delimiter $$
create procedure EditResult(in R_Id int, R_EType int , in R_total decimal(10,0),in R_Obtain decimal(10,0), in R_grade varchar(45),in R_Percent decimal(10,3),in R_Stdid int)
begin
update Result set Result_ExamTypeID = R_EType,Result_TotalMarks = R_Total,Result_ObtainMarks = R_Obtain,Result_Grade = R_grade,Result_Percentage = R_Percent,Result_StdID = R_Stdid  where Result_ID = R_Id;
end $$

call EditResult(1,12,700,540,"B",79,2);

create view ViewExamResult as
select s.Std_Id as "Student ID",concat(s.Std_Fname," ",s.Std_Lname) as "Student Name",sub.Subject_Name as "Subject",ET.Exam_Name as "Exam Type",e.Exam_ObtainMarks as "Obtain Marks",e.Exam_TotalMarks as "Total Marks",e.Exam_Grade as "Grade" from Exam_Result e inner join Student s on s.Std_Id =  e.Exam_StdID inner join Exam E on E.Exam_ID = e.Exam_ID inner join Exam_Type ET on ET.Exam_TypeID = E.Exam_TypeID inner join Subjects sub on sub.Subject_ID = E.Exam_SubjectID ;

delimiter $$
create procedure AddTimetable(in id int,secid int,in Day varchar(10),in starttime time,in description varchar(60),in subid int,in endtime time)
begin
insert into TimeTable values(id,secid,Day,starttime,description,subid,endtime);
end $$

call AddTimetable(1,2,"TUESDAY",'17:2:12',"mm",1,now());

delimiter $$
create procedure EditTimetable(in id int,secid int,in Day varchar(10),in starttime time,in description varchar(60),in subid int,in endtime time)
begin
update TimeTable set TT_SectionID = secid,TT_Day = Day,TT_StartTime = starttime,TT_Description = description,TT_SubjectID = subid ,TT_EndTime = endtime where  TT_ID = id ;
end $$

call EditTimetable(1,1,"Wed",now(),"test",2,'11:26:13');

create view ViewTimetable as 
select * from TimeTable; 

select * from ViewTimetable where TT_SectionID = 2;
delimiter $$
create procedure AddExam(in e_id int ,in e_typeid int,in e_cid int, e_starttime datetime,in e_subid int)
begin
insert into Exam values(e_id,e_typeid,e_cid,e_starttime,e_subid);
end $$

call AddExam(3,12,4,'2021-01-25 04:5:12',2);

delimiter $$
create procedure EditExam(in e_id int ,in e_typeid int,in e_cid int, e_starttime datetime,in e_subid int)
begin
update Exam set Exam_TypeID = e_typeid ,Exam_ClassID = e_cid,Exam_Start_DateTime = e_starttime, Exam_SubjectID = e_subid where Exam_ID = e_id;
end $$

call EditExam(3,12,5,'2021-01-25 04:5:12',1);

create view ViewExam as
select * from Exam;

select * from ViewExam;

delimiter $$
create procedure MarkAttendance(in sid int,in remarks varchar(20),in status varchar(20),in date datetime)
begin
insert into Attendance values (sid,remarks,status,date);
end $$

call MarkAttendance(3,"Cell","Late",now());

delimiter $$
create procedure EditAttendance(in sid int,in remarks varchar(20),in status varchar(20),in date datetime)
begin
update Attendance set A_Remarks = remarks ,A_Status = status ,A_Date = date where A_StdID = sid; 
end $$

call EditAttendance(3,"absent","Present",now());

create view ViewAttendance as 
select * from Attendance;

delimiter $$
create procedure AddSubjectteaches(in id int,in subteachby int,in subjectteach_cid int,in startdate date,in S_enddate date,in dropstatus varchar(45),in outcome varchar(70),in subject_id int)
begin
insert into SubjectTeaches values (id,subteachby,subjectteach_cid,startdate,S_enddate,dropstatus,outcome,subject_id);
end $$

delimiter $$
create procedure EditSubjectteaches(in id int,in subteachby int,in subjectteach_cid int,in startdate date,in S_enddate date,in dropstatus varchar(45),in outcome varchar(70),in subject_id int)
begin
update SubjectTeaches set SubjectTeachesBy = subteachby, SubjectTeachesClassID = subjectteach_cid,SubjectTeachesStartDate = startdate,SubjectTeachesEndDate = S_enddate,SubjectTeachesDropStatus = dropstatus,SubjectTeachesOutCome = outcome,SubjectTeaches_SubjectID = subject_id where idSubjectTeaches =  id;
end $$

create view ViewSubjectTeaches as 
select * from SubjectTeaches; 

delimiter $$
create procedure AddFees(in F_ID int,in F_stdid int,in F_PC decimal(10,0),in F_Issuedate datetime,in F_duedate datetime,in F_discount decimal(10,2),in F_DR varchar(70),in Feesstatus varchar(45),in Fees_amount decimal(10,0),
in Fees_AC decimal(10,0),in paiddate date)
begin
insert into AddFees values(F_ID,F_stdid,F_PC,F_Issuedate,F_duedate,F_discount,F_DR,Feesstatus,Fees_amount,Fees_AC,paiddate);
end $$

delimiter $$
create procedure EditFees(in F_ID int,in F_stdid int,in F_PC decimal(10,0),in F_Issuedate datetime,in F_duedate datetime,in F_discount decimal(10,2),in F_DR varchar(70),in Feesstatus varchar(45),in Fees_amount decimal(10,0),
in Fees_AC decimal(10,0),in paiddate date)
begin
update AddFees Set Fees_StdID = F_stdid,Fees_PreviousCharges = F_PC,Fees_IssueDateTime = F_Issuedate,Fees_DueDateTime = F_duedate,Fees_Discount = F_discount,Fees_DiscountReason = F_DR,FeesStatus=Feesstatus,Fees_Amount = Fees_amount,Fees_AdditionalCharges = Fees_AC,Fees_PaidDate = paiddate where Fees_ID = F_ID;
end $$

create view ViewFees as 
select * from Fees;

create table eventonStudent
(
std_id int,
std_fname varchar(30),
std_lname varchar(30),
std_email varchar(30),
std_pass varchar(30),
std_dob date,
std_Telno varchar(20),
std_mobileno varchar(20),
std_doa date,
std_status varchar(30),
std_gender varchar(10),
std_classid int,
std_secid int,
std_gid int,
operation_perform varchar(50),
change_time time
);
drop trigger student;
delimiter $$
create trigger student
after update on Student for each row
begin
insert into eventonStudent values(old.Std_Id,old.Std_Fname,old.Std_Lname,old.Std_Email,old.Std_Pass,old.Std_DOB,old.Std_TelNo,old.Std_MobileNo,old.Std_DOA,old.Std_Status,old.Std_Gender,old.Std_ClassID,old.Std_SectionID,old.Std_GuardianID,"Update",now());
end $$
create table eventonResult
(
R_id int,
R_ExamType_ID int,
R_Totalmarks decimal(10,0),
R_ObtainMarks decimal(10,0),
R_grade varchar(45),
R_percent decimal(10,3),
R_stdId int,
operation_perform nvarchar(45),
change_time time
);
drop trigger result;
delimiter $$
create trigger result
after update on Result for each row
begin
insert into eventonResult values(old.Result_ID,old.Result_ExamTypeID,old.Result_TotalMarks,old.Result_ObtainMarks,old.Result_Grade,old.Result_Percentage,old.Result_StdID,"UPDATE",curtime());
end $$

create table eventonEmployee
(
E_ID int,
E_Fname varchar(30),
E_Lname varchar(30),
E_Email varchar(30),
E_Pass varchar(30),
E_DOB date,
E_TelNo varchar(20),
E_MobileNo varchar(20),
E_DOJ date,
E_Status varchar(30),
E_Gender varchar(10),
E_RoleID int,
E_Salary decimal(10,0),
operation_perform nvarchar(45),
change_time time
);

delimiter $$
create trigger employee
after update on Employee for each row
begin
insert into eventonEmployee values(old.E_ID,old.E_Fname,old.E_Lname,old.E_Email,old.E_Pass,old.E_DOB,old.E_TelNo,old.E_MobileNo,old.E_DOJ,old.E_Status,old.E_Gender,old.E_RoleID,old.E_Salary,"Update",curtime());
end $$


create table eventonGuardian
(
Gr_ID int,
Gr_Fname varchar(30),
Gr_Lname varchar(30),
Gr_Email varchar(30),
Gr_Pass varchar(30),
Gr_CNIC varchar(20),
Gr_TelNo varchar(20),
Gr_MobileNo varchar(20),
Gr_Address varchar(100),
Gr_Relationship varchar(100),
operation_perform nvarchar(45),
change_time time
);

delimiter $$
create trigger guardian
after update on Guardian for each row
begin
insert into eventonGuardian values(old.Gr_Id,old.Gr_Fname,old.Gr_Lname,old.Gr_Email,old.Gr_Pass,old.Gr_CNIC,old.Gr_TelNo,old.Gr_MobileNo,old.Gr_Address,old.Gr_Relationship,"Update",curtime());
end $$
drop trigger guardian