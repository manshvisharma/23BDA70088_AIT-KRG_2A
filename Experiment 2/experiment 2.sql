USE NEW


CREATE TABLE Employee (
    EmpID INT PRIMARY KEY,
    Ename VARCHAR(50),
    Department VARCHAR(50),
    ManagerID INT
);

INSERT INTO Employee (EmpID, Ename, Department, ManagerID) VALUES
(1, 'Alice',   'HR',      NULL),
(2, 'Bob',     'Finance', 1),
(3, 'Charlie', 'IT',      1),
(4, 'David',   'Finance', 2),
(5, 'Eve',     'IT',      3),
(6, 'Frank',   'HR',      1);

SELECT 
    E1.Ename AS EmployeeName,
    E1.Department AS EmployeeDept,
    E2.Ename AS ManagerName,
    E2.Department AS ManagerDept
FROM 
    Employee E1
LEFT OUTER JOIN 
    Employee E2
ON 
    E1.ManagerID = E2.EmpID;
