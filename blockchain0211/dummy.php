<!DOCTYPE html>
<html>
 <head>
  <title>Webslesson Tutorial | Upload File without using Form Submit in Ajax PHP</title>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.0/jquery.min.js"></script>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" />
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
 </head>

<body>
  <br /><br />
  <div class="container" style="width:700px;">
   <h2 align="center">Upload File without using Form Submit in Ajax PHP</h2>
   <br />
    <label>Image</label>
    <?php     
    $connect = mysqli_connect("localhost", "root", "", "admin1"); 
    $query="SELECT id,Title,image FROM posts WHERE id=19";
$result = mysqli_query($connect, $query);
      if (!$result) {
    printf("Error: %s\n", mysqli_error($connection));
    exit();
  }    
while ($row = mysqli_fetch_array($result)) {
  $id=$row['id'];
   $image=$row['image'];
}
?>

  <?php
     echo '
    <img src="gallery/'.$image.'"  id="image" name="image">
    ';
?>
      

<br />
<!--  -->
  <?php $image = wp_get_attachment_image_src( get_post_thumbnail_id( $id ), 'single-post-thumbnail' ); ?>
  <div id="custom-bg" style="background-image: url('<?php echo $image[0]; ?>')">

  </div>

<!-- --------------------------------------------------------------------------------------- -->
<a  class="dropdown-item edit_data" name="edit" id="<?php echo $id; ?>" >SELECT</a>
<br />
   <span id="bookId">
     

   </span>
   <span id="imageshow">

</span>
<!-- <input type="text" name="bookId" id="bookId"> -->
<br />
   <!--  <a  class="dropdown-item edit_data" name="edit" id="<?php //echo $id; ?>" ><?php      ?></a> -->                      
                             <br />
   <label>Select Image</label>
   <input type="file" name="file" id="file" />
   <br />
   <span id="uploaded_image"></span>
  </div>
  <script type="text/javascript">
  $(document).ready(function(){  
    
$(document).on('click', '.edit_data', function(){  
           var employee_id = $(this).attr("id");  
           $.ajax({  
                url:"fetch_dummy.php",  
                method:"POST",  
                data:{employee_id:employee_id},
                dataType:"json",  
                success:function(data){  
                    $('#bookId').val(data.image);
                    //$('#imageshow').html(data);
                    ; 
                     
                },  
                error: function() 
        {
        } 
           });  
      });  

   });  
  

</script>
<!-- ------------------------------------------------ -->


 </body>

</html>






