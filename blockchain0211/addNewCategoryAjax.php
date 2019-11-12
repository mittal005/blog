<?php

$connect = mysqli_connect("localhost", "root", "", "admin1"); 

$category_name_ajax=$_POST["category_name_ajax"];
$query="INSERT INTO category(categoryName)VALUES('$category_name_ajax')";
$result = mysqli_query($connect,$query); 
if (!$result) {
    printf("Error: %s\n", mysqli_error($connect));
    exit();
  } 
 $query1="SELECT categoryName FROM category ORDER BY id  DESC LIMIT 1" ;
  $result1 = mysqli_query($connect, $query1);
  while($row = mysqli_fetch_array($result1))
{
     $categoryName_db=$row['categoryName'];

} 
if (!$result1) {
    printf("Error: %s\n", mysqli_error($connection));
    exit();
  } 
  if ($result1) {
     echo $categoryName_db;
  
  }
   

?>