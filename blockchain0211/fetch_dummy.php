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
      // while($row = mysqli_fetch_array($result)){
      //        $image=$row['image'];
      // }  
$row = mysqli_fetch_array($result);  
      echo json_encode($row);  

      //$location = './upload/' . $name;  
 // move_uploaded_file($_FILES["file"]["tmp_name"], $location);
//       $image_show = '<img src="gallery/'.$image.'" height="150" width="225" class="img-thumbnail" />'; 
     
//  $output = array(
//   'image' =>$image,
//   'imageshow'  =>  $imageshow 
//  );
//  echo json_encode($output);
// }

 }  
 ?>