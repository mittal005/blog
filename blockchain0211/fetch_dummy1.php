<?php  
 //fetch.php  
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
             $image=$row['image'];
      }  

      //echo json_encode($row); 

      //$location = './upload/' . $name;  
 // move_uploaded_file($_FILES["file"]["tmp_name"], $location);
      // echo '<img src="gallery/'.$image.'" height="150" width="225" class="img-thumbnail" />'; 
      ?>
 
<img class="image-preview" src="<?php echo "gallery/'.$image.'"; ?>" class="upload-preview" /> 
 }  
 ?>