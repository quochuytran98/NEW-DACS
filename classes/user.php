<?php 
	$filepath = realpath(dirname(__FILE__));
	include_once ($filepath.'/../lib/database.php');
	include_once  ($filepath.'/../helpers/format.php');
 ?>




<?php 

	/**
	 * 
	 */
	class User
	{
		private $db;
		private $fm;

		public function __construct()
		{
			$this->db = new Database();
			$this->fm = new Format();
		}
		public function insert_Customer($data){
			// $name = $this->fm->validation($name);
			// $username = $this->fm->validation($username);
			// $password = $this->fm->validation($password);
			// $email = $this->fm->validation($email);
			// $phone = $this->fm->validation($phone);
			// $city = $this->fm->validation($city);
			// $district = $this->fm->validation($district);
			// $address = $this->fm->validation($address);


			$name = mysqli_real_escape_string($this->db->link, $data['name']);
			$username = mysqli_real_escape_string($this->db->link, $data['username']);
			$city = mysqli_real_escape_string($this->db->link, $data['city']);
			$address = mysqli_real_escape_string($this->db->link, $data['address']);
			$phone = mysqli_real_escape_string($this->db->link, $data['phone']);
			$password = mysqli_real_escape_string($this->db->link, md5($data['password']));
			$district = mysqli_real_escape_string($this->db->link, $data['district']);
			$email = mysqli_real_escape_string($this->db->link, $data['email']);
			

			if($name == "" || $username == "" || $city == "" || $address == "" || $phone == "" || $password == ""|| $district == "" || $email == ""){
				$alert = "<span>Vui lòng không để trống thông tin</span>"; 
				return $alert;
			}else{
				$check = "SELECT * FROM tbl_customer WHERE username= '$username' OR emailCus = '$email' OR phone = '$phone' ";
				$result_check = $this->db->select($check);
				if($result_check){
					$alert = "<span>Người dùng đã tồn tại</span>";
					return $alert;
				}else{
					$query = "INSERT INTO tbl_customer( username ,  password ,  nameCus ,  emailCus ,  city ,  district ,  address ,  phone ) VALUES ('$username','$password','$name','$email','$city','$district','$address','$phone')";
					$result = $this->db->insert($query);
					if($result){
						$alert = "<span>Đăng ký khách hàng thành công</span>";
						return $alert;
					}
					else{
						$alert = "<span>Lỗi. Đăng ký khách hàng thất bại</span>";
						return $alert;	
					}
				
				}

			}
		}
		 // 
		public function Login_Customer($data){
			$username = mysqli_real_escape_string($this->db->link, $data['username']);
			$password = mysqli_real_escape_string($this->db->link, md5($data['password']));	
				$check = "SELECT * FROM tbl_customer WHERE username= '$username' OR emailCus= '$username' OR phone= '$username'  AND password='$password'";
				$result_check = $this->db->select($check);
				if($result_check){
					$value = $result_check-> fetch_assoc();
					Session::set('customer_login',true);
					Session::set('customer_user',$value['username']);
					Session::set('customer_name',$value['nameCus']);
					header('Location:index.php');
					
				
				}else{
					$alert = "<span> Sai tài khoản hoặc mật khẩu</span>"; 
					return $alert; 	
				}

			
		}

		public function Get_User($username){
			$query = "SELECT a.username,a.nameCus,a.emailCus,a.address,a.phone, b.name as 'HH',c.name AS 'TT', b.matp as 'TP', c.maqh as 'QH'
					  FROM tbl_customer a, tbl_city b, tbl_district c
					  WHERE a.city=b.matp AND a.district=c.maqh AND a.username = '$username'";
			$result_check = $this->db->select($query);
			return $result_check;
		}

		public function Update_Customer($data,$userr){
			$name = mysqli_real_escape_string($this->db->link, $data['name']);
			$city = mysqli_real_escape_string($this->db->link, $data['city']);
			$address = mysqli_real_escape_string($this->db->link, $data['address']);
			$phone = mysqli_real_escape_string($this->db->link, $data['phone']);
			$district = mysqli_real_escape_string($this->db->link, $data['district']);
			$email = mysqli_real_escape_string($this->db->link, $data['email']);
			

			if($name == ""  || $city == "" || $address == "" || $phone == "" || $district == "" || $email == ""){
				$alert = "<span>Vui lòng không để trống thông tin</span>"; 
				return $alert;
			}else{
					$query = "UPDATE tbl_customer SET nameCus='$name',emailCus='$email',city='$city',district='$district',address='$address',phone='$phone' WHERE username = '$userr'";
					$result = $this->db->update($query);
					if($result){
						$alert = "<span>Cập nhật thông tin thành công</span>";
						return $alert;
					}
					else{
						$alert = "<span>Lỗi. Cập nhật thông tin không thành công</span>";
						return $alert;	
					}

			}

		}
		



	}

 ?>