<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="css/search-res.css">
    <title>GubServer</title>
</head>

<body>
    <header>
        <nav class="container">
            <div class="logo">
                <a href="index.html">GUB CONNECT</a>
            </div>
            <div class="menu_toggle" onclick="toggleMenu()"></div>
            <div class="main_menu">
                <ul>
                    <li><a href="index.html">Home</a></li>
                    <li><a href="index.html#about">Complaint Box</a></li>
                    <li><a href="index.html#contact">Contact</a></li>
                    <li><a href="add-member.html">Sign Up</a></li>
                    <li><a href="login.php">Change Info</a></li>
                    <li><a href="search.php">Find Donor</a></li>
                </ul>
            </div>
        </nav>
    </header>
    <main>
        <section id="searchBlood">
            <div class="container">
                <form id="searchForm" method="POST" action="search.php#donorTable">
                    <select name="bloodgroup" id="bloodgroup">
                        <option value="Select">Select</option>
                        <option value="A+">A+</option>
                        <option value="A-">A-</option>
                        <option value="B+">B+</option>
                        <option value="B-">B-</option>
                        <option value="AB+">AB+</option>
                        <option value="AB-">AB-</option>
                        <option value="O+">O+</option>
                        <option value="O-">O-</option>
                    </select>
                </form>
            </div>
        </section>
        <section>
            <div class="container table-container">
                <h2>Blood Donor List</h2>
                <table id="donorTable">
                    <thead>
                        <tr>
                            <th>Name</th>
                            <th>Student Id</th>
                            <th>Blood Group</th>
                            <th>Gender</th>
                            <th>Mobile</th>
                            <th>Email</th>
                            <th>City</th>
                            <th>Photo</th>
                        </tr>
                    </thead>
                    <tbody id="donorTableBody">
    <?php
    include 'connectDB.php';

    if ($_SERVER["REQUEST_METHOD"] == "POST") {
        $bloodgroup = $_POST['bloodgroup'];

        $query = "SELECT * FROM donors WHERE BloodGroup = ?";

        $stmt = $con->prepare($query);
        $stmt->bind_param("s", $bloodgroup);

        $stmt->execute();

        $result = $stmt->get_result();

        if ($result->num_rows > 0) {    
            while ($row = $result->fetch_assoc()) {
                echo "<tr>
                        <td>" . htmlspecialchars($row["Name"]) . "</td>
                        <td>" . htmlspecialchars($row["Student_Id"]) . "</td>
                        <td>" . htmlspecialchars($row["BloodGroup"]) . "</td>
                        <td>" . htmlspecialchars($row["Gender"]) . "</td>
                        <td><a href='tel:" . htmlspecialchars($row["Mobile"]) . "'>" . htmlspecialchars($row["Mobile"]) . "</a></td>
                        <td><a href='mailto:" . htmlspecialchars($row["Email"]) . "'>" . htmlspecialchars($row["Email"]) . "</a></td>
                        <td>" . htmlspecialchars($row["City"]) . "</td>
                        <td><img src='" . htmlspecialchars($row["ImagePath"]) . "' alt='Donor Image' style='width:50px; height:50px;'></td>
                    </tr>";
            }
        } else {
            echo "<tr><td colspan='8'>No donors found with Blood Group $bloodgroup</td></tr>";
        }
        $stmt->close();
    }
    ?>
</tbody>

                </table>
            </div>
        </section>
    </main>

    <footer>
    <p>&copy; <span id="currentYear"></span> All Rights Reserved. Developed By Emon & <a href="https://github.com/SabbirShadows"
    target="_blank">Sabbir</a></p>
    </footer>
    <script src="script.js"></script>
    <script>
        document.getElementById('bloodgroup').addEventListener('change', function () {
            document.getElementById('searchForm').submit();
        });
    </script>
</body>

</html>