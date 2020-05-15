<?php
include('includes/header.php'); 
include('includes/navbar.php'); 

?>
<?php include '../classes/admin.php'?>
<?php 
    $admin = new admin();
    if(!isset($_GET['username']) || $_GET['username']==NULL){
        echo "<script>window.location = 'brandlist.php'</script>";
        
    }else{
        $id = $_GET['username'];
    }
    // if(isset($_POST["edit"])){

    //     $brandName = $_POST['brandName'];
       

    //     $updateBrand = $brand->update_brand($brandName,$id);
    // }
?>

<div class="container-fluid">

<!-- DataTales Example -->
<div class="card shadow mb-4">
  <div class="card-header py-3">
    <h6 class="m-0 font-weight-bold text-primary">Admin Profile 
            
    </h6>
  </div>

  <div class="card-body">
  <?php
                    // if(isset($update_brand)){
                    //     echo $update_brand;
                    // }
                ?>
                <?php 
                    $adminn= $admin->get_Info($id);
                    if($adminn){
                        while($result = $adminn->fetch_assoc()){
                ?> 
    <form action="" method="POST">

       

            <div class="form-group">
                <label> Username </label>
                <input type="text" name="username" class="form-control" value="<?php echo $result['admin_User'] ?>">
            </div>
             <div class="form-group">
                <label>Name</label>
                <input type="name" name="name" class="form-control" value="<?php echo $result['admin_Name'] ?>">
            </div>

            <div class="form-group">
                <label>Email</label>
                <input type="email" name="email" class="form-control" value="<?php echo $result['admin_Email'] ?>">
            </div>
            <div class="form-group">
                <label>Password</label>
                <input type="password" name="password" class="form-control" placeholder="Enter Password">
            </div>
            <div class="form-group">
              <label >Level</label>
                <select name="level" class="form-control">
                 
                  <option><?php echo $result['level'] ?></option>

                </select>
            </div>
        
       
        <div class="modal-footer">
            <button onclick="location.href='listadmin.php'" type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
            <button type="submit" name="registerbtn" class="btn btn-primary">Save</button>
        </div>
      </form>
       <?php 
                }
            }
                ?>  
  </div>
</div>

</div>
<!-- /.container-fluid -->

<?php
include('includes/scripts.php');
include('includes/footer.php');
?>