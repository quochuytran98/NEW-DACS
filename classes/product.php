<?php 
	$filepath = realpath(dirname(__FILE__));
	include_once ($filepath.'/../lib/database.php');
	include_once  ($filepath.'/../helpers/format.php');
 ?>



<?php 

	/**
	 * 
	 */
	class product
	{
		private $db;
		private $fm;

		public function __construct()
		{
			$this->db = new Database();
			$this->fm = new Format();
		}
		public function insert_product($data,$files){

			// $prodName = $this->fm->validation($prodName);
			// $prodSize = $this->fm->validation($prodSize);


			$productName = mysqli_real_escape_string($this->db->link, $data['productName']);
			$brand = mysqli_real_escape_string($this->db->link, $data['brand']);
			$category = mysqli_real_escape_string($this->db->link, $data['category']);
			$size = mysqli_real_escape_string($this->db->link, $data['size']);
			$price = mysqli_real_escape_string($this->db->link, $data['price']);
			$description = mysqli_real_escape_string($this->db->link, $data['description']);
			$type = mysqli_real_escape_string($this->db->link, $data['type']);

			$permited=array('jpg','jpeg','png','gif');
	    	$file_name=$_FILES['image']['name'];
	    	$file_size=$_FILES['image']['size'];
	    	$file_temp=$_FILES['image']['tmp_name'];

	    	$div=explode('.', $file_name);
	    	$file_ext=strtolower(end($div));
	    	$unique_image=substr(md5(time()), 0, 10).'.'.$file_ext;
	    	$uploaded_image="uploads/".$unique_image;

			if($productName == "" || $brand == "" || $category == "" || $size == "" || $price == "" || $type == ""|| $file_name == ""){
				$alert = "vui lòng không để trống thông tin"; 
				return $alert;
			}else{
				move_uploaded_file($file_temp,$uploaded_image);
				$query = "INSERT INTO tbl_product(productName, catId, brandId, size ,price, image, type,description) VALUES ('$productName','$category','$brand','$size','$price','$unique_image','$type','$description')";
				$result = $this->db->insert($query);
				if($result){
					$alert = "<span>Thêm product thành công</span>";
					return $alert;

				}
				else{
					$alert = "<span>Lỗi. Thêm product thất bại</span>";
					return $alert;	
				}

			}
			
		}


		public function Show_Product(){
			$query = "SELECT A.productName,A.image, C.brandName,B.catName,A.price,A.type,A.description FROM tbl_product A, tbl_category B, tbl_brand C WHERE A.catId=B.catId AND A.brandId=C.brandId GROUP BY A.productName, A.description  ORDER BY A.productName DESC";
			$result = $this->db->select($query);
			return $result;
		}
		


		public function update_product($data,$files, $id){
			
			$productName = mysqli_real_escape_string($this->db->link, $data['productName']);
			$brand = mysqli_real_escape_string($this->db->link, $data['brand']);
			$category = mysqli_real_escape_string($this->db->link, $data['category']);
			$size = mysqli_real_escape_string($this->db->link, $data['size']);
			$price = mysqli_real_escape_string($this->db->link, $data['price']);
			$type = mysqli_real_escape_string($this->db->link, $data['type']);
			$description = mysqli_real_escape_string($this->db->link, $data['description']);

			$permited=array('jpg','jpeg','png','gif');
	    	$file_name=$_FILES['image']['name'];
	    	$file_size=$_FILES['image']['size'];
	    	$file_temp=$_FILES['image']['tmp_name'];

	    	$div=explode('.', $file_name);
	    	$file_ext=strtolower(end($div));
	    	$unique_image=substr(md5(time()), 0, 10).'.'.$file_ext;
	    	$uploaded_image="uploads/".$unique_image;

			if($productName == "" || $brand == "" || $category == "" || $size == "" || $price == "" || $type == ""){
				$alert = "<span>Vui lòng không để trống thông tin</span>";
				return $alert;
			}else{
				if(!empty($file_name)){
					if($file_size > 1048567){
						$alert = "<span>Kích thước ảnh quá lớn</span>";
						return $alert;
					}
					elseif (in_array($file_ext,$permited) === false) 
					{
						$alert = "<span>Bạn chỉ có thể cập nhật:-".implode(', ',$permited)."</span>";
						return $alert;
					}
					$query = "UPDATE tbl_product 
							  SET productName = '$productName' , 
							      brandId = '$brand' ,
							      catId = '$category' ,  
							      size = '$size' , 
							      price = '$price', 
							      description = '$description' , 
							      image = '$unique_image' , 
							      type = '$type'   
							    WHERE productId = '$id'";

				}else{
					$query = "UPDATE tbl_product 
							  SET productName = '$productName' ,
							  	  brandId = '$brand' , 
							  	  catId = '$category' ,  
							  	  size = '$size' , 
							  	  price = '$price', 
							  	  description = '$description' , 
							  	  type = '$type'   
							  WHERE productId = '$id'";
				}
			

				
				$result = $this->db->update($query);
				if($result){
					$alert = "<span>Update thành công</span";
					return $alert;

				}
				else{
					$alert = "<span>Update không thành công</span";
					return $alert;	
				}

			}	
		}
		public function delete_product($id){
			$query = "DELETE  FROM tbl_product WHERE productId = '$id' ";
			$result = $this->db->delete($query);
			return $result;		
		}
		public function getproductByid($id){
			$query = "SELECT * FROM tbl_product WHERE productId = '$id'";
			$result = $this->db->select($query);
			return $result;
		}


		/////////////////////////////////////
		public function Get_ProductFeathered(){
			$query = "SELECT  A.productName, C.brandName,B.catName,A.price,A.image,A.type,A.description
					  FROM tbl_product A, tbl_category B, tbl_brand C
					  WHERE A.catId = B.catId AND A.brandId = C.brandId AND A.type = '1'
					  GROUP by A.productName";
			$result = $this->db->select($query);
			return $result;
		}

		public function get_ProductNew(){
			$query = "SELECT A.productId, A.productName, C.brandName,B.catName,A.price,A.image,A.type,A.description
					  FROM tbl_product A, tbl_category B, tbl_brand C
					  WHERE A.catId = B.catId AND A.brandId = C.brandId
					  GROUP by A.productName
					  ORDER BY A.productId DESC LIMIT 4";
			$result = $this->db->select($query);
			return $result;
		}

		public function get_1Product($name){
			$query = "SELECT A.productId, A.productName, C.brandName,B.catName,A.price,A.image,A.type,A.size,A.description
					  FROM tbl_product A, tbl_category B, tbl_brand C
					  WHERE A.catId = B.catId AND A.brandId = C.brandId AND A.productName = '$name'
					  GROUP by A.productName";
			$result = $this->db->select($query);
			return $result;
		}
		public function getSize_1Product($name){
			$query = "SELECT * FROM tbl_product WHERE productName = '$name'";
			$result = $this->db->select($query);
			return $result;
		}
		public function Show_ProductByCat($catName){
			$query = "SELECT * FROM tbl_product A, tbl_category B, tbl_brand C WHERE A.catId=B.catId AND A.brandId=C.brandId AND B.catName ='$catName' GROUP BY A.productName ORDER BY A.productName DESC";
			$result = $this->db->select($query);
			return $result;
		}
	}
 ?>