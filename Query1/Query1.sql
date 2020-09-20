/*creaing a database*/
create database school;

/*creating a table name Faculty details*/
use school;
create table FacultyDetails( Faculty_Id	varchar(20) primary key,
Title varchar(7),
Faculty_Name varchar(30),
Faculty_Location varchar(30),	
Faculty_Track varchar(15),	
Faculty_Qualification	varchar(100),
Faculty_Experiance	int(11),
Faculty_Email varchar(100),	
Faculty_Password varchar(20)
);

/*creating a table name Batch details*/
use school;
create table BatchDetails(Batch_Id varchar(20) primary key,
	Batch_Faculty varchar(30),
	Batch_DEPT_Name	varchar(30)
);

/*creating a table name module  details*/
use school;
create table ModuleDetails(Module_Id varchar(20),
	Module_Name varchar(40),
	Module_Duration	int(11)
);

/*creating a table name Student details*/
use school;
create table StudentDetails(Student_Id	varchar(20) primary key,
Title varchar(7),
Student_Name varchar(30),	   
Student_Location varchar(30),	
Student_Track varchar(15),	
Student_Qualification varchar(200),	
Student_Email varchar(100),	
Student_Password varchar(20)
);

/*creating a table name Questions*/
use school;
create table Questions(Question_Id varchar(20) primary key,
 Module_Id varchar(20),
 Question_Text varchar(900)
 );
 
/*creating a table name Student status*/
use school;
create table StudentStatus(Student_Id	varchar(20) primary key,
Module_Id varchar(20),
Start_Date varchar(20),
End_Date varchar(20),
AFeedbackGiven varchar(20),
TFeedbackGiven varchar(20)
);

/*creating a table name Faculty feedback*/
use school;
create table FacultyFeedback(Faculty_Id	varchar(20),
Question_Id	varchar(20),
Batch_Id	varchar(20),
Module_Id	varchar(20),
Faculty_Rating int(11)
);

/*creating a table name Student feedback*/
use school;
create table StudentFeedback(Student_Id	varchar(20),
Question_Id	varchar(20),
Module_Id	varchar(20),
Student_Rating int(11)
);

/*creating a table name Login details*/
use school;
create table LoginDetails(User_Id	varchar(20),
User_Password char(20)
);

/*adding two columns to the student status table*/
alter table StudentStatus add Batch_Id varchar(20);
alter table StudentStatus add Faculty_Id  varchar(20);

/*Modify two columns data types of the student status table*/
alter table StudentStatus modify column Start_Date DATE;
alter table StudentStatus modify column End_Date DATE;

/* inserting values into faculty details table*/
insert into FacultyDetails(Faculty_Id,Title, Faculty_Name,Faculty_Location,Faculty_Track,Faculty_Qualification,Faculty_Experiance,Faculty_Email,Faculty_Password )VALUES('F001','Mr.','PANKAJ GHOSH','Pune','Java','Bachelor of Technology',12,'Pankaj.Ghosh@alliance.com','fac1@123');
insert into FacultyDetails(Faculty_Id,Title, Faculty_Name,Faculty_Location,Faculty_Track,Faculty_Qualification,Faculty_Experiance,Faculty_Email,Faculty_Password )VALUES('F002','Mr.','SANJAY RADHAKRISHNAN' ,'Bangalore','DotNet','Bachelor of Technology',12,'Sanjay.Radhakrishnan@alliance.com','fac2@123');
insert into FacultyDetails(Faculty_Id,Title, Faculty_Name,Faculty_Location,Faculty_Track,Faculty_Qualification,Faculty_Experiance,Faculty_Email,Faculty_Password )VALUES('F003','Mr.','VIJAY MATHUR','Chennai','Mainframe','Bachelor of Technology',10,'Vijay.Mathur@alliance.com','fac3@123');
insert into FacultyDetails(Faculty_Id,Title, Faculty_Name,Faculty_Location,Faculty_Track,Faculty_Qualification,Faculty_Experiance,Faculty_Email,Faculty_Password )VALUES('F004','Mrs.','NANDINI NAIR','Kolkata','Java','Master of Computer Applications',9,'Nandini.Nair@alliance.com','fac4@123');
insert into FacultyDetails(Faculty_Id,Title, Faculty_Name,Faculty_Location,Faculty_Track,Faculty_Qualification,Faculty_Experiance,Faculty_Email,Faculty_Password )VALUES('F005','Miss.','ANITHA PAREKH','Hyderabad','Testing','Master of Computer Applications',6,'Anitha.Parekh@alliance.com','fac5@123');
insert into FacultyDetails(Faculty_Id,Title, Faculty_Name,Faculty_Location,Faculty_Track,Faculty_Qualification,Faculty_Experiance,Faculty_Email,Faculty_Password )VALUES('F006','Mr.','MANOJ AGRAWAL' ,'Mumbai','Mainframe','Bachelor of Technology',9,'Manoj.Agrawal@alliance.com','fac6@123');
insert into FacultyDetails(Faculty_Id,Title, Faculty_Name,Faculty_Location,Faculty_Track,Faculty_Qualification,Faculty_Experiance,Faculty_Email,Faculty_Password )VALUES('F007','Ms.','MEENA KULKARNI','Coimbatore','Testing','Bachelor of Technology',5,'Meena.Kulkarni@alliance.com','fac7@123');
insert into FacultyDetails(Faculty_Id,Title, Faculty_Name,Faculty_Location,Faculty_Track,Faculty_Qualification,Faculty_Experiance,Faculty_Email,Faculty_Password )VALUES('F009','Mr.','SAGAR MENON' ,'Mumbai','Java','Master of Science In Information Technology',12,'Sagar.Menon@alliance.com','fac8@123');

/* inserting values into batch details table*/
insert into BatchDetails(Batch_Id,Batch_Faculty,Batch_DEPT_Name)VALUES('B001','MRS.SWATI ROY','MSP');
insert into BatchDetails(Batch_Id,Batch_Faculty,Batch_DEPT_Name)VALUES('B002','MRS.ARURNA K','HEALTHCARE');
insert into BatchDetails(Batch_Id,Batch_Faculty,Batch_DEPT_Name)VALUES('B003','MR.RAJESH KRISHNAN','LIFE SCIENCES');
insert into BatchDetails(Batch_Id,Batch_Faculty,Batch_DEPT_Name)VALUES('B004','MR.SACHIN SHETTY','BFS');
insert into BatchDetails(Batch_Id,Batch_Faculty,Batch_DEPT_Name)VALUES('B005','MR.RAMESH PATEL','COMMUNICATIONS');
insert into BatchDetails(Batch_Id,Batch_Faculty,Batch_DEPT_Name)VALUES('B006','MRS.SUSAN CHERIAN','RETAIL & HOSPITALITY');
insert into BatchDetails(Batch_Id,Batch_Faculty,Batch_DEPT_Name)VALUES('B007','MRS.SAMPADA JAIN','MSP');
insert into BatchDetails(Batch_Id,Batch_Faculty,Batch_DEPT_Name)VALUES('B008','MRS.KAVITA REGE','BPO');
insert into BatchDetails(Batch_Id,Batch_Faculty,Batch_DEPT_Name)VALUES('B009','MR.RAVI SEJPAL','MSP');

/* inserting values into module details table*/
insert into ModuleDetails(Module_Id,Module_Name,Module_Duration)VALUES('O10SQL','Oracle 10g SQL' ,16);
insert into ModuleDetails(Module_Id,Module_Name,Module_Duration)VALUES('O10PLSQL','Oracle 10g PL/ SQL' ,16);
insert into ModuleDetails(Module_Id,Module_Name,Module_Duration)VALUES('J2SE','Core Java SE 1.6',288);
insert into ModuleDetails(Module_Id,Module_Name,Module_Duration)VALUES('J2EE','Advanced Java EE 1.6',80);
insert into ModuleDetails(Module_Id,Module_Name,Module_Duration)VALUES('JAVAFX','JavaFX 2.1',80);
insert into ModuleDetails(Module_Id,Module_Name,Module_Duration)VALUES('DOTNT4','.Net Framework 4.0' ,50);
insert into ModuleDetails(Module_Id,Module_Name,Module_Duration)VALUES('SQL2008','MS SQl Server 2008',120);
insert into ModuleDetails(Module_Id,Module_Name,Module_Duration)VALUES('MSBI08','MS BI Studio 2008',158);
insert into ModuleDetails(Module_Id,Module_Name,Module_Duration)VALUES('SHRPNT','MS Share Point' ,80);
insert into ModuleDetails(Module_Id,Module_Name,Module_Duration)VALUES('ANDRD4','Android 4.0',200);
insert into ModuleDetails(Module_Id,Module_Name,Module_Duration)VALUES('EM001','Instructor',0);
insert into ModuleDetails(Module_Id,Module_Name,Module_Duration)VALUES('EM002','Course Material',0);
insert into ModuleDetails(Module_Id,Module_Name,Module_Duration)VALUES('EM003','Learning Effectiveness',0);
insert into ModuleDetails(Module_Id,Module_Name,Module_Duration)VALUES('EM004','Environment',0);
insert into ModuleDetails(Module_Id,Module_Name,Module_Duration)VALUES('EM005','Job Impact',0);
insert into ModuleDetails(Module_Id,Module_Name,Module_Duration)VALUES('TM001','Attendees',0);
insert into ModuleDetails(Module_Id,Module_Name,Module_Duration)VALUES('TM002','Course Material',0);
insert into ModuleDetails(Module_Id,Module_Name,Module_Duration)VALUES('TM003','Environment',0);

/* inserting values into student etails table*/
insert into StudentDetails(Student_Id,Title,Student_Name,Student_Location,Student_Track,Student_Qualification,Student_Email,Student_Password)VALUES('A001','Miss.','GAYATHRI NARAYANAN','Gurgaon','Java','Bachelor of Technology','Gayathri.Narayanan@hp.com','tne1@123');
insert into StudentDetails(Student_Id,Title,Student_Name,Student_Location,Student_Track,Student_Qualification,Student_Email,Student_Password)VALUES('A002','Mrs.','RADHIKA MOHAN','Kerala','Java','Bachelor of Engineering In Information Technology','Radhika.Mohan@cognizant.com','tne2@123');
insert into StudentDetails(Student_Id,Title,Student_Name,Student_Location,Student_Track,Student_Qualification,Student_Email,Student_Password)VALUES('A003','Mr.','KISHORE SRINIVAS','Chennai','Java','Bachelor of Engineering In Computers','Kishore.Srinivas@ibm.com','tne3@123');
insert into StudentDetails(Student_Id,Title,Student_Name,Student_Location,Student_Track,Student_Qualification,Student_Email,Student_Password)VALUES('A004','Mr.','ANAND RANGANATHAN','Mumbai','DotNet','Master of Computer Applications','Anand.Ranganathan@finolex.com','tne4@123');
insert into StudentDetails(Student_Id,Title,Student_Name,Student_Location,Student_Track,Student_Qualification,Student_Email,Student_Password)VALUES('A005','Miss.','LEELA MENON','Kerala','Mainframe','Bachelor of Engineering In Information Technology','Leela.Menon@microsoft.com','tne5@123');
insert into StudentDetails(Student_Id,Title,Student_Name,Student_Location,Student_Track,Student_Qualification,Student_Email,Student_Password)VALUES('A006','Mrs.','ARTI KRISHNAN','Pune','Testing','Master of Computer Applications','Arti.Krishnan@cognizant.com','tne6@123');
insert into StudentDetails(Student_Id,Title,Student_Name,Student_Location,Student_Track,Student_Qualification,Student_Email,Student_Password)VALUES('A007','Mr.','PRABHAKAR SHUNMUGHAM','Mumbai','Java','Bachelor of Technology','Prabhakar.Shunmugham@honda.com','tne7@123');

/* inserting values into questions table*/
insert into Questions(Question_Id,Module_Id,Question_Text)VALUES('Q001','EM001','Instructor knowledgeable and able to handle all your queries');
insert into Questions(Question_Id,Module_Id,Question_Text)VALUES('Q002','EM001','All the topics in a particular course handled by the trainer without any gaps or slippages');
insert into Questions(Question_Id,Module_Id,Question_Text)VALUES('Q003','EM002','The course materials presentation, handson, etc. refered during the training are relevant and useful.');
insert into Questions(Question_Id,Module_Id,Question_Text)VALUES('Q004','EM002','The Hands on session adequate enough to grasp the understanding of the topic.');
insert into Questions(Question_Id,Module_Id,Question_Text)VALUES('Q005','EM002','The reference materials suggested for each module are adequate.');
insert into Questions(Question_Id,Module_Id,Question_Text)VALUES('Q006','EM003','Knowledge and skills presented in this training are applicatible at your work');
insert into Questions(Question_Id,Module_Id,Question_Text)VALUES('Q007','EM003','This training increases my proficiency level');
insert into Questions(Question_Id,Module_Id,Question_Text)VALUES('Q008','EM004','The physical environment e.g. classroom space, air-conditioning was conducive to learning.');
insert into Questions(Question_Id,Module_Id,Question_Text)VALUES('Q009','EM004','The software/hardware environment provided was sufficient for the purpose of the training.');
insert into Questions(Question_Id,Module_Id,Question_Text)VALUES('Q010','EM005','This training will improve your job performance.');
insert into Questions(Question_Id,Module_Id,Question_Text)VALUES('Q011','EM005','This training align with the business priorities and goals.');
insert into Questions(Question_Id,Module_Id,Question_Text)VALUES('Q012','TM001','Participants were receptive and had attitude towards learning.');
insert into Questions(Question_Id,Module_Id,Question_Text)VALUES('Q013','TM001','All participats gained the knowledge and the practical skills after this training.');
insert into Questions(Question_Id,Module_Id,Question_Text)VALUES('Q014','TM002','The course materials presentation, handson, etc. available for the session covers the entire objectives of the course.');
insert into Questions(Question_Id,Module_Id,Question_Text)VALUES('Q015','TM002','Complexity of the course is adequate for the particpate level.');
insert into Questions(Question_Id,Module_Id,Question_Text)VALUES('Q016','TM002','Case study and practical demos helpful in understanding of the topic');
insert into Questions(Question_Id,Module_Id,Question_Text)VALUES('Q017','TM003','The physical environment e.g. classroom space, air-conditioning was conducive to learning.');
insert into Questions(Question_Id,Module_Id,Question_Text)VALUES('Q018','TM003','The software/hardware environment provided was adequate for the purpose of the training.');

/*inserting values into student status table*/
insert into StudentStatus(Student_Id,Module_Id,AFeedbackGiven,TFeedbackGiven,Start_Date,End_Date)VALUES('A001','O10SQL','B001','F001','2000-12-15','2000-12-25');
insert into StudentStatus(Student_Id,Module_Id,AFeedbackGiven,TFeedbackGiven,Start_Date,End_Date)VALUES('A002','O10SQL','B001','F001','2000-12-15','2000-12-25');
insert into StudentStatus(Student_Id,Module_Id,AFeedbackGiven,TFeedbackGiven,Start_Date,End_Date)VALUES('A003','O10SQL','B001','F001','2000-12-15','2000-12-25');
insert into StudentStatus(Student_Id,Module_Id,AFeedbackGiven,TFeedbackGiven,Start_Date,End_Date)VALUES('A001','O10PLSQL','B002','F002','2001-2-1','2001-2-12');
insert into StudentStatus(Student_Id,Module_Id,AFeedbackGiven,TFeedbackGiven,Start_Date,End_Date)VALUES('A002','O10PLSQL','B002','F002','2001-2-1','2001-2-12');
insert into StudentStatus(Student_Id,Module_Id,AFeedbackGiven,TFeedbackGiven,Start_Date,End_Date)VALUES('A003','O10PLSQL','B002','F002','2001-2-1','2001-2-12');
insert into StudentStatus(Student_Id,Module_Id,AFeedbackGiven,TFeedbackGiven,Start_Date,End_Date)VALUES('A001','J2SE','B003','F003','2002-8-20','2002-10-25');
insert into StudentStatus(Student_Id,Module_Id,AFeedbackGiven,TFeedbackGiven,Start_Date,End_Date)VALUES('A002','J2SE','B003','F003','2002-8-20','2002-10-25');
insert into StudentStatus(Student_Id,Module_Id,AFeedbackGiven,TFeedbackGiven,Start_Date,End_Date)VALUES('A001','J2EE','B004','F004','2005-12-1','2005-12-25');
insert into StudentStatus(Student_Id,Module_Id,AFeedbackGiven,TFeedbackGiven,Start_Date,End_Date)VALUES('A002','J2EE','B004','F004','2005-12-1','2005-12-25');
insert into StudentStatus(Student_Id,Module_Id,AFeedbackGiven,TFeedbackGiven,Start_Date,End_Date)VALUES('A003','J2EE','B004','F004','2005-12-1','2005-12-25');
insert into StudentStatus(Student_Id,Module_Id,AFeedbackGiven,TFeedbackGiven,Start_Date,End_Date)VALUES('A004','J2EE','B004','F004','2005-12-1','2005-12-25');
insert into StudentStatus(Student_Id,Module_Id,AFeedbackGiven,TFeedbackGiven,Start_Date,End_Date)VALUES('A005','JAVAFX','B005','F006','2005-12-4','2005-12-20');
insert into StudentStatus(Student_Id,Module_Id,AFeedbackGiven,TFeedbackGiven,Start_Date,End_Date)VALUES('A006','JAVAFX','B005','F006','2005-12-4','2005-12-20');
insert into StudentStatus(Student_Id,Module_Id,AFeedbackGiven,TFeedbackGiven,Start_Date,End_Date)VALUES('A006','SQL2008','B006','F007','2007-6-21','2007-6-28');
insert into StudentStatus(Student_Id,Module_Id,AFeedbackGiven,TFeedbackGiven,Start_Date,End_Date)VALUES('A007','SQL2008','B006','F007','2007-6-21','2007-6-28');
insert into StudentStatus(Student_Id,Module_Id,AFeedbackGiven,TFeedbackGiven,Start_Date,End_Date)VALUES('A002','MSBI08','B007','F006','2009-6-26','2009-6-29');
insert into StudentStatus(Student_Id,Module_Id,AFeedbackGiven,TFeedbackGiven,Start_Date,End_Date)VALUES('A003','MSBI08','B007','F006','2009-6-26','2009-6-29');
insert into StudentStatus(Student_Id,Module_Id,AFeedbackGiven,TFeedbackGiven,Start_Date,End_Date)VALUES('A004','MSBI08','B007','F006','2009-6-26','2009-6-29');
insert into StudentStatus(Student_Id,Module_Id,AFeedbackGiven,TFeedbackGiven,Start_Date,End_Date)VALUES('A002','ANDRD4','B008','F005','2010-6-5','2010-6-28');
insert into StudentStatus(Student_Id,Module_Id,AFeedbackGiven,TFeedbackGiven,Start_Date,End_Date)VALUES('A005','ANDRD4','B008','F005','2010-6-5','2010-6-28');
insert into StudentStatus(Student_Id,Module_Id,AFeedbackGiven,TFeedbackGiven,Start_Date,End_Date)VALUES('A003','ANDRD4','B009','F005','2011-8-1','2011-8-20');
insert into StudentStatus(Student_Id,Module_Id,AFeedbackGiven,TFeedbackGiven,Start_Date,End_Date)VALUES('A006','ANDRD4','B009','F005','2011-8-1','2011-8-20');

/*Removing following record form Student Status table */
delete from StudentStatus where Student_Id ='A003' and Module_Id = 'J2EE'and AFeedbackGiven = 'B004' and TFeedbackGiven= 'F004' and Start_Date = '2005-12-1' and End_Date ='2005-12-25';

/*Fetching first five faculty who have maximum years of experience and display there details*/
select Faculty_Name,Faculty_Experiance from FacultyDetails order by Faculty_Experiance desc limit 5;

/*Removing table Login Details from database*/
drop table LoginDetails;

/*display the id, name, track and location of all Faculties who’s Experience are greater than 4 years*/
select Faculty_Id,Faculty_Name,Faculty_Track,Faculty_Location from FacultyDetails where Faculty_Experiance > 4;

/*Select all the modules whose duration > 150 */
select * from ModuleDetails where Module_Duration > 150;

/*Select all the Faculty Id, Faculty name whose qualification is not ‘Bachelor of Technology’*/
select Faculty_Id,Faculty_Name from FacultyDetails where not Faculty_Qualification = "Bachelor of Technology";

/*Select all the modules whose duration is between 100 and 200*/
select * from ModuleDetails where Module_Duration between 100 and 200;

/*Display the Faculty Id, Faculty name with first name starting with ‘A’*/
select Faculty_Id,left(Faculty_Name,position(' 'in Faculty_Name)-1) as firstName from FacultyDetails where Faculty_Name like "A%";

/*Display the Faculty Id, Faculty name whose first name contains a character ‘M’*/
select Faculty_Id,left(Faculty_Name,position(' 'in Faculty_Name)-1) as firstName from FacultyDetails where (left(Faculty_Name,position(' 'in Faculty_Name)-1))  like "%M%";

/*display the module name and module duration of the entire modules. */
select Module_Name,Module_Duration from ModuleDetails;

/*display list of all the module id and module names with first letter capital of module name from ModuleDetails table*/
select Module_Id,Module_Name from ModuleDetails where Module_Name regexp '^[A-Z]';

/*display the module id and the number of days between the current date and module start date from Student_Status table */
select  Module_Id,datediff(End_Date,Start_Date) from StudentStatus;

/*concatenate the Module Name and Module id in the below mentioned format and display all the modules from the moduleDetails table */
select concat('ModuleId is:',Module_Id,'Module Name is:',Module_Name) from ModuleDetails;

/*display all the Module Name in upper case. */
select upper(Module_Name) from ModuleDetail;

/*display all the characters between 2 to 4 of the Module name column for all the modules in the ModuleDetails table. */
select Module_Name,substring(Module_Name,2,4) from ModuleDetails;

/*total count of all the students */
select count(*) as total_count from StudentDetails;

/*fetches and displays all the faculties details who don’t have an email id*/
select * from FacultyDetails where Faculty_Email = null;

/* display the total faculty members not having their email ID.*/
select count(*) as total_count from FacultyDetails where Faculty_Email = null;

/* Display the names of all the modules where the module name does not exists*/
select Module_Name from ModuleDetails where not exists( select Module_Name from ModuleDetails);

/*fetch and display the number of students enrolled for modules on a specific date grouped by start date and display start date and total number of students */
select Start_Date, count(Student_Id)  from StudentStatus group by Start_Date having Start_Date ='2000-12-15';

/*fetch and display the number of students enrolled for modules where faculty id is ‘F001’ grouped by start date and display start date and total number of students*/
select Start_Date,count(Module_Id) from StudentStatus where StudentStatus.TFeedbackGiven='F001' group by Start_Date ;

/*fetch and display the number of students enrolled for modules where faculty id is ‘F001’ grouped by module start date and display module start date and total number of students where the total number of students > 2*/
select Start_Date,count(Module_Id) as total_count from StudentStatus where StudentStatus.TFeedbackGiven='F001' group by Start_Date having count(Module_Id)>2;

/* fetch and display all the modules in ascending order of module duration*/
select * from ModuleDetails order by Module_Duration;

/*fetch and display the student’s name, their module enrolled (module name and module id). Order them according to their name*/
select StudentDetails.Student_Name,m.Module_Id,m.Module_Id from StudentDetails ,ModuleDetails m order by Student_Name;

/*fetch and display faculty_id and batch_id which will fetch all the combinations of faculty IDs and batch IDs*/
select o.AFeedbackGiven,o.TFeedbackGiven,d.AFeedbackGiven,d.TFeedbackGiven from StudentStatus o cross join StudentStatus d;

/*fetch and display the records of all the details from Student_Status and batch_info, wherever batch_id is common in both the tables*/
select * from StudentStatus,BatchDetails where BatchDetails.Batch_Id = StudentStatus.AFeedbackGiven;

/*fetch and display the student IDs of the students tagged to faculty and all the faculty IDs irrespective of whether there are any students tagged to them or not*/
select StudentStatus.Student_Id,FacultyDetails.Faculty_Id from StudentStatus right join FacultyDetails on  StudentStatus.TFeedbackGiven = FacultyDetails.Faculty_Id;

/*fetch and display the student IDs of all the students and faculty IDs of all faculties irrespective of whetherthese is any association between students and faculty Ids and vice versa*/
select StudentStatus.Student_Id,FacultyDetails.Faculty_Id from StudentStatus  join FacultyDetails on  StudentStatus.TFeedbackGiven = FacultyDetails.Faculty_Id;











