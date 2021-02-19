CREATE TABLE Parent (
    Pr_Id INT PRIMARY KEY AUTO_INCREMENT,
    Pr_Fname NVARCHAR(30) NOT NULL,
    Pr_Lname NVARCHAR(30) NOT NULL,
    Pr_Email NVARCHAR(30) NOT NULL,
    Pr_Pass NVARCHAR(30) NOT NULL,
    Pr_CNIC VARCHAR(20) NOT NULL,
    Pr_TelNo VARCHAR(20),
    Pr_MobileNo VARCHAR(20) NOT NULL,
    Pr_Gender VARCHAR(10) NOT NULL
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

CREATE TABLE TimeTable (
    TT_ID INT AUTO_INCREMENT PRIMARY KEY,
    TT_ClassID INT NOT NULL,
    TT_Suject INT NOT NULL,
    TT_Day NVARCHAR(10) UNIQUE NOT NULL,
    TT_Time TIME UNIQUE NOT NULL,
    TT_Description NVARCHAR(30),
    FOREIGN KEY (TT_ClassID)
        REFERENCES ClassRoom (Class_ID),
    FOREIGN KEY (TT_Suject)
        REFERENCES Subjects (Subject_ID)
);
