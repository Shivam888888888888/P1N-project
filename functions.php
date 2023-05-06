<?php



include 'database.php';

function getProducts()

{

    $conn = newConnection();

    $sql = 'SELECT * FROM products';

    if ($conn->query($sql)) {

        return $conn->query($sql);

    } else {

        return $conn->error;

    }

}

function getProductsByCat($category)

{

    $conn = newConnection();

    $sql = "SELECT * FROM products WHERE category = '$category'";

    if ($conn->query($sql)) {

        return $conn->query($sql);

    } else {

        return $conn->error;

    }

}




function getSingle($id)

{

    $conn = newConnection();

    $sql = "SELECT * FROM products WHERE id =  '$id'";

    if ($conn->query($sql)) {

        return $conn->query($sql);

    } else {

        return $conn->error;

    }

}

function getSingleName($id)

{

    $conn = newConnection();

    $sql = "SELECT name FROM products WHERE id =  '$id'";
    
    if ($conn->query($sql)) {   

        return $conn->query($sql);

    } else {

        return $conn->error;

    }

}

function getCategories()

{

    $conn = newConnection();

    $sql = "SELECT distinct(category) FROM products";
    
    if ($conn->query($sql)) {   

        return $conn->query($sql);

    } else {

        return $conn->error;

    }

}



?>

