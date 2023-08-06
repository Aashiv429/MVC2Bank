<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Transaction History</title>
    <!-- Link Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            padding-top: 20px;
        }

        .container {
            max-width: 600px;
            margin: 0 auto;
            background-color: #fff;
            padding: 30px;
            border-radius: 8px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
        }

        .transaction-item {
            border: 1px solid #ccc;
            border-radius: 8px;
            padding: 15px;
            margin-bottom: 10px;
        }

        .transaction-item p {
            font-size: 16px;
            margin-bottom: 5px;
        }

        .btn-back {
            background-color: #008080;
            color: #fff;
            padding: 10px 20px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            font-size: 16px;
            margin-top: 20px;
        }

        .btn-back:hover {
            background-color: #006666;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Transaction History</h2>
        <div class="transaction-list">
           <%

    int acc_no = (int) session.getAttribute("accno");

    String url = "jdbc:mysql://localhost:3306/bank";

    String user = "root";

    String pwd = "Minion@29";

 

    try {

        Class.forName("com.mysql.cj.jdbc.Driver");

        Connection con = DriverManager.getConnection(url, user, pwd);

 

        PreparedStatement pstmt = con.prepareStatement(

        "select * from transferStatus where sender_accno = ? or receiver_accno=? order by transferId desc");

        pstmt.setInt(1, acc_no);

        pstmt.setInt(2, acc_no);

 

        ResultSet resultSet = pstmt.executeQuery();

 

        while (resultSet.next()) {

            if (resultSet.getInt("sender_accno") == acc_no) {

 

        pstmt = con.prepareStatement("select * from bankapp where accno = ?");

        pstmt.setInt(1, resultSet.getInt("receiver_accno"));

        ResultSet secondPerson = pstmt.executeQuery();

        secondPerson.next();

 

        out.println("Sent:<br>");

        out.println("Sent To: " + resultSet.getInt("receiver_accno") + "<br>");

        out.println("Receiver Name: " + secondPerson.getString("cust_name") + "<br>");
        out.println("---------------------------------------"+ "<br>");

 

            } else {

        pstmt = con.prepareStatement("select * from bankapp where accno = ?");

        pstmt.setInt(1, resultSet.getInt("sender_accno"));

        ResultSet secondPerson = pstmt.executeQuery();

        secondPerson.next();

 

        out.println("Received:<br>");

        out.println("Received From: " + resultSet.getInt("receiver_accno") + "<br>");

        out.println("Sender Name: " + secondPerson.getString("cust_name") + "<br>");
        out.println("---------------------------------------"+ "<br>");

 

            }

 

        }

    } catch (Exception e) {

        e.printStackTrace();

    }

    %>

        </div>
        <br>
        <a href="homePage.jsp" class="btn-back">Go To Home</a>
    </div>

    <!-- Link Bootstrap JS and jQuery -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.1/dist/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
