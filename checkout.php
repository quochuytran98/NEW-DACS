<?php 
    include 'inc/header.php';

?>
<?php  ?>
    <!-- Header Section End -->

    <!-- Hero Section Begin -->
    

    <section class="hero hero-normal">
        <div class="container">
            <div class="row">
                <div class="col-lg-3">
                    <div class="hero__categories">
                        <div class="hero__categories__all">
                            <i class="fa fa-bars"></i>
                            <span>All departments</span>
                        </div>
                        <ul>
                            <li><a href="#">Fresh Meat</a></li>
                            <li><a href="#">Vegetables</a></li>
                            <li><a href="#">Fruit & Nut Gifts</a></li>
                            <li><a href="#">Fresh Berries</a></li>
                            <li><a href="#">Ocean Foods</a></li>
                            <li><a href="#">Butter & Eggs</a></li>
                            <li><a href="#">Fastfood</a></li>
                            <li><a href="#">Fresh Onion</a></li>
                            <li><a href="#">Papayaya & Crisps</a></li>
                            <li><a href="#">Oatmeal</a></li>
                            <li><a href="#">Fresh Bananas</a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-9">
                    <div class="hero__search">
                        <div class="hero__search__form">
                            <form action="#">
                                <div class="hero__search__categories">
                                    All Categories
                                    <span class="arrow_carrot-down"></span>
                                </div>
                                <input type="text" placeholder="What do yo u need?">
                                <button type="submit" class="site-btn">SEARCH</button>
                            </form>
                        </div>
                        <div class="hero__search__phone">
                            <div class="hero__search__phone__icon">
                                <i class="fa fa-phone"></i>
                            </div>
                            <div class="hero__search__phone__text">
                                <h5>+65 11.188.888</h5>
                                <span>support 24/7 time</span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Hero Section End -->

    <!-- Breadcrumb Section Begin -->
    <section class="breadcrumb-section set-bg" data-setbg="img/breadcrumb.jpg">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <div class="breadcrumb__text">
                        <h2>Checkout</h2>
                        <div class="breadcrumb__option">
                            <a href="./index.html">Home</a>
                            <span>Checkout</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Breadcrumb Section End -->

    <!-- Checkout Section Begin -->
    <form action="" method="post">  
    <section class="checkout spad">
        <div class="container">
            
            <div class="checkout__form">
                <h4>Billing Details</h4>
                <form action="" method="post">
                    <div class="row">
                        <div class="col-lg-8 col-md-6">
                           <?php 
                                $userr= Session::get('customer_user');
                                $show_Cus = $user->Get_User($userr);
                                if($show_Cus){
                                    while($result =$show_Cus->fetch_assoc()){
                
                                ?>
                            <!-- <div class="row">
                                <div class="col-lg-6">
                                    <div class="checkout__input">
                                        <p>Fist Name<span>*</span></p>
                                        <input type="text">
                                    </div>
                                </div>
                                <div class="col-lg-6">
                                    <div class="checkout__input">
                                        <p>Last Name<span>*</span></p>
                                        <input type="text">
                                    </div>
                                </div>
                            </div> -->
                            <div class="checkout__input">
                                <p>Name<span>*</span></p>
                                <input type="text" name="name" value="<?php echo $result['nameCus'] ?>">
                            </div>
                            
                            
                            
                            <div class="checkout__input">
                                <p>Town/City<span>*</span></p>
                                <input type="text" placeholder="Town/City" >
                            </div>
                            <div class="checkout__input">
                                <p>District<span>*</span></p>
                                <input type="text" placeholder="District">
                            </div>
                            <div class="checkout__input">
                                <p>Address<span>*</span></p>
                                <input type="text" placeholder="Street Address" class="checkout__input__add">
                                
                            </div>
                            <div class="row">
                                <div class="col-lg-6">
                                    <div class="checkout__input">
                                        <p>Phone<span>*</span></p>
                                        <input type="text" name="phone" value="<?php echo $result['phone'] ?>">
                                    </div>
                                </div>
                                <div class="col-lg-6">
                                    <div class="checkout__input">
                                        <p>Email<span>*</span></p>
                                        <input type="text" name="phone" value="<?php echo $result['emailCus'] ?>">
                                    </div>
                                </div>
                            </div>
                           
                        </div>
                        <?php  
                }
            }
                ?>
                        <div class="col-lg-4 col-md-6">
                            <div class="checkout__order">
                                <h4>Your Order</h4>
                                <div class="checkout__order__products">Products <span>Total</span></div>

                                <ul>
                                    <?php 
                                
                                $get_cat = $ct->get_Cart();
                                if($get_cat){
                                    
                                    while ($result = $get_cat->fetch_assoc()) {
                                            
                           
                            ?>
                                    <li>  <?php 
                                    // echo $result['productName']
                                    echo $fm->textShorten($result['productName'],25) 
                                    ?>  <span><?php echo $result['price']?></span></li>
                                    <input type="hidden" name="quantity" value="<?php echo $result['quantity']?>"/>

                                    <?php 
                                    }

                                    }
                            ?>
                                </ul>
                                <div class="checkout__order__subtotal">Subtotal <span><?php  
                                        $qtt = '0';
                                        $qtt=Session::get("total");
                                        echo $qtt ;
                                    ?></span></div>
                                <div class="checkout__order__total">Total <span><?php  
                                        $qtt = '0';
                                        $qtt=Session::get("total");
                                        echo $qtt ;
                                    ?></span></div>
                                <!-- <div class="checkout__input__checkbox">
                                    <label for="acc-or">
                                        Create an account?
                                        <input type="checkbox" id="acc-or">
                                        <span class="checkmark"></span>
                                    </label>
                                </div>
                                <p>Lorem ipsum dolor sit amet, consectetur adip elit, sed do eiusmod tempor incididunt
                                    ut labore et dolore magna aliqua.</p>
                                <div class="checkout__input__checkbox">
                                    <label for="payment">
                                        Check Payment
                                        <input type="checkbox" id="payment">
                                        <span class="checkmark"></span>
                                    </label>
                                </div>
                                <div class="checkout__input__checkbox">
                                    <label for="paypal">
                                        Paypal
                                        <input type="checkbox" id="paypal">
                                        <span class="checkmark"></span>
                                    </label>
                                </div> -->
                                <button type="submit" class="site-btn">PLACE ORDER</button>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </section>
    </form>
    <!-- Checkout Section End -->

    <!-- Footer Section Begin -->
   <?php
    
    include 'inc/footer.php';
    

?>