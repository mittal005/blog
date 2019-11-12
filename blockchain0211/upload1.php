<?php

$connect = mysqli_connect("localhost", "root", "", "admin1"); 	
$fid_edit=$_POST["fid_edit"];
$categoryName=$_POST["category_name1"];

$query="UPDATE posts SET url_title='$categoryName' WHERE fid='$fid_edit'";
$result = mysqli_query($connect, $query); 
if (!$result) {
    printf("Error: %s\n", mysqli_error($connect));
    exit();
  } 

  $query1="SELECT url_title FROM posts ORDER BY id  DESC LIMIT 1" ;
  $result1 = mysqli_query($connect, $query1);
  while($row = mysqli_fetch_array($result1))
{
     $categoryName_db=$row['url_title'];

} 
if (!$result1) {
    printf("Error: %s\n", mysqli_error($connection));
    exit();
  } 
  if ($result1) {
     echo $categoryName_db;
  
  }
  //echo json_encode($result1);
  //echo $result;
?>