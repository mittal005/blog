<div class="modal fade" id="quickeditmodal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLongTitle" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">  
      <h5 class="modal-title" id="exampleModalLongTitle">Edit your post</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <form action="" method="post">
      <div class="modal-body">
        <input type="text" name="bookId" id="bookId" value=""/>
       

   <label>Title</label>
   <input type="text" class="form-control" name="ftitle" id="title" required>
   <input type="text" class="form-control" name="sel" id="sel" required>
    <label>Category:</label>
    <div class="container5">
 <?php
                      $select_query="SELECT DISTINCT categoryName FROM category";
                           $select_all_categories_query=mysqli_query($connection, $select_query);
                if (!$select_all_categories_query) {
    printf("Error: %s\n", mysqli_error($connection));
    exit();
  }
                            while($row=mysqli_fetch_array($select_all_categories_query)){
                              $name=$row['categoryName'];
$str_arr = explode (",",$selectCategory); 
      ?>
      <input type="checkbox" name="select_category[]" value="<?php  $selectCategory; ?>" <?php echo (in_array($name,$str_arr)) ?"checked":""; ?>/  class="mar_top_20"> <?php echo $name;    ?><br>            
                                <?php     
                                    }
                                        ?>
  </div>
   <label>Slug</label>
   <input type="text" class="form-control" name="fname" id="content"> 
    <label>Date</label>
           <input type="Date" id="datepicker" name="fdate" class="form-control">
       <!-- <label>Status</label> -->
      <!--  <select class="form-control" id="status">
      <option>Draft</option>
      <option>Publish</option>
    </select> -->

    <label>dummy check</label>
    <input type="text" id="dummy" name="dummy" value="">
    
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancel</button>
        <input type="submit" name="update_post" class="btn btn-primary">
       <!--  <button type="button" class="btn btn-primary" name="update_post">Save changes</button> -->
      </div>
    </form>
    </div>
  </div>
</div>

<!-- ------------------------------------------------ -->
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
<!--  ----------------------------------------- -->

  $('#bookId').val(data.fid); 
                     $('#title').val(data.Title);  
                     $('#sel').val(data.selectCategory); 
                     $('#quickeditmodal').modal('show'); 