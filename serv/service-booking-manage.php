<!--  -->
<!DOCTYPE html>
<html lang="en">



<body id="page-top">

 


  <div id="wrapper">

    <!-- Sidebar -->
 

    <div id="content-wrapper">

      <div class="container-fluid">

    

        <!--Bookings-->
        <div class="card mb-3">
          <div class="card-header">
            <i class="fas fa-table"></i>
            Bookings</div>
          <div class="card-body">
            <div class="table-responsive">
              <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                <thead>
                  <tr>
                    <th>#</th>
                    <th>name</th>
                    <th>contact_no</th>
                    <th>email</th>
                    <th>service</th>
                    <th>time</th>
                    <th>service_date</th>
                    <th>location_latitude</th>
                    <th>location_longitude</th>
                  </tr>
                </thead>
                
                <tbody>
                <?php

                  $ret="SELECT * FROM tms_user where u_car_book_status = 'Approved' || u_car_book_status = 'Pending' "; //get all bookings
                 // $stmt= $mysqli->prepare($ret) ;
                  // $stmt->execute() ;//ok
                  $res=$stmt->get_result();
                  $cnt=1;
                  while($row=$res->fetch_object())
                {
                ?>
                  <tr>
                    <td><?php echo $cnt;?></td>
                    <td><?php echo $row->name;?></td>
                    <td><?php echo $row->contact_no;?></td>
                    <td><?php echo $row->email;?></td>
                    <td><?php echo $row->service;?></td>
                    <td><?php echo $row->time;?></td>
                    <td><?php echo $row->service_date;?></td>
                    
                    <td><?php if($row->u_car_book_status == "Pending"){ echo '<span class = "badge badge-warning">'.$row->u_car_book_status.'</span>'; } else { echo '<span class = "badge badge-success">'.$row->u_car_book_status.'</span>';}?></td>
                    <td>
                        <a href="admin-approve-booking.php?u_id=<?php echo $row->u_id;?>" class="badge badge-success"><i class = "fa fa-check"></i> Approve</a>
                        <a href="admin-delete-booking.php?u_id=<?php echo $row->u_id;?>" class="badge badge-danger"><i class ="fa fa-trash"></i> Delete</a>
                        </i>                  
                    </td>
                  </tr>
                  <?php  $cnt = $cnt +1; }?>
                  
                </tbody>
              </table>
            </div>
          </div>
          <div class="card-footer small text-muted">
            <?php
              date_default_timezone_set("Africa/Nairobi");
              echo "The time is " . date("h:i:sa");
            ?> 
        </div>
      </div>
      <!-- /.container-fluid -->

      <!-- Sticky Footer -->
      <?php include("vendor/inc/footer.php");?>
    </div>
    <!-- /.content-wrapper -->

  </div>
  <!-- /#wrapper -->

  <!-- Scroll to Top Button-->
  <a class="scroll-to-top rounded" href="#page-top">
    <i class="fas fa-angle-up"></i>
  </a>

  <!-- Logout Modal-->
  <div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
          <button class="close" type="button" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">×</span>
          </button>
        </div>
        <div class="modal-body">Select "Logout" below if you are ready to end your current session.</div>
        <div class="modal-footer">
          <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
          <a class="btn btn-danger" href="admin-logout.php">Logout</a>
        </div>
      </div>
    </div>
  </div>

  <!-- Bootstrap core JavaScript-->
  <script src="vendor/jquery/jquery.min.js"></script>
  <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

  <!-- Core plugin JavaScript-->
  <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

  <!-- Page level plugin JavaScript-->
  <script src="vendor/datatables/jquery.dataTables.js"></script>
  <script src="vendor/datatables/dataTables.bootstrap4.js"></script>

  <!-- Custom scripts for all pages-->
  <script src="js1/sb-admin.min.js"></script>

  <!-- Demo scripts for this page-->
  <script src="js1/demo/datatables-demo.js"></script>

</body>

</html>
