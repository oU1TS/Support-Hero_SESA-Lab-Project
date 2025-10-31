<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Dashboard</title>
    <link rel="stylesheet" href="admin.css">
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;700&display=swap" rel="stylesheet">
    <?php
    include("../connection.php");

    // Total Users
    $sql = "SELECT COUNT(user_id) AS total_users FROM account";
    $result = mysqli_query($conn, $sql);
    if ($result) {
        $row_1 = mysqli_fetch_assoc($result);
        $TotalUser = $row_1['total_users'];
    } else {
        $TotalUser = 0;
    }
    // Total Balance
    $sql = "SELECT SUM(balance) AS total_balance FROM account";
    $result = mysqli_query($conn, $sql);
    if ($result) {
        $row_2 = mysqli_fetch_assoc($result);
        $TotalBalance = $row_2['total_balance'];
    } else {
        $TotalBalance = 0;
    }
    // Total Services
    $sql = "SELECT COUNT(service_id) AS total_service FROM service";
    $result = mysqli_query($conn, $sql);
    if ($result) {
        $row_2 = mysqli_fetch_assoc($result);
        $TotalServices = $row_2['total_service'];
    } else {
        $TotalServices = 0;
    }
    // Total Requests
    $sql = "SELECT COUNT(service_id) AS total_service FROM service WHERE service_type='request' ";
    $result = mysqli_query($conn, $sql);
    if ($result) {
        $row_2 = mysqli_fetch_assoc($result);
        $TotalRequests = $row_2['total_service'];
    } else {
        $TotalRequests = 0;
    }
    // Total Offers
    $sql = "SELECT COUNT(service_id) AS total_service FROM service WHERE service_type='offer' ";
    $result = mysqli_query($conn, $sql);
    if ($result) {
        $row_2 = mysqli_fetch_assoc($result);
        $TotalOffers = $row_2['total_service'];
    } else {
        $TotalOffers = 0;
    }


    ?>
</head>

<body>
    <div class="dashboard-container">
        <h1>Admin Dashboard</h1>

        <div class="dashboard-content">
            <div class="admin-info-card">
                <h2>Admin Info:</h2>
                <p><strong>name:</strong> Jubair</p>
                <p><strong>id:</strong> 112</p>
                <p><strong>email:</strong> jubair.ahmed@gmail.com</p>
            </div>

            <div class="overview-card">
                <h2>Overview:</h2>
                <p class="overview-note">These will show counters (some are clickable for detail)</p>

                <div class="metrics-grid">
                    <div class="metric-item">
                        <?php
                        echo "<p> $TotalUser <br>Total Users</p>";
                        ?>
                    </div>
                    <div class="metric-item">
                        <?php
                        echo "<p> $TotalBalance <br>Total Balance</p>";
                        ?>
                    </div>
                    <div class="metric-item">
                        <?php
                        echo "<p> $TotalServices <br>Total Services</p>";
                        ?>
                    </div>
                    <div class="metric-item">
                        <?php
                        echo "<p> $TotalRequests <br>Total Requests</p>";
                        ?>
                    </div>
                    <div class="metric-item">
                        <?php
                        echo "<p> $TotalOffers <br>Total Offers</p>";
                        ?>
                    </div>
                    <div class="metric-item">?</div>
                    <div class="metric-item">?</div>
                    <div class="metric-item">?</div>
                    <div class="metric-item">?</div>
                </div>

                <p class="analysis-note">Based on Feedback and Analysis</p>
            </div>
        </div>
    </div>
</body>

</html>