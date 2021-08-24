CREATE TABLE Department
(DeptNo INT,
DName VARCHAR(20),
Budget DECIMAL(9,2),
CONSTRAINT PK_Department_DeptID PRIMARY KEY (DeptID)
CONSTRAINT CK_Department_Budget CHECK (Budget &le;5000000));

CREATE TABLE Project
	(ProjectNo INT,
	Location VARCHAR(20),
	StartDate DATETIME,
CONSTRAINT PK_Project_ProjectNo PRIMARY KEY (ProjectNo));

CREATE TABLE Employee
(EmpNo INT),
EmpFName VARCHAR(10),
EmpLName VARCHAR(10),
EmpPhone INT,
Salary DECIMAL(10,2),
BirthDate DATETIME,
MarriageDate DATETIME),
CONSTRAINT PK_Employee_EmpNo PRIMARY KEY (EmpNo),
CONSTRAINT FK_Employee_DeptNo FOREIGN KEY (DeptNo) REFERENCES
Department (DeptNo) ON DELETE CASCADE ON UPDATE CASCADE,
CONSTRAINT CK_Employee_Salary CHECK (Salary&gt;0),
CONSTRAINT CK_Employee_BirthDate CHECK (BirthDate &lt;MarriageDate));


