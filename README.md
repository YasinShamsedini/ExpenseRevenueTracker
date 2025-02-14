# ExpenseRevenueTracker 📊

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![Python](https://img.shields.io/badge/Python-3.x-blue)](https://www.python.org/downloads/)
[![SQL Server](https://img.shields.io/badge/SQL%20Server-2017+-red)](https://www.microsoft.com/en-us/sql-server/sql-server-downloads)
[![CustomTkinter](https://img.shields.io/badge/CustomTkinter-5.0+-blueviolet)](https://github.com/TomSchimansky/CustomTkinter)

## Overview 📝

FinanceTracker is a super simple Python app designed to help you keep tabs on your company's finances. Think of it as a friendly way to manage your income and expenses without getting bogged down in complicated accounting stuff. Built with a clean interface using CustomTkinter and a trusty SQL Server database, it's all about making financial tracking less of a headache. Oh, and I built this whole thing in just one day!

## Key Features ✨

*   **Revenue Tracking:** 💰 Super easy way to log where your money's coming from – amounts, sources, payment methods, you name it!
*   **Expense Tracking:** 🧾 Just as easy to track where your money's going! Keep tabs on expenses with all the details you need.
*   **Data Visualization:** 📈 See key numbers like your ratio, profit, and loss so you can understand the data easier
*   **Financial Metrics:** 📊 Crushes the numbers so you don't have to! It automatically calculates:
    *   **Ratio:** Revenue to Expense Ratio (as a percentage) - How well your revenue is covering costs.
    *   **Net Profit/Loss:** Total Revenue minus Total Expenses - Are you in the green or the red?
    *   **Gross Profit Margin:** (Total Revenue - Total Expenses) / Total Revenue (as a percentage) - How efficiently you're making money.
*   **Data Export:** 📤 Need to dive deeper? Export all your revenue and expense data to Excel for some serious number crunching.
*   **User-Friendly Interface:** 🎨 Clean and simple design using CustomTkinter. The "frame-in-frame" thing keeps everything organized and easy to find.
*   **Data Persistence:** 🗄️ Your data is safe and sound in a SQL Server database.
*   **CRUD Operations:** ✍️ You've got full control! Add, view, edit, and delete all your revenue and expense entries.
*   **Rapid Development:** ⚡ Built this whole thing in just one day, a testament to how quickly you can get stuff done!

<br><br>
![Alt Text](https://github.com/YasinShamsedini/ExpenseRevenueTracker/blob/main/images/mainfin.JPG)
<br><br>
![Alt Text](https://github.com/YasinShamsedini/ExpenseRevenueTracker/blob/main/images/detaiexpfin.JPG)
<br><br>


## Technologies Used 💻

*   **Python:** Programming language for the application logic.
*   **CustomTkinter:** GUI framework for creating the user interface.
*   **SQL Server:** Relational database management system for storing application data.
*   **pyodbc:** Python library for connecting to SQL Server databases.
*   **openpyxl:** Python library for working with Excel files.
*   **datetime:** Python module for managing dates and times.
*   **re:** Python module for working with Regular Expressions.
*   **os:** Python module for working with operating system.

## Installation ⚙️

1.  **Clone the repository:**

    ```bash
    git clone [repository_url]
    cd [repository_directory]
    ```

2.  **Create a virtual environment (recommended):**

    ```bash
    python -m venv venv
    source venv/bin/activate  # On Linux/macOS
    venv\Scripts\activate  # On Windows
    ```

3.  **Install dependencies:**

    ```bash
    pip install -r requirements.txt
    ```

4.  **Configure the database:**

    *   Ensure you have SQL Server installed and running.
    *   Create a database named `FinDB`.
    *   Update the database connection string in the `Database` class (or a configuration file) with your SQL Server credentials.
    *   Run the SQL script (`database_setup.sql`) to create the tables and insert sample data. You can use SQL Server Management Studio (SSMS) or another SQL client.

5.  **Run the application:**

    ```bash
    python main.py  # Or python finance_app.py, depending on your entry point
    ```

## Database Setup 🗄️

A SQL script (`database_setup.sql`) is provided to create the necessary tables and insert sample data into the `FinDB` database. Follow these steps to set up the database:

1.  Open SQL Server Management Studio (SSMS) or another SQL client.
2.  Connect to your SQL Server instance.
3.  Create a new database named `FinDB`.
4.  Open the `database_setup.sql` file.
5.  Execute the script to create the tables and insert sample data.

## Usage 🚀

1.  **Launch the application:** Run `python main.py` (or the appropriate entry point).
2.  **Navigate the interface:** Use the buttons to switch between Revenue Management and Expense Management.
3.  **Adding Revenue/Expenses:**
    *   Enter the relevant information (amount, type, payment method, source, date, description) in the input fields.
    *   Click "Add Revenue" or "Add Expense" to save the data to the database.
4.  **Viewing/Managing Details:**
    *   Click "Revenue Detail" or "Expense Detail" to view and manage existing records.
    *   Select a row in the table to populate the input fields for updating or deleting records.
5.  **Exporting Data:**
    *   Click "Export Revenue to Excel" or "Export Expenses to Excel" to export the corresponding data to an Excel file.

## Known Issue ⚠️

Okay, so here's a little thing: after you add, change, or delete data, the updated info *might* not show up right away in the detail views. To see the latest and greatest, just hit that "Refresh Values" button on the main page, or restart the app. I'm working on making this automatic, so stay tuned!

## Future Enhancements 🛠️

*   **Automated Data Refresh:** Make those detail views update automatically – no more manual refreshing!
*   **Graphical Reports:** Turn all those numbers into pretty charts and graphs.
*   **Real-Time Data Tracking:** Get up-to-the-minute insights into your finances.
*   **User Roles and Permissions:** Add user logins and different permission levels for extra security.

## Contributing 🤝

We welcome contributions to this project! If you'd like to contribute:

1.  Fork the repository.
2.  Create a new branch for your feature or bug fix.
3.  Make your changes.
4.  Write tests to ensure your changes are working correctly.
5.  Submit a pull request.

## License 📜

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## Acknowledgments 🙏

*   Special thanks to the [CustomTkinter](https://github.com/TomSchimansky/CustomTkinter) team for providing a modern and customizable Tkinter framework.
*   Thanks to the open-source community for providing valuable resources and libraries.

## Contact 📧

If you have any questions or feedback, you can contact me at [Email](yasin.shamsedini@gmail.com).
