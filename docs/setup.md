# Tracker - Setup Guide
<br><br>

## 1. Clone the Repository

First, clone the repository to your local machine:

```bash
git clone https://github.com/YasinShamsedini/ExpenseRevenueTracker.git
cd ExpenseRevenueTracker
```
<br>


## 2. Set Up a Virtual Environment (Recommended)

**Linux/macOS:**

```bash
python3 -m venv venv
source venv/bin/activate
```

**Windows:**

```bash
python -m venv venv
venv\Scripts\activate
```
<br>

## 3. Install Dependencies

Install all the necessary Python dependencies from `requirements.txt`:

```bash
pip install -r requirements.txt
```
<br>

## 4. Database Setup

### Create Database (SSMS or SQL Client)

Create a new database named `FinDB`:

```sql
CREATE DATABASE FinDB;
```

### Update Database Connection String

In the `database.py` (or any relevant configuration file), update the connection string with your SQL Server credentials:

```python
connection_string = (
    r'DRIVER={ODBC Driver 18 for SQL Server};'
    r'SERVER=your_server_name;'
    r'DATABASE=FinDB;'
    r'UID=your_username;'
    r'PWD=your_password;'
    r'TrustServerCertificate=yes;'
)
```

Make sure to replace `your_server_name`, `your_username`, and `your_password` with the correct values.

### Execute the SQL Script

Run the `database_setup.sql` script to set up the necessary tables and insert sample data. You can do this using SQL Server Management Studio (SSMS) or any other SQL client.
<br><br>

## 5. Run the Application

Finally, run the application using:

```bash
python main.py  # Or python finance_app.py
```

---
<br><br>
## Troubleshooting 🛠️

Here are some common issues you may encounter during setup and their solutions:

### 1. **Database Connection Errors:**
- **Problem:** If you're unable to connect to the SQL Server database.
- **Solution:** 
  - Double-check your SQL Server credentials (server name, username, password).
  - Ensure SQL Server is running and accessible.
  - Ensure the ODBC driver is properly installed (ODBC Driver 18 or later).

### 2. **Missing Dependencies:**
- **Problem:** If the application throws errors related to missing packages.
- **Solution:**
  - Make sure you've activated your virtual environment (`source venv/bin/activate` or `venv\Scripts\activate`).
  - Run `pip install -r requirements.txt` to install the required dependencies.

### 3. **Import Errors:**
- **Problem:** If you see errors like `ModuleNotFoundError` for certain libraries.
- **Solution:** 
  - This often happens when a package in `requirements.txt` couldn't be installed properly.
  - Ensure you're in the correct virtual environment and that all dependencies were installed without errors.

### 4. **Date Format Errors:**
- **Problem:** If you encounter issues when inserting dates into the database.
- **Solution:**
  - Ensure you're using the **YYYY-MM-DD** format for dates. Incorrect formats may cause errors in inserting or displaying data.
  - If your database expects a different format, modify the date format before submitting it.

---

### **Explanation of Changes:**

- **Structured Setup Guide:** I've organized the steps logically to make the guide more user-friendly.
- **Clear Troubleshooting:** I provided brief descriptions and solutions for the most common issues.
- **Specific Error Fixes:** Added details for **Import Errors** and **Date Format Errors**, which should help users more easily resolve issues.
