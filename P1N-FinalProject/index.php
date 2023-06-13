<?php require_once 'includes/header.php'; ?>
<?php 

if(isset($_GET['name'])) { ?>
    <div class=" container alert alert-info text-center notify shadow" role="alert">Thankyou! 
            <?php
        echo  $_GET['name']; ?>. Our team will contact you soon.</div>
</div> <?php
}
if(isset($_GET['purchased'])){

    $singleproducts = getSingleName($_GET['purchased']);
    if($singleproducts->num_rows > 0){
        ?>
        <div class=" container alert alert-success text-center notify shadow" role="alert">Order has been successfully placed for 
            <?php
        echo  $singleproducts->fetch_assoc()['name']; ?>
        </div>
<?php
}
    }
   ?>


<div class="hero mb-5 ">
    <div >
        <img src="image/1.jpeg" alt="">
    </div>
    <div>

        <img src="image/2.jpeg" alt="">
    </div>
    <div>

        <img src="image/3.jpeg" alt="">
    </div>
    <div>

        <img src="image/4.jpeg" alt="">
    </div>
    <div>

        <img src="image/5.jpeg" alt="">
    </div>
</div>

<div class="container m-auto p-0">

    <!--  -->
    <div class="category_heading px-4 mt-5">
        <h4>
            LATEST PRODUCTS
        </h4>
    </div>
    <div class="row">
        <?php $products = getProductsByCat('Latest products'); ?>
        <?php while ($product = $products->fetch_assoc()) { ?>
        <div class="col-lg-6 p-2">
            <div class="card rounded circle bg-second">
                <div class="rounded circle card bg-white">
                    <img class="card-img-top w-25 m-auto " src="<?php echo $product['imageURl']?>" alt="Card image cap">
                </div>
                <!-- <hr> -->
                <div class="card-body bg-second text-white">
                    <h5 class="card-title"><?php echo $product['name'];?></h5>
                    <p class="card-text"><?php echo $product['description']?>
                        </p>
                        <hr>
                    <h3>PRICE: $<?php echo $product['price']?></h3>
              
                </div>
                    
                    <a href="single.php?id=<?php echo $product['id']?>" class="btn bg-third read-more text-light pt-3">
                        <h5> Read More </h5>
                    </a>
            </div>
        </div>
        <?php } ?>
    </div>

    <div class="category_heading px-4 mt-5">
        <h4>
            ON SALE
        </h4>
    </div>
    <div class="row p-2">
        <?php $products = getProductsByCat('On Sale'); ?>
        <?php while ($product = $products->fetch_assoc()) { ?>
            <div class="col-lg-6 p-2">
            <div class="card rounded circle bg-second ">
                <div class="rounded circle card bg-white">
                    <img class="card-img-top w-25 m-auto " src="<?php echo $product['imageURl']?>" alt="Card image cap">
                </div>
                <!-- <hr> -->
                <div class="card-body bg-second text-white">
                    <h5 class="card-title"><?php echo $product['name'];?></h5>
                    <p class="card-text"><?php echo $product['description']?>
                        </p>
                        <hr>
                    <h3>PRICE: $<?php echo $product['price']?></h3>
              
                    </div>
                        
                        <a href="single.php?id=<?php echo $product['id']?>" class="btn bg-third read-more text-light pt-3">
                            <h5> Read More </h5>
                        </a>
                    </div>
                 </div>
                    </div>
            </div>
        <?php } ?>
        </div>
        </div>
<?php require_once 'includes/footer.php'; ?>
    
