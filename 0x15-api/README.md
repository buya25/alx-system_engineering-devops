# Project Readme

## Overview

This project is a set of Python scripts that interact with a REST API to gather information about employees' TODO list progress. The gathered data can be exported to different formats such as CSV and JSON.

## General Requirements

- **Editors:** vi, vim, emacs
- **Interpreter/Compiler:** Ubuntu 20.04 LTS using python3 (version 3.8.5)
- **File Conventions:** All files must end with a new line, and the first line of all Python files should be exactly `#!/usr/bin/python3`.
- **Library Organization:** Libraries imported in Python files must be organized in alphabetical order.
- **README.md:** A mandatory README.md file should be present at the root of the project folder.
- **Code Style:** Use pycodestyle (version 2.8.*) for code style checks.
- **Executable Files:** All Python files must be executable.
- **File Length:** The length of your files will be tested using `wc`.
- **Documentation:** All modules should have documentation (use `python3 -c 'print(__import__("my_module").__doc__)'`).
- **Dictionary Access:** Use `get` to access dictionary values by key.
- **Code Execution Check:** Your code should not be executed when imported (by using `if __name__ == "__main__":`).

## Task-specific Requirements

### Task 0: Gather data from an API

Write a Python script (0-gather_data_from_an_API.py) that, using a given REST API, retrieves information about a specified employee's TODO list progress.

#### Requirements:

- Use urllib or requests module.
- Accept an integer as a parameter (employee ID).
- Display employee TODO list progress in the specified format.

Example:
```bash
python3 0-gather_data_from_an_API.py 2
```

### Task 1: Export to CSV

Extend the script from Task 0 to export data in CSV format.

#### Requirements:

- Records all tasks owned by the specified employee.
- Format: "USER_ID","USERNAME","TASK_COMPLETED_STATUS","TASK_TITLE".
- File name: USER_ID.csv.

Example:
```bash
python3 1-export_to_CSV.py 2
```

### Task 2: Export to JSON

Extend the script from Task 0 to export data in JSON format.

#### Requirements:

- Records all tasks owned by the specified employee.
- Format: { "USER_ID": [{"task": "TASK_TITLE", "completed": TASK_COMPLETED_STATUS, "username": "USERNAME"}, ...]}.
- File name: USER_ID.json.

Example:
```bash
python3 2-export_to_JSON.py 2
```

### Task 3: Dictionary of list of dictionaries

Extend the script from Task 0 to export data in JSON format.

#### Requirements:

- Records all tasks from all employees.
- Format: { "USER_ID": [{"username": "USERNAME", "task": "TASK_TITLE", "completed": TASK_COMPLETED_STATUS}, ...], ...}.
- File name: todo_all_employees.json.

## Repository Information

- **GitHub Repository:** [alx-system_engineering-devops](https://github.com/your-username/alx-system_engineering-devops)
- **Directory:** 0x15-api
- **Files:**
  - 0-gather_data_from_an_API.py
  - 1-export_to_CSV.py
  - 2-export_to_JSON.py
  - 3-dictionary_of_list_of_dictionaries.py

Feel free to update the repository link with the correct username or organization name.
