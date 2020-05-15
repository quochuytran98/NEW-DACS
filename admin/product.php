<?php
include('includes/header.php'); 
include('includes/navbar.php'); 

?>
<?php include '../classes/brand.php'?>
<?php include '../classes/category.php'?>
<?php include '../classes/product.php'?>

<?php 
  $brand = new brand();
  $cat = new category();
  $prod = new product();
  // if(isset($_POST["delete_id"])){
  //   $id = $_POST["delete_id"];
  //       $delbrand = $brand->delete_Brand($id);
  // }
  if($_SERVER['REQUEST_METHOD'] == 'POST' ){

       

        $insertProd = $prod->insert_product($_POST,$_FILES);
    }
 ?>

<div class="modal fade" id="addadminprofile" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
<?php 
        // if($_SERVER['REQUEST_METHOD'] == 'POST'){

        // $brandName = $_POST['brandName']; 
        // $insertName = $brand->insert_Brand($brandName);
    //}
       ?>
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Add Product</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
        
      </div>
     
      <form action="" method="POST" enctype="multipart/form-data">

        <div class="modal-body">

            <div class="form-group">

                <label> Product name </label>
                <input type="text" name="productName" class="form-control" placeholder="Enter Product">
            </div>
             <div class="form-group">
              <label >Brand</label>
                <select class="form-control" id="brand" name="brand">
                  <?php
                                $brand = new brand();
                                $brandlist = $brand->show_brand();
                                if($brandlist){
                                    while ($result = $brandlist->fetch_assoc()) {
                                        
                            ?>
                                 <option value="<?php echo $result['brandId']?>"><?php echo $result['brandName']?></option>
                            <?php  
                                }
                            }
                            ?>

                </select>
            </div>
             <div class="form-group">
              <label >Category</label>
                <select id="category" name="category" class="form-control">
                    <option>Select category</option>

                    <?php
                                $cat = new category();
                                $catlist = $cat->show_category();
                                if($catlist){
                                    while ($result = $catlist->fetch_assoc()) {
                                        
                            ?>
                                 <option value="<?php echo $result['catId']?>" data-name="<?= $result['catName'] ?>"><?php echo $result['catName']?></option>
                            <?php  
                                }
                            }
                            ?>

                </select>
            </div>
             <div class="form-group">
              <label >Size</label>
                <select id="size" name="size" class="form-control">
                  
                  <option>Select size</option>
                </select>
            </div>
            <div class="form-group">

                <label> Price </label>
                <input type="text" name="price" class="form-control" placeholder="Enter price">
            </div>
            <div class="form-group">

                <label> Description </label>
                <input type="text" name="description" class="form-control" placeholder="Enter Description">
            </div>
                        <div class="form-group">

                <label> Image </label>
                <input type="file" name="image" class="form-control" >
            </div>
            <div class="form-group">
              <label >Type</label>
                <select id="type" name="type" class="form-control">
                            <option>Chọn loại sản phẩm</option>
                            <option value="1">Nổi bật</option>
                            <option value="0">Không nổi bật</option>
                </select>
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
    <h6 class="m-0 font-weight-bold text-primary">PRODUCTS 
            <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#addadminprofile">
              Add Product 
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
            <th> Product name </th>
            <th> Image </th>
            <th> Category </th>
            <th> Brand </th>
            
            <th> Price </th>
            <th> EDIT </th>
            <th> DELETE </th>
          </tr>
        </thead>
        <tbody>
          <?php
           
            $prodList = $prod->Show_Product();
            if($prodList){
              $i = 0;
              while ($result = $prodList->fetch_assoc()) {
                $i++;
            
          ?>
          <tr>
            <td> <?php echo $i; ?> </td>
            <td> <?php echo $result['productName']; ?></td>
            <td><img src="uploads/<?php echo $result['image']?>" width="70" ></td> 
            <td> <?php echo $result['catName']; ?></td>
            <td> <?php echo $result['brandName']; ?></td>
          
            <td><?php echo $result['price'] ?></td>
           

            <td>
                <form action="" method="post ">
                   
                    <a href="productdetails.php?brandid=<?php echo $result['productName']?>" class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm">Edit</a>
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

<script>
    $(document).ready(function(){
        $('#category').change(function(){
            var catName = $('#category option:selected').text();
            data = {
                category:1,
                catName:catName
            };
            $.ajax({
                url:"size.php",
                type:"POST",
                data:data
            }).done(function(result){
                $('#size').html(result);
                
            })
        })

    });
</script>
<!-- /.container-fluid -->

<?php
include('includes/scripts.php');
include('includes/footer.php');
?>