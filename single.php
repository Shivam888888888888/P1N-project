<?php require_once 'includes/header.php'; ?>
<div class="bg-white container  my-4 py-4 px-0 rounded">

<div class="container bg-white m-0 p-3 d-flex">
<?php
$products = getSingle($_GET['id']);
while ($product = $products->fetch_assoc()) { ?>
  
  <div class="d-flex align-items-center">
    <div class="rounded circle bg-white">
        <img class="card-img-top w-100 m-auto " src="<?php echo $product['imageURl']?>" alt="Card image cap">
    </div>
    <div class="text-dark">
        <h1 class="card-title"><?php echo $product['name'];?></h1>
        <p class="card-text"><?php echo $product['description']?>
            </p>
        <h3>PRICE: $<?php echo $product['price']?></h3>
        <a href="index.php?purchased=<?php echo $product['id']?>" 
        class="btn bg-third circle text-light pt-2 mt-3">
          <h5>Buy now </h5>
        </a>
    </div>
  </div>

                
 
<?php }
?>
</div>
    
    
</div>
<?php require_once 'includes/footer.php'; ?>
    
