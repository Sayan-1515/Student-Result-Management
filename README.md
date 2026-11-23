# 🎓 Student Result Management System

A **MySQL-based Student Result Management System** designed to manage student information, academic records, examination marks, grades, and performance reports efficiently.

This project demonstrates how SQL can be used to organize academic data, maintain relationships between multiple tables, automate grade calculations, and generate meaningful student performance reports.

---

## 📌 Project Overview

Managing student academic records manually can be time-consuming and complicated, especially when dealing with multiple classes, subjects, examinations, and students.

The Student Result Management System provides a structured database solution to manage these records efficiently.

It helps organize student details, store examination marks, calculate academic performance, identify class toppers, and generate individual student result summaries.

---

## 🎯 Project Objectives

- Manage student and class information.
- Maintain subject and examination records.
- Store and validate student examination marks.
- Automatically assign grades based on marks.
- Calculate total marks and average scores.
- Identify class and section toppers.
- Generate student performance reports.
- Export result reports into CSV format.

---

## 🛠️ Technologies Used

| Technology | Purpose |
|---|---|
| MySQL | Database Management |
| SQL | Data Manipulation and Analysis |
| MySQL Workbench | Database Development |
| CSV | Result Data Export |

---

## 🗄️ Database Structure

The project uses five main relational tables.

| Table Name | Description |
|---|---|
| `classes` | Stores class, section, and class teacher details. |
| `students` | Stores student personal and admission details. |
| `subjects` | Maintains subject information and maximum marks. |
| `exams` | Stores examination names, dates, and academic years. |
| `marks` | Stores student marks and automatically assigned grades. |

### Database Relationships

- Each class can contain multiple students.
- Each student belongs to a class.
- Each subject can have marks for multiple students.
- Each examination contains marks for different subjects.
- The marks table connects students, subjects, and examinations through foreign keys.

---

## ✨ Key Features

### 1. Student Management
- Store student names, roll numbers, gender, and date of birth.
- Maintain admission information.
- Organize students according to classes and sections.

### 2. Examination Management
- Maintain examination details.
- Manage multiple subjects.
- Store examination marks for individual students.

### 3. Automatic Grade Calculation
Uses MySQL triggers to automatically assign grades based on marks.

| Marks | Grade |
|---|---|
| 90–100 | A+ |
| 80–89 | A |
| 70–79 | B |
| 60–69 | C |
| 40–59 | D |
| Below 40 | F |

### 4. Marks Validation
A MySQL trigger validates marks before insertion and prevents invalid marks outside the 0–100 range.

### 5. Class Topper Analysis
Identifies the highest-performing students based on their total marks across classes and sections.

### 6. Subject Performance Analysis
Calculates:
- Average marks for each subject.
- Highest marks.
- Lowest marks.
- Total number of students evaluated.

### 7. Student Result Reports
Generates a consolidated student report containing:

- Student ID
- Student Name
- Roll Number
- Class and Section
- Total Marks
- Average Marks
- Overall Percentage

### 8. Transaction Management
Demonstrates SQL transaction operations using:
- START TRANSACTION
- COMMIT
- ROLLBACK

### 9. CSV Export
Exports the consolidated student result report into a CSV file for further analysis.

---

## 📂 Project Files

| File Name | Description |
|---|---|
| `PROJECT-student_result_management.sql` | Complete SQL database script |
| `result sheetALL.csv` | Student result dataset |
| `Student_Result_Management_System_Presentation.ppt` | Project presentation |

---

## ⚙️ How to Run the Project

Follow these steps to execute the project on your system.

**Step 1: Clone the Repository**

```bash
git clone https://github.com/Sayan-1515/Student-Result-Management.git
```

**Step 2: Open MySQL Workbench**

Open MySQL Workbench and connect to your MySQL server.

**Step 3: Open the SQL File**

Open the following file from the downloaded project:

```text
PROJECT-student_result_management.sql
```

**Step 4: Execute the SQL Script**

Execute the SQL statements to:

1. Create the database.
2. Create the required tables.
3. Insert sample datasets.
4. Create triggers.
5. Generate student performance reports.

Note: Some statements require appropriate MySQL privileges. The CSV export section also requires a permitted MySQL output directory. If necessary, execute that section separately.

**Step 5: Verify the Results**

Select the database and run:

```sql
USE student_result_management;

SHOW TABLES;

SELECT * FROM students;

SELECT * FROM marks;

SELECT * FROM all_student_final_report;
```

---

## 📊 SQL Concepts Practiced

This project demonstrates practical implementation of the following SQL concepts:

- Database and Table Creation
- Primary Keys and Foreign Keys
- Constraints and Data Validation
- INSERT, UPDATE, DELETE and SELECT
- INNER JOIN
- GROUP BY and ORDER BY
- Aggregate Functions (SUM, AVG, MIN, MAX, COUNT)
- Subqueries
- Views
- Triggers
- CASE Statements
- Transactions
- COMMIT and ROLLBACK
- CSV Data Export

---

## 🚀 Future Improvements

- Develop a student and teacher login system.
- Create a web-based result dashboard.
- Add graphical student performance visualization.
- Implement attendance management.
- Generate downloadable PDF report cards.
- Add year-wise academic performance comparison.


**Thank you for visiting my project!**
