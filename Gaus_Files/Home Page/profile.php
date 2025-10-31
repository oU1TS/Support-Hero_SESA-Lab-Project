<?php

include("../connection.php");

session_start();

// Check if the user is logged in and store the state in a variable
$is_logged_in = isset($_SESSION['loggedin']) && $_SESSION['loggedin'] === true;

if ($is_logged_in) {
    // Grab user info if they are logged in
    $username = $_SESSION['username'];
    $user_type = $_SESSION['user_type'];
    $user_email = $_SESSION['email'];
    $user_id = $_SESSION['user_id'];
}

// Total Balance
$sql = "SELECT balance FROM account where user_id='$user_id'";
$result = mysqli_query($conn, $sql);
if ($result) {
    $row_2 = mysqli_fetch_assoc($result);
    $Balance = $row_2['balance'];
} else {
    $Balance = 0;
}

?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User Profile</title>
    <!-- Link to the new light-theme CSS -->
    <link rel="stylesheet" href="profile.css">
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;700&display=swap" rel="stylesheet">
</head>

<body>

    <div class="dashboard-layout">

        <!-- ===== USER SIDEBAR ===== -->
        <nav class="sidebar">
            <div class="sidebar-header">
                <h2>User Menu</h2>
            </div>
            <ul>
                <li><a href="index.php">Go to Home Page</a></li>

                <?php
                if ($user_type == 'admin') {
                    echo '<li><a href="admin.php">Dashboard</a></li>
                    <li><a href="../Services/service.php">My Services</a></li>
                <li><a href="my_tasks.php">My Tasks</a></li>
                <li><a href="edit_profile.php">Edit Profile</a></li>
                    
                    ';
                }
                ?>
                <li><a href="#"><?php echo $user_type; ?> Profile</a></li>

                <li><a href="../Registration_Login/logout.php">Logout</a></li>
            </ul>
        </nav>

        <!-- ===== MAIN CONTENT ===== -->
        <main class="main-content">
            <div class="dashboard-container">
                <h1>User Profile</h1>

                <div class="dashboard-content">
                    <!-- User Info Card -->
                    <div class="info-card">
                        <h2><?php echo $user_type; ?> Info:</h2>
                        <p><strong>Name:</strong> <?php echo $username; ?></p>
                        <p><strong>ID:</strong> <?php echo $user_id; ?></p>
                        <p><strong>Email:</strong> <?php echo $user_email; ?></p>
                    </div>

                    <!-- User Activity Card -->
                    <div class="overview-card">
                        <h2>My Activity:</h2>
                        <p class="overview-note">A summary of your services and tasks.</p>

                        <div class="metrics-grid">
                            <a href="#" class="metric-item">
                                <p><?php echo $Balance; ?><br>Balance</p>
                            </a>

                        </div>
                    </div>
                </div>
            </div>
        </main>
    </div>
</body>

</html>