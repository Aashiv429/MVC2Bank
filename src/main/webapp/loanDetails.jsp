<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Bank Application Invoice</title>
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

        .invoice-header {
            text-align: center;
            margin-bottom: 20px;
        }

        .logo {
            display: block;
            width: 100px;
            margin: 0 auto;
        }

        .invoice-title {
            font-size: 24px;
            color: #008080;
            font-weight: bold;
        }

        .invoice-details {
            font-size: 16px;
            margin-bottom: 20px;
        }

        .invoice-details p {
            margin: 10px 0;
        }

        .invoice-details strong {
            font-weight: bold;
        }

        .btn-back {
            color: #fff;
            background-color: #008080;
            padding: 10px 20px;
            border-radius: 4px;
            text-decoration: none;
            transition: background-color 0.3s;
            display: block;
            width: 120px;
            margin: 0 auto;
            font-size: 16px;
            margin-top: 30px;
        }

        .btn-back:hover {
            background-color: #006666;
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="invoice-header">
          
            <div class="invoice-title">Bank Application Invoice</div>
        </div>
        <div class="invoice-details">
        <h3>
           <%
		session = request.getSession();
		out.println("Your loan details: ");
		out.println("<br>Loan Id:  "+ session.getAttribute("l_id"));
		out.println("<br>loan type:   " +session.getAttribute("l_type"));
		out.println("<br>Tenure:   " +session.getAttribute("tenure"));
		out.println("<br>Interest:  "+session.getAttribute("interest"));
		out.println("<br>Description:  "+session.getAttribute("description"));
		%>
	  </h3>
        </div>
        <a href="homePage.jsp" class="btn-back">Go Back to Home</a>
    </div>

    <!-- Link Bootstrap JS and jQuery -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.1/dist/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
