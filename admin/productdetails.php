<?php
include('includes/header.php'); 
include('includes/navbar.php'); 

?>
<style type="text/css">
    

    .rows {
    display: flex;
    flex-wrap: wrap;
    margin-right: -.100rem;
    margin-left: -.75rem;
    }
    

</style>

<div class="container-fluid">

<!-- DataTales Example -->
<div class="card shadow mb-4">
  <div class="card-header py-3">
    <h6 class="m-0 font-weight-bold text-primary">Product 
            
    </h6>
  </div>

  <div class="card-body">
  
    <form action="" method="POST">
     <h6 class="m-0 font-weight-bold text-primary">Circle Buttons</h6>
     <div class="rows">
         

         <div class="col-lg-6">
         <img src="uploads/01b2a936b7.jpg" width="400px">
         <h6 class="m-0 font-weight-bold text-primary">Price: 1200000 VNĐ</h6>
        <p>Hút mắt với hình ảnh mặt cười ngộ nghĩnh được biến tấu dưới dạng chữ Converse cực xịn xò. Gam màu xanh “so fresh” mix cùng form dáng cổ cao năng động cho bạn có được những outfit thời trang</p>
         
         

         </div>
    <div class=" col-lg-6">
         <div class="table-responsive">

      <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
        <thead>
          <tr>
            <th> ID </th>
            <th> Size </th>
            <th> Quantity </th>
           
            <th> EDIT </th>
            <th> DELETE </th>
          </tr>
        </thead>
        <tbody>
           
          <tr>
            <td> 1 </td>
            <td> 39</td>
            <td> 2</td>
           
            <td>
                <form action="" method="post">
                   <!--  <input type="hidden" name="edit_id" value="<?php echo $result['admin_User']; ?>">
                    <button  type="submit" name="edit_btn" class="btn btn-success"> EDIT</button> -->
                     <a href="#" class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm">EDIT</a>
                </form>
            </td>
            <td>
                <form action="" method="post">
                  <!-- <input type="hidden" name="delete_id" value="<?php echo $result['admin_User']; ?>"> -->
                  <button type="submit" name="delete_btn" class="btn btn-danger"> DELETE</button>
                </form>
            </td>
          </tr>
           <tr>
            <td> 2 </td>
            <td> 42</td>
            <td> 3</td>
           
            <td>
                <form action="" method="post">
                   <!--  <input type="hidden" name="edit_id" value="<?php echo $result['admin_User']; ?>">
                    <button  type="submit" name="edit_btn" class="btn btn-success"> EDIT</button> -->
                     <a href="#" class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm">EDIT</a>
                </form>
            </td>
            <td>
                <form action="" method="post">
                  <!-- <input type="hidden" name="delete_id" value="<?php echo $result['admin_User']; ?>"> -->
                  <button type="submit" name="delete_btn" class="btn btn-danger"> DELETE</button>
                </form>
            </td>
          </tr>
      
        </tbody>
      </table>

    </div>
     
         
         

     </div>
     </div>
     
    
       

            
        
       
        <div class="modal-footer">
            <button onclick="location.href='listadmin.php'" type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
            <button type="submit" name="registerbtn" class="btn btn-primary">Save</button>
        </div>
      </form>
      
  </div>
</div>

</div>
<!-- /.container-fluid -->

<?php
include('includes/scripts.php');
include('includes/footer.php');
?>