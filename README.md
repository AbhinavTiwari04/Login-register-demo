# 🔐 Login & Registration System (JSP + Servlet + Oracle)

A simple web-based authentication system built using Java Servlets, JSP, and Oracle Database.  
Users can register, login, and view a personalized welcome page.

---

## 🚀 Features
- User Registration
- Login Authentication
- Welcome Page with Username
- JDBC Database Connectivity
- Clean UI using HTML & CSS

---

## 🛠️ Tech Stack
- Java (Servlets & JSP)
- Oracle 11g XE
- JDBC
- Apache Tomcat
- HTML, CSS

---

## 📁 Project Structure
src/
└── com.c7
├── LoginServlet.java
├── RegisterServlet.java
└── db/
└── DBConnection.java

webapp/
├── Login.jsp
├── Register.jsp
├── Welcome.jsp
└── WEB-INF/
└── lib/
└── ojdbc6.jar

<img width="1920" height="1080" alt="image" src="https://github.com/user-attachments/assets/3c21bd90-9488-462e-a23a-a8f04cf73f1f" />
---

## ⚙️ Setup Instructions

1. Clone the repository
2. Import into Eclipse as Dynamic Web Project
3. Add `ojdbc6.jar` to:
   - `WEB-INF/lib`
4. Configure Oracle DB:
```sql
CREATE TABLE records (
    username VARCHAR2(50),
    password VARCHAR2(50)
);


