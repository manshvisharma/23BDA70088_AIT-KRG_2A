CREATE TABLE Department (
    ID INT PRIMARY KEY,
    DEPT_NAME VARCHAR(50)
);

CREATE TABLE Employee (
    ID INT,
    NAME VARCHAR(50),
    SALARY INT,
    DEPT_ID INT,
    FOREIGN KEY (DEPT_ID) REFERENCES Department(ID)
);

-- Department data
INSERT INTO Department (ID, DEPT_NAME) VALUES
(1, 'IT'),
(2, 'SALES');

-- Employee data
INSERT INTO Employee (ID, NAME, SALARY, DEPT_ID) VALUES
(1, 'JOE', 70000, 1),
(2, 'JIM', 90000, 1),
(3, 'HENRY', 80000, 2),
(4, 'SAM', 60000, 2),
(5, 'MAX', 90000, 1);

SELECT d.DEPT_NAME, e.NAME, e.SALARY
FROM Employee e
JOIN Department d
    ON e.DEPT_ID = d.ID
WHERE e.SALARY = (
    SELECT MAX(e2.SALARY)
    FROM Employee e2
    WHERE e2.DEPT_ID = e.DEPT_ID
)
ORDER BY d.DEPT_NAME, e.NAME;
