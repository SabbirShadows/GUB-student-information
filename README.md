# **🌐 GUB Connect**

Welcome to **GUB Connect**  – a simple web project built for the Green University of Bangladesh (GUB) community.  
Think of it as a small platform where students and members can **sign up, log in, manage their profiles, and even search for blood donors**.

It’s designed to make life a little easier for the GUB family 

---

## **What You Can Do Here**

* Create an account and log in   
* Update and manage your profile   
* Search for blood donors in the community   
* Navigate through a clean and simple dashboard 

---

## **What’s Inside**

* **Frontend:** HTML, CSS, a little JavaScript  
* **Backend:** PHP  
* **Database:** MySQL

---

## **How the Project is Organized**

Here’s a quick map of the project files so you don’t get lost:

GUB\_Connect/  
 │── index.html \# Landing page  
 │── add-member.html \# Register new members  
 │── dashboard.php \# Dashboard for users  
 │── login.php \# Login form  
 │── login\_process.php \# Login handler  
 │── logout.php \# Logout script  
 │── edit\_profile.php \# Update member info  
 │── search.php \# Search donors  
 │── insert.php \# Insert data into DB  
 │── connectDB.php \# Database connection  
 │  
 ├── css/ \# Custom styles  
 ├── img/ \# Images  
 ├── uploads/ \# Uploaded member photos  
 ├── Database/ \# SQL scripts  
 └── README.md \# Documentation

\#\#  Setup Instructions

1\. Clone the repository:  
   \`\`\`bash  
   git clone https://github.com/your-username/GUB\_Connect.git  
   cd GUB\_Connect

Import the database:

* Open `Database/donors.sql` in phpMyAdmin or MySQL CLI

* Import the SQL file to create the required tables

Configure database connection:

* Update credentials in `connectDB.php`

$host \= "localhost";  
$user \= "root";  
$password \= "";  
$dbname \= "gub\_connect";

Run the project:

* Place the project folder inside `htdocs` (if using XAMPP)

* Start **Apache** & **MySQL**

* Visit: [http://localhost/GUB\_Connect](http://localhost/GUB_Connect)

---

## **Here are the preview images for my project**

---

**Home Page:**

<img width="1750" height="938" alt="find" src="https://github.com/user-attachments/assets/3cb4e6a4-2fc4-4c1c-96bb-9c48da73bdf8" />

**Filtering Students:**

<img width="1833" height="890" alt="home" src="https://github.com/user-attachments/assets/9c726151-c3b0-45a0-b458-fbf0f6db89a2" />

## **License**

This project is licensed under the **MIT License** – feel free to use and modify.

---

## **Author**

**Md. Sabbir Hossain & Emon Talukder**  
Green University of Bangladesh

---

\#\# Extra (Optional but Recommended)

\- \*\*\`.gitignore\` file\*\* (to ignore unnecessary files like \`/uploads/\` or system files)

   \`\`\`gitignore

   /uploads/

   /Database/\*.sql

   \*.zip

   \*.DS\_Store



   

