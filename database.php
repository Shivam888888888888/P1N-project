<?php

function newConnection(){
    $server = 'localhost';
    $username = 'root';
    $password = '';
    $db = 'spa';
    $connection = new mysqli($server,$username,$password,$db);

    if(!$connection)
    {
        die("ERROR : Connection error. ".$connection->connect_error);
    } 
    return $connection;
}
?>