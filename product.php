<?php require_once 'includes/header.php'; ?>

<div class="container m-auto p-0">
<?php 
$cata = getCategories();
    while ($cat = $cata->fetch_assoc()) {
?>
    <!--  -->
    <div class="category_heading px-4 mt-5">
        <h4>
            <?php echo strtoupper($cat['category']); ?>
        </h4>
    </div>
    <div class="row">
        <?php $products = getProductsByCat($cat['category']); ?>
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
    <?php }?>
</div>
<?php require_once 'includes/footer.php'; ?>
    
