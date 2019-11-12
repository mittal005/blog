<?php
$connect = mysqli_connect("localhost", "root", "", "admin1"); 

if(isset($_POST['submit'])){
  if(!empty($_POST['selectCategory'])) {
     
       echo $selectCategory=implode(',', $_POST['selectCategory']);
       
   }else{
       echo $selectCategory="none";
   }


$query="INSERT INTO category(selectCategory)VALUES('$selectCategory')";
 $select_all_categories_query=mysqli_query($connect, $query);
                if (!$select_all_categories_query) {
    printf("Error: %s\n", mysqli_error($connect));
    exit();
  }
}
?>




<!DOCTYPE html>
<html>
<head>
  <?php   include 'header1.php';           ?>
</head>
<body>
  <div class="container">
<div class="col-md-4">
  <input type="text" class="form-control"  name="category_name_ajax" id="category_name_ajax">
</div>
<div>
  <button class="btn btn-primary button-top" id="uploadForm" name="add_new_category">Add new</button>
</div>
<form action="" method="post">
<div id="inserted_item_data">
  
</div>
<div>
  <input type="submit" name="submit" value="submit">
</div>
</form>
</div>
<!-- <script type="text/javascript">
  $(document).ready(function () {
  fetch_item_data();
   });
</script> -->
<script type="text/javascript">
   $(document).ready(function (e) {
  $('#uploadForm').click(function(e){
  e.preventDefault();
  
    var category_name_ajax =$("#category_name_ajax").val();
    //var category_name1 =$("#category_name").val();
    if (category_name_ajax  != "") {
    $.ajax({
          url: "addNewCategoryAjax.php",
      type: "POST",
      data:{category_name_ajax:category_name_ajax},
      // contentType: false,
   //       cache: false,
      // processData:false,
      //dataType:"json",
      success: function(data)
        {
          //alert(data);
          $("#category_name_ajax").val("");
          fetch_item_data();
        },
        error: function() 
        {
        }           
     });
  }
  });
  // ---------------------------
  function fetch_item_data()
 {
  $.ajax({
   url:"fetch_category.php",
   method:"POST",
   success:function(data)
   {
    $('#inserted_item_data').html(data);
   }
  })
 }
fetch_item_data();
});

</script>
</body>
</html>
