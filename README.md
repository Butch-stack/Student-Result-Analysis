# 🎓 Student Result Analysis Project

This project focuses on analyzing student academic performance using structured data analysis techniques. It simulates how data analysts work with educational datasets to uncover performance trends, identify improvement areas, and generate meaningful insights using SQL.

The project is well suited for:
- 📊 Data Analyst and Data Science beginners  
- 🎓 Students building academic or portfolio projects  
- 💼 Interview preparation for analytics roles involving structured data  

---

## 📌 Project Objective

The objective of this project is to analyze student examination results and academic performance using SQL. The project demonstrates how raw student data can be transformed into actionable insights that help in understanding overall performance, subject-wise trends, and student progress.

Through this project, SQL is used to:
- Store and manage student result data in a relational database
- Perform Exploratory Data Analysis (EDA) on scores and grades
- Clean and validate academic records
- Generate performance insights at student, subject, and class levels

---

## 📁 Dataset Description

The dataset represents student academic results collected from an educational institution. Each row corresponds to a student’s performance in a particular subject.

The dataset structure reflects real-world academic records where multiple subjects are associated with each student.

### Dataset Columns
- **student_id** – Unique identifier for each student
- **student_name** – Name of the student
- **class** – Class or grade level
- **subject** – Subject name
- **marks_obtained** – Marks scored by the student
- **total_marks** – Maximum marks for the subject
- **percentage** – Percentage score
- **grade** – Grade assigned based on percentage
- **result_status** – Pass/Fail status

---

## 🔧 Project Workflow

### 1️⃣ Database & Table Creation

```sql
CREATE TABLE student_results (
  student_id INT,
  student_name VARCHAR(100),
  class VARCHAR(50),
  subject VARCHAR(50),
  marks_obtained INT,
  total_marks INT,
  percentage NUMERIC(5,2),
  grade VARCHAR(5),
  result_status VARCHAR(10)
);

---

### Exploratory Data Analysis (EDA)

Initial exploration includes:

1.Total number of students
2.Subject-wise performance distribution
3.Average marks and percentages
4.Pass vs fail analysis
5.Identification of top and low-performing students

### Data Cleaning

1.To ensure reliable analysis:
2.Handled missing or invalid marks
3.Verified total marks consistency
4.Recalculated percentages where required
5.Standardized grade labels

5️⃣ Performance Insights

Key insights generated using SQL queries:

1.Top-performing students based on overall percentage
2.Subject-wise average scores
3.Class-wise performance comparison
4.Pass and fail rate per subject
5.Grade distribution across the class
6.Students requiring academic improvement
