<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/bootstrap/bootstrap.css">
    <link rel="stylesheet" href="css/fontawesome/css/all.css">

    <link rel="stylesheet" href="css/main.css">
    <script src="js/bootstrap.bundle.js"></script>


    <title>Dashboard</title>
</head>

<body>
    <!-- Main Page Header -->
    <header class="main-page-header mb-3 bg-primary">
        <!-- Container -->
        <div class="container d-flex align-items-center">
            <!-- Company Name -->
            <div class="company-name">Easy-way Bank</div>
            <!-- End of Company Name -->
            <!-- Navigation -->
            <nav class="navigation">
                <li><a href="">Dashboard</a></li>
                <li><a href="">Payment History</a></li>
                <li><a href="">Transaction History</a></li>
            </nav>
            <!-- End OF Navigation -->
            <!-- Display name -->
            <div class="ms-auto display-name text-white">
                <i class="fa fa-circle text-success me-2"></i>Welcome: <span>John Doe</span>
            </div>
            <!-- End Display name -->
            <!-- Logout Button -->
            <a href="" class="btn btn-sm text-white ms-3">
                <i class="fa fa-sign-out-alt me-1"></i>Sign Out
            </a>
            <!-- End of Logout Button -->
        </div>


        <!-- End Container -->
    </header>
    <!-- End Main Page Header -->

    <!-- Start of Transact OffCanvas Bofy  -->
    <div class="offcanvas offcanvas-start" tabindex="-1" id="offcanvasExample" aria-labelledby="offcanvasExampleLabel">
        <div class="offcanvas-header">
            <h5 class="offcanvas-title" id="offcanvasExampleLabel">Transact</h5>
            <button type="button" class="btn-close" data-bs-dismiss="offcanvas" aria-label="Close"></button>
        </div>
        <!-- Offcanvas: Transact Body -->
        <div class="offcanvas-body">
            <small class="card-text text-white">
                    Choose an Option below to perform a Transaction
            </small>
            <!-- Transaction type Drop down List -->
            <select name="transact-type" class="form-control my-3" id="transact-type">
                <option value="">-- Select Transaction Type --</option>
                <option value="payment">Payment</option>
                <option value="transfer">Transfer</option>
                <option value="deposit">Deposit</option>
                <option value="withdraw">Withdraw</option>
            </select>
            <!-- End of Transaction type Drop down List -->


            <!-- Card: Payment Card -->
            <div class="card payment-card">
                <!-- Card Body -->
                <div class="card-body">
                    <!-- Form Group -->
                    <div class="form-group mb-2">
                        <label for="">Account Holder . Beneficiary Name</label>
                        <input type="text" name="beneficiary" class="form-control" placeholder="Enter Account holder / Beneficiary">
                    </div>
                    <!--End of Form Group -->
                    <!-- Form Group -->
                    <div class="form-group mb-2">
                        <label for="">Account Holder . Beneficiary Number</label>
                        <input type="text" name="account_number" class="form-control" placeholder="Enter Beneficiary Accunt No">
                    </div>
                    <!--End of Form Group -->

                    <!-- Form Group -->
                    <div class="form-group">
                        <label for="">Select Account</label>
                        <!-- Select Account Option -->
                        <select name="account_id" class="form-control" id="">
                        <option value="">-- Select Account --</option>
                        
                    </select>
                        <!-- EndSelect Account Option -->
                    </div>
                    <!-- End Form Group -->

                    <!-- Form Group -->
                    <div class="form-group mb-2">
                        <label for="">Reference</label>
                        <input type="text" name="reference" class="form-control" placeholder="Enter reference">
                    </div>
                    <!--End of Form Group -->

                    <!-- Form Group -->
                    <div class="form-group mb-2">
                        <label for="">Enter Payment Amount</label>
                        <input type="text" name="payment_amount" class="form-control" placeholder="Enter payment amount">
                    </div>
                    <!--End of Form Group -->

                    <!-- Form Group -->
                    <div class="form-group mb-2">
                        <button id="" class="btn btn-md transact-btn">Pay</button>
                    </div>
                    <!--End of Form Group -->

                </div>
                <!--End Card Body -->
            </div>
            <!-- End Card Payment -->

            <!-- Card: transfer Card -->
            <div class="card transfer-card">
                <!-- Card Body -->
                <div class="card-body">

                    <!-- Form Group -->
                    <div class="form-group">
                        <label for="">Select Account</label>
                        <!-- Select Account Option -->
                        <select name="account_id" class="form-control" id="">
                        <option value="">-- Select Account --</option>
                        
                    </select>
                        <!-- EndSelect Account Option -->
                    </div>
                    <!-- End Form Group -->
                    <!-- Form Group -->
                    <div class="form-group">
                        <label for="">Select Account</label>
                        <!-- Select Account Option -->
                        <select name="account_id" class="form-control" id="">
                        <option value="">-- Select Account --</option>
                        
                    </select>
                        <!-- EndSelect Account Option -->
                    </div>
                    <!-- End Form Group -->


                    <!-- Form Group -->
                    <div class="form-group mb-2">
                        <label for="">Enter transfer Amount</label>
                        <input type="text" name="transfer_amount" class="form-control" placeholder="Enter transfer amount">
                    </div>
                    <!--End of Form Group -->
                    <!-- Form Group -->
                    <div class="form-group mb-2">
                        <button id="" class="btn btn-md transact-btn">Transfer</button>
                    </div>
                    <!--End of Form Group -->

                </div>
                <!--End Card Body -->
            </div>
            <!-- End Card Transfer -->




            <!-- Card: Deposit Card -->
            <div class="card deposit-card">
                <!-- Card Body -->
                <div class="card-body">
                    <!-- Deposit Form -->
                    <form action="" class="deposit-form">
                        <!-- Form Group -->
                        <div class="form-group mb-2">
                            <label for="">Enter Deposit Amount</label>
                            <input type="text" name="deposit_amount" class="form-control" placeholder="Enter Deposit amount">
                        </div>
                        <!--End of Form Group -->
                        <!-- Form Group -->
                        <div class="form-group">
                            <label for="">Select Account</label>
                            <!-- Select Account Option -->
                            <select name="account_id" class="form-control" id="">
                        <option value="">-- Select Account --</option>
                        
                    </select>
                            <!-- EndSelect Account Option -->
                        </div>
                        <!-- End Form Group -->

                        <!--End of Form Group -->
                        <!-- Form Group -->
                        <div class="form-group my-2">
                            <button id="" class="btn btn-md transact-btn">Deposit</button>
                        </div>
                        <!--End of Form Group -->
                    </form>


                </div>
                <!--End Card Body -->
            </div>
            <!-- End Card Deposit -->



            <!-- Card: Withdrawal Card -->
            <div class="card withdraw-card">
                <!-- Card Body -->
                <div class="card-body">
                    <!-- Deposit Form -->
                    <form action="" class="deposit-form">
                        <!-- Form Group -->
                        <div class="form-group mb-2">
                            <label for="">Enter Withdrawal Amount</label>
                            <input type="text" name="withdrawal_amount" class="form-control" placeholder="Enter Withdrawal amount">
                        </div>
                        <!--End of Form Group -->
                        <!-- Form Group -->
                        <div class="form-group">
                            <label for="">Select Account</label>
                            <!-- Select Account Option -->
                            <select name="account_id" class="form-control" id="">
                        <option value="">-- Select Account --</option>
                        
                    </select>
                            <!-- EndSelect Account Option -->
                        </div>
                        <!-- End Form Group -->

                        <!--End of Form Group -->
                        <!-- Form Group -->
                        <div class="form-group my-2">
                            <button id="" class="btn btn-md transact-btn">Withdraw</button>
                        </div>
                        <!--End of Form Group -->
                    </form>


                </div>
                <!--End Card Body -->
            </div>
            <!-- End Card Withdrawal -->
        </div>
        <!-- End Offcanvas: Transact Body -->
    </div>
    <!-- End of Transact OffCanvas Bofy  -->

    <!-- Start of Account Form -->
    <div class="offcanvas offcanvas-end" tabindex="-1" id="offcanvasRight" aria-labelledby="offcanvasRightLabel">
        <div class="offcanvas-header">
            <!-- Card Account Form Card-->
            <h5 id="offcanvasRightLabel" class="text-white">Create / Add an Account</h5>
            <button class="btn-close text-reset" type="button" data-bs-dismiss="offcanvas" aria-label="close"></button>
        </div>
        <!-- Offcanvas Body: Account form Wrapper -->
        <div class="offcanvas-body">


            <!-- Offcanvas Body: Account form Wrapper -->
            <div class="offcanvas-body">
                <div class="card">
                    <div class="card-body">
                        <form action="" class="add-account-form">
                            <!-- Form Group -->
                            <div class="form-group"><label for="">Enter Account Name</label>
                                <input type="text" name="account_name" class="form-control" placeholder="Enter Account Name ..." id=""></div>
                            <!-- End of Form Group -->
                            <!-- Form Group -->
                            <div class="form-group"><label for="">Select Account Type</label>
                                <select name="account_type" id="" id="" class="form-control">
                                    <option value="">-- Select Account Type --</option>
                                    <option value="check">Check</option>
                                    <option value="savings">Savings</option>
                                    <option value="business">Business</option>
                                </select></div>
                            <!-- End of Form Group -->
                            <!-- Form Group -->
                            <div class="form-group my-2"><button class="btn btn-md transact-btn">Add Account</button></div>
                            <!-- End of Form Group -->
                        </form>
                    </div>
                </div>
            </div>
            <!-- End of Offcanvas Body: Account form Wrapper -->
            <!-- End of Card Account Form Card-->
        </div>
    </div>
    <!-- End of Account Form -->


    <!-- Container -->
    <div class="container d-flex">
        <button id="add-account-btn" class="btn btn-primary btn-lg" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasRight" aria-controls="offcanvasRight"><i class="fa fa-credit-card"></i> Add new Account</button>
        <button id="Transact-btn" class="btn ms-auto btn-lg" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasExample" aria-controls="offcanvasExample"><i class="fa fa-wallet"></i>
        Transact
      </button>


    </div>
    <!--End Of Container -->
    <!-- Total Account Balance -->
    <div class="container d-flex py-3">
        <h2 class="me-auto">Total Account</h2>
        <h2 class="ms-auto">0.00</h2>
    </div>
    <!-- End of Total Account Balance -->
    <!--    Accordion Menu Container -->
    <div class="container">
        <div class="accordion accordion-flush" id="accordionFlushExample">
            <div class="accordion-item">
                <h2 class="accordion-header" id="flush-headingOne">
                    <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseOne" aria-expanded="false" aria-controls="flush-collapseOne">
                  Accordion Item #1
                </button>
                </h2>
                <div id="flush-collapseOne" class="accordion-collapse collapse" aria-labelledby="flush-headingOne" data-bs-parent="#accordionFlushExample">
                    <div class="accordion-body">Placeholder content for this accordion, which is intended to demonstrate the <code>.accordion-flush</code> class. This is the first item's accordion body.</div>
                </div>
            </div>
            <div class="accordion-item">
                <h2 class="accordion-header" id="flush-headingTwo">
                    <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseTwo" aria-expanded="false" aria-controls="flush-collapseTwo">
                  Accordion Item #2
                </button>
                </h2>
                <div id="flush-collapseTwo" class="accordion-collapse collapse" aria-labelledby="flush-headingTwo" data-bs-parent="#accordionFlushExample">
                    <div class="accordion-body">Placeholder content for this accordion, which is intended to demonstrate the <code>.accordion-flush</code> class. This is the second item's accordion body. Let's imagine this being filled with some actual content.</div>
                </div>
            </div>
            <div class="accordion-item">
                <h2 class="accordion-header" id="flush-headingThree">
                    <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseThree" aria-expanded="false" aria-controls="flush-collapseThree">
                  Accordion Item #3
                </button>
                </h2>
                <div id="flush-collapseThree" class="accordion-collapse collapse" aria-labelledby="flush-headingThree" data-bs-parent="#accordionFlushExample">
                    <div class="accordion-body">Placeholder content for this accordion, which is intended to demonstrate the <code>.accordion-flush</code> class. This is the third item's accordion body. Nothing more exciting happening here in terms of content, but just filling up
                        the space to make it look, at least at first glance, a bit more representative of how this would look in a real-world application.</div>
                </div>
            </div>
        </div>
    </div>
    <!--   End of Container Accordion Menu Container -->

    <!-- Container:No account -->
    <div class="container">
        <!-- Card: No account -->
        <div class="card no-accounts-card">
            <!-- Card Body -->
            <div class="card-body">
                <!-- Card Title -->
                <h1 class="card-title">
                    <i class="fas fa-ban text-danger"></i>No Registered Account
                </h1>
                <hr>
                <!-- End of Card Title -->
                <!-- Card Text -->
                <div class="card-text">
                    You currently do not have any registered accounts <br> Please click below to register / Add a new account
                </div>
                <br>
                <!-- End of Card Text -->
                <button class="btn btn-primary btn-lg" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasRight" aria-controls="offcanvasRight"><i class="fa fa-credit-card"></i> Add new Account</button>
            </div>
            <!-- End Card Body -->
        </div>
        <!-- End of Card: No account -->
    </div>
    <!-- End of Container:No account -->
    <script src="js/main.js"></script>

</body>

</html>