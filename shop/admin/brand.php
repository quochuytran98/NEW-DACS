<?php
include('includes/header.php'); 
include('includes/navbar.php'); 

?>
<?php include '../classes/brand.php'?>

<?php 
  $brand = new brand();
  if(isset($_POST["delete_id"])){
    $id = $_POST["delete_id"];
        $delbrand = $brand->delete_Brand($id);
  }

 ?>

<div class="modal fade" id="addadminprofile" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
<?php 
        if($_SERVER['REQUEST_METHOD'] == 'POST'){

        $brandName = $_POST['brandName']; 
        $insertName = $brand->insert_Brand($brandName);
    }
       ?>
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Add BRANDS</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
        
      </div>
     
      <form action="" method="POST">

        <div class="modal-body">

            <div class="form-group">

                <label> Brand name </label>
                <input type="text" name="brandName" class="form-control" placeholder="Enter Brand">
            </div>
            
        
        </div>
        <div class="modal-footer">
            <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
            <button type="submit" name="registerbtn" class="btn btn-primary">Save</button>
        </div>
      </form>

    </div>
  </div>
</div>


 
<!-- /.container-fluid -->






<div class="container-fluid">
<!-- DataTales Example -->
<div class="card shadow mb-4">
  <div class="card-header py-3">
    <h6 class="m-0 font-weight-bold text-primary">BRANDS 
            <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#addadminprofile">
              Add Brand 
            </button>
    </h6>
  </div>

  <div class="card-body">

    <div class="table-responsive">

     <form action="" method="POST">
      <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
        <thead>
          <tr>
            <th> ID </th>
            <th> Brand name </th>
           
            <th>EDIT </th>
            <th>DELETE </th>
          </tr>
        </thead>
        <tbody>
          <?php
           
            $show = $brand->show_brand();
            if($show){
              $i = 0;
              while($result = $show->fetch_assoc()){
                $i++;
            
          ?>
          <tr>
            <td> <?php echo $i; ?> </td>
            <td> <?php echo $result['brandName']; ?></td>
            
            <td>
                <form action="" method="post ">
                    <input type="hidden" name="edit_id" value="<?php echo $result['brandId']?>">
                    <a href="editbrand.php?brandid=<?php echo $result['brandId']?>" class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm">Edit</a>
                    <!-- <button  type="button" name="edit_btn" class="btn btn-success" data-toggle="modal" data-target="#editbrand">EDIT</button> -->
                </form>
            </td>
            <td>
                <form action="" method="post">
                  <input type="hidden" name="delete_id" value="<?php echo $result['brandId']?>">
                  <button  type="submit" name="delete_btn" class="btn btn-danger">DELETE</button>
                </form>
            </td>
          </tr>
        <?php
          }
            }
            ?>  
        </tbody>
      </table>
       </form>

    </div>
  </div>
</div>

</div>


<!-- /.container-fluid -->

<?php
include('includes/scripts.php');
include('includes/footer.php');
?>