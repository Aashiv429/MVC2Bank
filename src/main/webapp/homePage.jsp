<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>Banking Application - Dashboard</title>
    <style>
        body {
            margin: 0;
            font-family: Arial, sans-serif;
            background-color: #f4f4f4; /* Light gray background */
            color: #333; /* Dark gray text color */
        }

        header {
            background-color: #acc6cf;
            /* color: black; Dark teal header background color */
            padding: 20px;
            width: 100%;
            display: flex;
        }

        h1 {
            color: black; /* White heading color */
            margin: 0;
            font-size: 36px;
        }

        .container {
            max-width: 800px;
            margin: 0 auto;
            padding: 40px;
        }

        .cta-button {
            display: inline-block;
            padding: 14px 28px;
            background-color: #383a3a; /* Dark teal button background color */
            color: #fff; /* White button text color */
            text-decoration: none;
            font-size: 18px;
            border-radius: 4px;
            transition: background-color 0.3s;
            margin-right: 10px;
        }

        .cta-button:hover {
            background-color: #006666; /* Lighter teal on hover */
        }

        .dashboard {
            display: flex;
            justify-content: center;
            flex-wrap: wrap;
            margin-top: 0px;
        }

        .dashboard-item {
            max-width: 250px;
            padding: 20px;
            background-color: #fff;
            border-radius: 4px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            margin: 10px;
            text-align: center;
        }

        .dashboard-icon {
            font-size: 36px;
            color: #008080; /* Dark teal icon color */
            margin-bottom: 20px;
        }

        footer {
            background-color: #acc6cf; /* Dark teal footer background color */
            color: black; /* White text color */
            text-align: center;
            padding: 20px;
            /* bottom: 0; */
            width: 100%;
            margin-top: 10px;
        }
        .logout{
          margin-left: 300px;
          margin-top: 15px;
        }
        h1{
          margin-left: 300px;
        }
    </style>
</head>

<body>
    <header>
        <h1>Banking Application</h1> 
        <a href="Logout" class="logout">Logout</a>
    </header>

    <div class="container">
        <div class="dashboard">
            <div class="dashboard-item">
                <div class="dashboard-icon">腸</div>
                <h3>Check Balance</h3>
                <a class="cta-button" href="CheckBalance">Check Balance</a>
            </div>
            <div class="dashboard-item">
                <div class="dashboard-icon">柏</div>
                <h3>Change PIN</h3>
                <a class="cta-button" href="changePin.html">Change PIN</a>
            </div>
            <div class="dashboard-item">
                <div class="dashboard-icon">統</div>
                <h3>Apply Loan</h3>
                <a class="cta-button" href="loan.html">Apply Loan</a>
            </div>
            <div class="dashboard-item">
                <div class="dashboard-icon">頂</div>
                <h3>Transfer Amount</h3>
                <a class="cta-button" href="transfer.html">Transfer Amount</a>
            </div>
            <div class="dashboard-item">
                <div class="dashboard-icon">答</div>
                <h3>View Transactions</h3>
                <a class="cta-button" href="TransactionHistory.jsp">View Transactions</a>
            </div>
        </div>
    </div>

    <footer>
        &copy; 2023 Banking Application. All rights reserved.
    </footer>
</body>

</html>