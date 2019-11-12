<!DOCTYPE html>
<html>
<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script>
$(document).ready(function () {
  $("#save").on('click',(function() {
    //e.preventDefault();
    //var name= $("#category_name").val();
    $.ajax({
          url: "category_insert.php",
      type: "POST",
      data: $("#uploadForm1").serialize(),
      //dataType:"json",
      // contentType: false,
      //     cache: false,
      // processData:false,
      success: function(data)
        {
      //alert(data);
      //$("#uploadForm1")[0].reset();
        },
        error: function() 
        {
        }           
     });
  }));
});
</script>
</head>
<body>
<form id="uploadForm1" action="category_insert.php" method="post">
  <input type="text" class="form-control mar_top_20"  name="category_name" id="category_name">
 
  <button class="btn btn-primary button-top" id="save" name="add_new_category">Add new</button>

</form>
</body>
</html>