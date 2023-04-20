<!DOCTYPE html>
<html lang='en'>

<head>
    <meta charset='UTF-8'>
    <meta http-equiv='X-UA-Compatible' content='IE=edge'>
    <meta name='viewport' content='width=device-width, initial-scale=1.0'>
    <!-- <link rel='stylesheet' href='css/email.css'> -->
    <title>Email</title>
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Comfortaa&display=swap');
        * {
            box-sizing: border-box;
            font-family: Comfortaa;
        }
        /* Main Body Styling */
        
        body {
            height: 100vh;
            background-color: rgb(212, 222, 230);
            display: flex;
            align-items: center;
            justify-content: center;
        }
        /* <!-- Wrapper -->*/
        
        .wrapper {
            width: 550px;
            height: auto;
            padding: 15px;
            background-color: white;
            border-radius: 7px;
        }
        /* <!-- Email MSG Header --> */
        
        .email-msg-header {
            text-align: center;
            font-size: 20px;
        }
        /* <!-- Company Name --> */
        
        .company-name {
            width: 100%;
            font-size: 35px;
            color: gray;
            text-align: center;
        }
        /* <!-- Welcome Text --> */
        
        .welcome-text {
            text-align: center;
        }
        /* <!-- Verify Account Button --> */
        
        .verify-account-btn {
            padding: 15px;
            background-color: rgb(0, 109, 252);
            text-decoration: none;
            color: white;
            border-radius: 5px;
        }
        /* <!-- Copy Right Wrapper --> */
        
        .copy-right {
            padding: 15px;
            color: gray;
            font-size: 14px;
            margin: 20px 0px;
            display: flex;
            align-items: center;
            justify-content: center;
        }
    </style>
</head>

<body>
    <!-- Wrapper -->
    <div class='wrapper'>
        <!-- Email MSG Header -->
        <h2 class='email-msg-header'>
            Welcome and Thank You for Choosing
        </h2>
        <!-- End of Email MSG Header -->

        <!-- Company Name -->
        <div class='company-name'>Easy Way Bank</div>
        <!--End of  Company Name -->
        <hr>
        <!-- Welcome Text -->
        <p class='welcome-text'>
            Your Account has been successfully registered, click below to verify your Account
        </p>
        <!--End of Welcome Text -->
        <br><br>
        <!-- Verify Account Button -->
        <center><a href='' class='verify-account-btn' role='button'>Verify Account</a>
        </center>
        <!--End of Verify Account Button -->

        <!-- Copy Right Wrapper -->
        <div class='copy-right'>
            &copy; copy-right 2023. All Rights Reserved.
        </div>
        <!-- End of Copy Right Wrapper -->
    </div>
    <!-- End of Wrapper -->
</body>

</html>