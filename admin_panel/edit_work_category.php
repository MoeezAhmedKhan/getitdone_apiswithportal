<?php
require_once("header.php");

?>







 <!-- MAIN-CONTENT -->
 <div class="main-content app-content mt-0">
                    <div class="side-app">

                        <!-- CONTAINER -->
                        <div class="main-container container-fluid">

                            <!-- PAGE-HEADER -->
                            <div class="page-header">
                                <h1 class="page-title">Work Category Edit</h1>
                                <div>
                                    <ol class="breadcrumb">
                                        <li class="breadcrumb-item"><a href="javascript:void(0)">Home</a></li>
                                        <li class="breadcrumb-item active" aria-current="page">Work Category Edit</li>
                                    </ol>
                                </div>
                            </div>
                            <!-- PAGE-HEADER END -->

                            <!-- ROW OPEN -->
                            <div class="row">

                            <?php

                                    require_once("connection.php");
                                    $Id = $_GET["id"];
                                    $select = "SELECT `id`, `icon_name`, `icon_type`, `title` FROM `menu_items` WHERE id = '$Id'";
                                    $exec = mysqli_query($conn,$select);
                                    $rec = mysqli_fetch_array($exec);

                            ?>

                                <div class="col-lg-12 col-md-12">
                                    <div class="card">
                                        <div class="card-header">
                                            <h3 class="card-title">Edit</h3>
                                        </div>
                                        <div class="card-body">
                                           <form action="phpfiles/action.php" method="POST" enctype="multipart/form-data">
                                               <input type="hidden" name="id" value="<?php echo $rec['id'] ?>"
                                                <div class="form-row">
                                                    <div class="col-xl-6 mb-3">
                                                        <label for="validationDefault01">Icon name</label>
                                                        <input type="text" class="form-control" name="icon_name" value="<?php echo $rec['icon_name'] ?>" id="validationDefault01" required>
                                                    </div>
                                                    <div class="col-xl-6 mb-3">
                                                        <label for="validationDefault01">Icon type</label>
                                                        <input type="text" class="form-control" name="icon_type" value="<?php echo $rec['icon_type'] ?>" id="validationDefault01" required>
                                                    </div>
                                                    <div class="col-xl-12 mb-3">
                                                        <label for="validationDefault01">Title</label>
                                                        <input type="text" class="form-control" name="work_title" value="<?php echo $rec['title'] ?>" id="validationDefault01" required>
                                                    </div>
                                                <button class="btn btn-primary" type="submit" name="update_work_category_btn">Create</button>
                                            </form>
                                            </div>
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