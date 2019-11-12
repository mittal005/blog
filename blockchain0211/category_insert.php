<?php

$connect = mysqli_connect("localhost", "root", "", "admin1"); 	
$categoryName=$_POST["category_name"];

$query="INSERT INTO category(categoryName)VALUES('$categoryName')";
$result = mysqli_query($connect, $query); 
if (!$result) {
    printf("Error: %s\n", mysqli_error($connection));
    exit();
  }  
  if ($result) {
     //echo "data saved";
  	header("Location:demo.php");
  }
  	//echo json_encode($result);
  
//echo json_encode($result);







?>