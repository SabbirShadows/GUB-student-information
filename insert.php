<?php
include ("connectDB.php");

try {
    // Handle image upload
    if (isset($_FILES['image']) && $_FILES['image']['error'] === UPLOAD_ERR_OK) {
        $imageTmpName = $_FILES['image']['tmp_name'];
        $imageName = basename($_FILES['image']['name']);
        $uploadDir = 'uploads/';
        $uploadFilePath = $uploadDir . $imageName;

        // Ensure the uploads directory exists
        if (!file_exists($uploadDir)) {
            mkdir($uploadDir, 0777, true);
        }

        // Move the uploaded file to the uploads directory
        if (!move_uploaded_file($imageTmpName, $uploadFilePath)) {
            throw new Exception("Failed to upload image.");
        }
    } else {
        throw new Exception("No image uploaded or an error occurred.");
    }

    // Insert donor details including the image path and Student_Id
    $addDonor = "INSERT INTO donors ( Username, Password, Name, Student_Id, DOB, Gender, BloodGroup, Mobile, Email, City, ImagePath)
    VALUES ( 
            '$_POST[userName]', 
            '$_POST[password]',
            '$_POST[fullname]', 
            '$_POST[student_id]',
            '$_POST[dob]',
            '$_POST[gender]',
            '$_POST[bloodgroup]', 
            '$_POST[phone]',    
            '$_POST[email]',
            '$_POST[town]',
            '$uploadFilePath')";

    if ($con->query($addDonor) === TRUE) {
        echo "<script>
                alert('Added Successfully');
                window.location.href = 'index.html';
              </script>";
    } else {
        throw new Exception($con->error, $con->errno);
    }

} catch (Exception $e) {
    if ($e->getCode() === 1062) {
        echo "<script>
                alert('Username or Student ID already exists. Please choose a different one.');
                window.history.back();
              </script>";
    } else {
        echo "<script>
                alert('Error: " . addslashes($e->getMessage()) . "' );
                window.history.back();
              </script>";
    }
} finally {
    $con->close();
}
?>
