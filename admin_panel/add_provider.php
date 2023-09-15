<?php
    // session_start();
    // if($_SESSION["role"] != "Admin")
    // {   
    //     header('location:index.php');
    // }
require_once("header.php");


?>







 <!-- MAIN-CONTENT -->
 <div class="main-content app-content mt-0">
                    <div class="side-app">

                        <!-- CONTAINER -->
                        <div class="main-container container-fluid">

                            <!-- PAGE-HEADER -->
                            <div class="page-header">
                                <h1 class="page-title">Create Staff Account</h1>
                                <div>
                                    <ol class="breadcrumb">
                                        <li class="breadcrumb-item"><a href="javascript:void(0)">Home</a></li>
                                        <li class="breadcrumb-item active" aria-current="page">Create Staff Account</li>
                                    </ol>
                                </div>
                            </div>
                            <!-- PAGE-HEADER END -->

                            <!-- ROW OPEN -->
                            <div class="row">

                                <div class="col-lg-12 col-md-12">
                                    <div class="card">
                                        <div class="card-header">
                                            <h3 class="card-title">Create</h3>
                                        </div>
                                        <div class="card-body">
                                            <form action="phpfiles/insertions.php" method="POST">
                                                <div class="form-row">
                                                    <div class="col-xl-6 mb-3">
                                                        <label for="validationDefault01">First name</label>
                                                        <input type="text" class="form-control" name="fname" id="validationDefault01" required>
                                                    </div>
                                                    <div class="col-xl-6 mb-3">
                                                        <label for="validationDefault01">Last name</label>
                                                        <input type="text" class="form-control" name="lname" id="validationDefault01" required>
                                                    </div>
                                                </div>
                                                
                                                <div class="form-row">
                                                    <div class="col-xl-6 mb-3">
                                                        <label for="validationDefault02">Email</label>
                                                        <input type="email" class="form-control" name="email" id="validationDefault02" required>
                                                    </div>
                                                    <div class="col-xl-6 mb-3">
                                                        <label for="validationDefault01">Phone</label>
                                                        <input type="text" class="form-control" name="phone" id="validationDefault01" required>
                                                    </div>
                                                </div>
                                                
                                                <div class="form-row">
                                                    <div class="col-xl-6 mb-3">
                                                        <label for="validationDefault02">Address</label>
                                                        <input type="text" class="form-control" name="address" id="validationDefault02" required>
                                                    </div>
                                                    <div class="col-xl-6 mb-3">
                                                        <label for="validationDefault01">Address Line 2</label>
                                                        <input type="text" class="form-control" name="address2" id="validationDefault01" required>
                                                    </div>
                                                </div>
                                                
                                                <div class="form-row">
                                                    <div class="col-xl-4 mb-3">
                                                        <label for="validationDefault02">City</label>
                                                        <input type="text" class="form-control" name="city" id="validationDefault02" required>
                                                    </div>
                                                    <div class="col-xl-4 mb-3">
                                                        <label for="validationDefault01">State</label>
                                                        <input type="text" class="form-control" name="state" id="validationDefault01" required>
                                                    </div>
                                                    <div class="col-xl-4 mb-3">
                                                        <label for="validationDefault01">Zip code</label>
                                                        <input type="text" class="form-control" name="zip" id="validationDefault01" required>
                                                    </div>
                                                </div>
                                                
                                                <div class="form-row">
                                                    <div class="col-xl-6 mb-3">
                                                        <label for="validationDefault03">Password</label>
                                                        <input type="password" class="form-control" name="password" id="validate" required>
                                                        <input type="checkbox" onclick="myFunction()">Show Password
                                                    </div>
                                                    <div class="col-xl-6 mb-3">
                                                        <label for="validationDefault03">Confirm Password</label>
                                                        <input type="password" class="form-control" name="confirm" id="validate" required>
                                                        <input type="checkbox" onclick="myFunction()">Show Password
                                                    </div>
                                                </div>
                                            
                                                <button class="btn btn-primary" type="submit" name="add_provider_btn">Create</button>
                                            </form>
                                        </div>
                                    </div>
                                </div>                  
                            </div>
                            <!-- ROW CLOSED -->
                        </div>
                        <!-- CONTAINER CLOSED -->
                    </div>
                </div>
                <!-- MAIN-CONTENT CLOSED -->
            </div>









            <script>
        function myFunction() {
        var x = document.getElementById("validate");
        if (x.type === "password") {
            x.type = "text";
        } else {
            x.type = "password";
        }
        }
        </script>






<?php
require_once("footer.php");
?>