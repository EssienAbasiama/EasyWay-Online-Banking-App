<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- <link rel="stylesheet" href="css/default.css"> -->
    <link rel="stylesheet" href="css/bootstrap/bootstrap.css">
    <link rel="stylesheet" href="css/fontawesome/css/all.css">
    <style>
        * {
            box-sizing: border-box;
            /* font-family: comfortaa; */
        }
        
        body {
            height: 100vh;
            background-image: url("images/main_bg.png");
            background-size: cover;
            background-position: center center;
            background-repeat: no-repeat;
        }
        
        .card .card-text {
            font-size: 16px;
        }
        
        .card {
            box-shadow: 0px 3px 6px rgb(1, 1, 94);
        }
    </style>
    <title>Errors</title>
</head>

<body class="d-flex align-items-center justify-content-center">
    <!-- Card: Error Card -->
    <div class="card col-4 alert alert-danger border border-danger text-danger">
        <!-- Card Title -->
        <h3 class="card-title">
            <i class="fa fa-window-close me-2"></i>Errors;
            <!--End Card Body -->
        </h3>
        <hr>
        <!-- Card Body -->
        <div class="card-body">
            <!-- Card Text -->
            <p class="card-text">
                Lorem ipsum dolor sit, amet consectetur adipisicing elit. Labore perferendis quo, iure minus explicabo doloribus nisi ipsa et voluptatibus quidem!
            </p>
            <!-- End of Card Text -->
            <hr>
            <!-- Back to Login Page -->
            <a href="/login" class="btn btn-sm btn-danger">
                <i class="fa fa-arrow-alt-circle-left me-1"></i>Back
            </a>
            <!-- End of Nack to Login Page -->
        </div>
        <!--End of Card Body -->
    </div>
    <!-- End of Card: Error Card -->
</body>

</html>