
<?php
$connect = mysqli_connect("localhost", "root", "", "admin1");
if(isset($_POST["employee_id"]))  
 {   
 $query = "SELECT image FROM posts WHERE id = '".$_POST["employee_id"]."'";  
      $result = mysqli_query($connect, $query);
      if (!$result) {
    printf("Error: %s\n", mysqli_error($connection));
    exit();
  }    

  while($row = mysqli_fetch_array($result)){
             echo $image=$row['image'];
       } 
       //echo json_encode($image);
       $targetPath = "gallery/". $image;
       ?>
<!-- <img class="image-preview" src="<?php //echo $targetPath; ?>" class="upload-preview" /> -->
<?php
}
?>


