<?php
if ($_SERVER['REQUEST_METHOD'] === 'POST' && isset($_POST['remarks']) && isset($_POST['srNo']) && isset($_POST['submit_remarks_books'])) {
    $srNo = $_POST['srNo'];
    $remarks = $_POST['remarks'];

    // Fetch Employee ID, booktitle, and Faculty from booksbyfaculty table
    $sql = "SELECT `Employee ID`, `booktitle`, `Faculty` FROM `booksbyfaculty` WHERE `srNo` = ?";
    $stmt = $conn->prepare($sql);
    $stmt->bind_param("i", $srNo);
    $stmt->execute();
    $stmt->bind_result($employee_id, $booktitle, $Faculty);

    if ($stmt->fetch()) {
        $stmt->close();

        // Fetch email address from registerinfo table using Employee ID
        $sql = "SELECT `email` FROM `registerinfo` WHERE `emp_id` = ?";
        $stmt = $conn->prepare($sql);
        $stmt->bind_param("i", $employee_id);
        $stmt->execute();
        $stmt->bind_result($email);

        if ($stmt->fetch()) {
            $stmt->close();

            // Prepare and send email
            $subject = "Remarks on Your Book: \"$booktitle\"";
            $message = "Dear $Faculty,\n\n" .
                       "This is to inform you about the following remarks regarding your book titled \"$booktitle\":\n\n" .
                       "\"$remarks\"\n\n" .
                       "If you have any questions, please feel free to reach out.\n\n" .
                       "Best regards,\n" .
                       "Shilpa Sinha\n" .
                       "Assistant Professor\n" .
                       "Computer Science Department, Amity University\n" .
                       "Contact: +91-XXXXXXXXXX\n" .
                       "Email: shilpa.sinha3107@gmail.com";

            $check = mail($email, $subject, $message, "From:shilpa.sinha3107@gmail.com");

            if ($check) {
                echo "<script>alert('Remarks sent successfully'); location.replace('index1admin.php');</script>";
            } else {
                echo "<script>alert('Remarks saved but email not sent'); location.replace('index1admin.php');</script>";
            }
        } else {
            echo "<script>alert('Email address not found in registerinfo'); location.replace('index1admin.php');</script>";
        }
    } else {
        echo "<script>alert('Record not found in booksbyfaculty'); location.replace('index1admin.php');</script>";
    }
} 
?>
