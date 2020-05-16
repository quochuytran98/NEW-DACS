<?php 
	$filepath = realpath(dirname(__FILE__));
	include_once ($filepath.'/../lib/database.php');
	include_once  ($filepath.'/../helpers/format.php');
 ?>




<?php 

	/**
	 * 
	 */
	class cart
	{
		private $db;
		private $fm;

		public function __construct()
		{
			$this->db = new Database();
			$this->fm = new Format();
		}
		public function AddToCart($name,$quantity,$size){

			$quantity = $this->fm->validation($quantity);
			$productName = mysqli_real_escape_string($this->db->link, $name);
			$size_Post = mysqli_real_escape_string($this->db->link, $size);

			$session_id = session_id();

			$query = "SELECT * FROM tbl_product WHERE productName = '$productName' AND size = '$size_Post'";
			$result = $this->db->select($query)->fetch_assoc();

			$price = $result["price"];
			$image = $result["image"];
 			
 			$check = "SELECT * FROM tbl_cart WHERE productName = '$productName' AND size = '$size_Post' AND ssId = '$session_id'";
 			$check_cart = $this->db->select($check);
 			if($check_cart){
 					$query_check = "UPDATE tbl_cart SET quantity = quantity + '$quantity' WHERE productName = '$productName' AND size = '$size_Post' ";
 					$result_check = $this->db->update($query_check)->fe;
 					header('location:cart.php');
 			}
 			else{
 				$query_insert = "INSERT INTO tbl_cart(productName, ssId, price, size, quantity, image) VALUES ('$productName','$session_id','$price','$size_Post','$quantity','$image')";
				$insert_cart = $this->db->insert($query_insert);
				if($insert_cart){
					header('location:cart.php');
					

				}
				else{
					header('location:404.php');
				}
 			}
		}

		public function get_Cart(){
			$session_id = session_id();
			$query = "SELECT * FROM tbl_cart WHERE ssId = '$session_id'";
			$result = $this->db->select($query);
			return $result;
		} 
		
		public function update_Slcart($quantity,$cartId){
			$quantity = mysqli_real_escape_string($this->db->link, $quantity);
			$cartId = mysqli_real_escape_string($this->db->link, $cartId);
			if($quantity <= 0){
				$query = "DELETE  FROM tbl_cart WHERE cartId = '$cartId' ";
				$result = $this->db->delete($query);
				if($result){
					header('Location:cart.php');
				}
				
			}
			else{
				$query1 = "UPDATE tbl_cart SET quantity = '$quantity' WHERE cartId = '$cartId'";
				$result1 = $this->db->update($query1);
				if($result1){
					header('Location:cart.php');
				}
				
			}
			

		}

		public function delete_cart($cartId){
			$query = "DELETE  FROM tbl_cart WHERE cartId = '$cartId' ";
			$result = $this->db->delete($query);
			if($result){
					header('Location:cart.php');
				}
		}

		public function Del_cart_by_Session(){

			$session_id = session_id();
			$query = "DELETE FROM tbl_cart WHERE ssId = '$session_id'";
			$result = $this->db->delete($query);
			return $result;
		}

		public function get_Max_Id(){
			
			$query = "SELECT order_Id FROM tbl_order WHERE order_Id= (SELECT max(order_Id) FROM tbl_order)";
			// $query = "SELECT order_Id FROM tbl_order ORDER By order_Id DESC LIMIT 1";
			$get = $this->db->select($query);
			return $get;
		}

		public function insert_Order($data,$buyerr){
			
			$name = mysqli_real_escape_string($this->db->link, $data['name']);	
			$city = mysqli_real_escape_string($this->db->link, $data['city']);
			$address = mysqli_real_escape_string($this->db->link, $data['address']);
			$phone = mysqli_real_escape_string($this->db->link, $data['phone']);
			$district = mysqli_real_escape_string($this->db->link, $data['district']);
			$email = mysqli_real_escape_string($this->db->link, $data['email']);
			$total = 0;
			$session_id = session_id();
			$query = "SELECT * FROM tbl_cart WHERE ssId = '$session_id'";
			$get_cart = $this->db->select($query);
			if($get_cart){
				while ($result = $get_cart->fetch_assoc()) {
					$quantity = $result['quantity'];
					$price = $result['price'];
					$totalprice = $quantity * $price;
					$total +=$totalprice;
				}

			}
			
			$query_order = "INSERT INTO tbl_order ( buyer, receiver, phone, email, city, district, address, totalprice) VALUES ('$buyerr','$name','$phone','$email','$city','$district','$address','$total')";
			$insertOder = $this->db->insert($query_order);
			}
		

		public function insert_OrderDetail($MaxId){
			$session_id = session_id();
			$query = "SELECT * FROM tbl_cart WHERE ssId = '$session_id'";
			$get_cart = $this->db->select($query);
			if($get_cart){
				while ($result = $get_cart->fetch_assoc()) {
					$productName = $result['productName'];
					$size = $result['size'];
					$quantity = $result['quantity'];
					$image = $result['image'];
					$price = $result['price'];
					$query = "INSERT INTO tbl_orderdetails(id_order, productName, size, quantity, image, price) VALUES ('$MaxId','$productName','$size','$quantity','$image','$price')";
					$insertOrderDetails = $this->db->insert($query);
					

				}
			}
		}
		public function get_Bill_Max(){
			
			$query = "SELECT * FROM tbl_order WHERE order_Id= (SELECT max(order_Id) FROM tbl_order)";
			
			$get = $this->db->select($query);
			return $get;
		}

	}
 ?>