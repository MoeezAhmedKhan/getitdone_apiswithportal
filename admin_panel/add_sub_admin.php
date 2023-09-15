<?php

 session_start();
  if(isset($_SESSION["role"]) && $_SESSION["role"] != '0') 
  {
    header('location:index.php');
  }

  require_once("header.php");

?>


 <!-- MAIN-CONTENT -->
 <div class="main-content app-content mt-0">
                    <div class="side-app">

                        <!-- CONTAINER -->
                        <div class="main-container container-fluid">

                            <!-- PAGE-HEADER -->
                            <div class="page-header">
                                <h1 class="page-title">Add Sub Admin</h1>
                                <div>
                                    <ol class="breadcrumb">
                                        <li class="breadcrumb-item"><a href="javascript:void(0)">Home</a></li>
                                        <li class="breadcrumb-item active" aria-current="page">Add Sub Admin</li>
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
                                            <form action="phpfiles/insertions.php" method="POST" enctype="multipart/form-data">
                                                <div class="form-row">
                                                    <div class="col-xl-6 mb-3">
                                                        <label for="validationDefault01">First name</label>
                                                        <input type="text" class="form-control" name="fname" id="validationDefault01" required>
                                                    </div>
                                                       <div class="col-xl-6 mb-3">
                                                        <label for="validationDefault01">Last name</label>
                                                        <input type="text" class="form-control" name="lname" id="validationDefault01" required>
                                                    </div>
                                                    <div class="col-xl-6 mb-3">
                                                        <label for="validationDefault01">Email</label>
                                                        <input type="text" class="form-control" name="email" id="validationDefault01" required>
                                                    </div>
                                                    <div class="col-xl-6 mb-3">
                                                        <label for="validationDefault01">Phone</label>
                                                        <input type="text" class="form-control" name="phone" id="validationDefault01" required>
                                                    </div>
                                                    <div class="col-xl-12 mb-3">
                                                        <label for="validationDefault01">Password</label>
                                                        <input type="text" class="form-control" name="password" id="validationDefault01" required>
                                                    </div>
                                                </div>
                                                <button class="btn btn-primary" type="submit" name="add_sub_admin_btn">Create</button>
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










<?php
require_once("footer.php");
?>