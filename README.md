# 🏥 Hospital Management System

<p align="center">

### 💙 A Simple & Efficient Hospital Database Management System

**Built with MySQL | XAMPP | phpMyAdmin**

</p>

---

## 🌟 Project Overview

The **Hospital Management System** is a database-based project designed to manage the daily operations of a hospital efficiently.

This system helps administrators manage:

- 👨‍⚕️ Doctors
- 🧑‍🤝‍🧑 Patients
- 📅 Appointments
- 🩺 Medical Records
- 💳 Billing
- 🏥 Departments

The project demonstrates important **MySQL concepts** such as CRUD operations, Joins, Subqueries, Aggregate Functions, String Functions, Date Functions, Window Functions and CASE Expressions.

---

## 🎯 Project Objective

The main objective of this project is to develop a structured hospital database that can:

- Manage patient information
- Manage doctor information
- Schedule and track appointments
- Store medical records
- Manage hospital billing
- Analyze hospital performance
- Generate useful reports using SQL queries

---

## 🗂️ Database Structure

The project contains the following tables:

| No. | Table Name | Description |
|---|---|---|
| 1 | 👤 Patients | Stores patient information |
| 2 | 👨‍⚕️ Doctors | Stores doctor information |
| 3 | 📅 Appointments | Manages patient appointments |
| 4 | 🩺 Medical_Records | Stores diagnosis and treatment details |
| 5 | 💰 Billing | Manages invoices and payments |
| 6 | 🏥 Departments | Stores hospital departments |
| 7 | 🔗 Doctor_Departments | Connects doctors with departments |

---

## 🔗 Database Relationships

The database uses **Primary Keys** and **Foreign Keys** to maintain relationships between tables.

```text
Patients
   │
   ├───────────────┐
   │               │
   ▼               ▼
Appointments   Medical_Records
   │               │
   ▼               ▼
Doctors ◄──── Doctor_Departments ────► Departments
   │
   ▼
Billing

| Technology    | Purpose                  |
| ------------- | ------------------------ |
| 🐬 MySQL      | Database Management      |
| 🖥️ XAMPP     | Local Server Environment |
| 🌐 phpMyAdmin | Database Administration  |
| 📝 SQL        | Query Development        |
