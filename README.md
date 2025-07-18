# 🎓 Research Publication Management System

Welcome to the **Research Publication Management System** for Amity University Patna! 🚀

Easily manage, track, and celebrate your research achievements — from journal papers to books — all in one place. Whether you're a faculty member submitting your latest work or an admin approving and organizing research, this platform is designed to make your academic journey smoother and more fun! ✨

---

## 🌟 Features

- 👤 **User Registration & Login** – Secure, simple, and fast for both faculty and admins.
- 🏠 **Role-Based Dashboards** – Personalized views for faculty and administrators.
- 📚 **Research Output Management** –
  - Add, edit, and delete journal papers, conference papers, book chapters, and books.
  - Upload supporting documents and evidence.
- ✅ **Approval Workflow** –
  - Admins can review, approve, or reject submissions.
  - Leave remarks and feedback for each submission.
- 🔍 **Smart Search & Filter** –
  - Find research by author, department, year, or title in seconds.
- 📊 **Statistics at a Glance** –
  - Dashboard cards show counts of approved research outputs by type.

---

## 🛠️ Tech Stack

- **PHP** (Core, procedural)
- **MySQL/MariaDB**
- **HTML, CSS** (with Tailwind CSS), **JavaScript**

---

## 🗄️ Database
- Main database: `scholarsphere`
- SQL schema: [`scholarsphere.sql`](scholarsphere.sql)

---

## 🚦 Quick Start

1. **Clone the repository:**
   ```
   git clone https://github.com/Shilpa3107/College_project
   ```
2. **Import the Database:**
   - Use phpMyAdmin or MySQL CLI to import `scholarsphere.sql` into your MySQL server.
3. **Configure Database Connection:**
   - Update database credentials in `connect.php` if needed.
4. **Run Locally:**
   - Place the project in your web server directory (e.g., `htdocs` for XAMPP).
   - Open your browser and go to: [http://localhost/research](http://localhost/research)

---

## 🧑‍💻 How to Use

- **Faculty:**
  - Register, log in, and submit your research outputs.
  - Track the approval status of your submissions.
- **Admin:**
  - Log in as admin to review, approve, or reject submissions.
  - Add remarks and manage all research records.
- **Everyone:**
  - Use the search/filter page to find research outputs by author, department, year, or title.

---

## 📁 File Structure (Key Files)

- `index.php` – Login & registration
- `index1.php` – Faculty dashboard
- `index1admin.php` – Admin dashboard
- `books.php`, `Papers.php`, etc. – Submission forms
- `filterbox.php` – Search/filter interface
- `scholarsphere.sql` – Database schema

---

## 📝 License

This project is for academic and internal use at **Amity University Patna**.

---

## 💡 Pro Tip

> Stay organized, keep your research up-to-date, and let your achievements shine! 🌟

---

Made with ❤️ for the Amity University Patna research community.