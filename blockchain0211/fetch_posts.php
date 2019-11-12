<?php  
 $connect = mysqli_connect("localhost", "root", "", "admin1");  
 if(isset($_POST["employee_id"]))  
 {  
  //$eid=$_POST["employee_id"]);
      // $query = "SELECT * FROM category WHERE id = '".$_POST["employee_id"]."'";  
      $query="SELECT posts.id, posts.fid, posts.Title, posts.username, posts.onlyDate, category.selectCategory
FROM category
INNER JOIN posts ON '".$_POST["employee_id"]."'=posts.fid AND '".$_POST["employee_id"]."'=category.id";
//    $query="SELECT id,fid,Title,onlyDate FROM posts WHERE fid =$eid
// UNION ALL
// SELECT id,selectCategory FROM category WHERE id =$eid";
      $result = mysqli_query($connect, $query);  
      $row = mysqli_fetch_array($result);  
      // while ($row = mysqli_fetch_array($result)) {
      //   $id= $row['id'];
      // }
     echo json_encode($row);  
 }  
 ?>