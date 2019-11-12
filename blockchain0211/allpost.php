<?php include("includes/header.php"); ?>
<?php

//$connection=mysqli_connect('localhost','root','','admin');
              $query="SELECT * FROM posts";
$select_allposts=mysqli_query($connection,$query);

if($select_allposts){
     $total_posts = mysqli_num_rows($select_allposts); 
     
          }  

$publish_query="SELECT Status FROM posts WHERE Status='Publish'";
$select_publish_query=mysqli_query($connection,$publish_query);
if($select_publish_query){
     $publish_posts = mysqli_num_rows($select_publish_query); 
               }  

$draft_query="SELECT Status FROM posts WHERE Status='Draft'";
$select_draft_query=mysqli_query($connection,$draft_query);
if($select_draft_query){
     $draft_posts = mysqli_num_rows($select_draft_query); 
               } 

  $query="SELECT * FROM trash";
$select_alltrash=mysqli_query($connection,$query);

if($select_alltrash){
     $total_trash = mysqli_num_rows($select_alltrash); 
     
          }                 

?>
<!-- ------------------------------sorting------------------ -->
<?php


?>
<!-- --------------------------allposts--------------------- -->
<?php
              //$connection=mysqli_connect('localhost','root','','admin');
 if (isset($_POST['update_post'])) {
  if (isset($_POST['bookId'])) {
     $id=$_POST['bookId'];  
  }
  if (isset($_POST['ftitle'])) {
      $title=$_POST['ftitle'];  
  }
  if (isset($_POST['select_category_quick_draft'])) {
     $select_category=implode(',', $_POST['select_category_quick_draft']);
  }
  if (isset($_POST['fslug'])) {
       $fslug=$_POST['fslug'];
  }
  if (isset($_POST['fdate'])) {
       $fdate=$_POST['fdate'];
  }
  
    
    
   
   //$password=$_POST['fdate'];
   //$fdate1= date('d-m-Y', strtotime($fdate));
//    $select_query="SELECT Status FROM posts WHERE id=$id";
// $select_allposts=mysqli_query($connection,$select_query);
// while($row=mysqli_fetch_array($select_allposts)) {
//   $Status=$row['Status'];
//   }
  //if ($Status=="Publish") {
   $query1="UPDATE category SET selectCategory='$select_category' WHERE id={$id}";
  $update_query1=mysqli_query($connection,$query1);
  if (!$update_query1) {
    printf("Error: %s\n", mysqli_error($connection));
    exit();
  }  
   $query="UPDATE posts SET Title='$title',seo_title='$fslug',Title='$title',onlyDate='$fdate' WHERE fid={$id}";
  $update_query=mysqli_query($connection,$query);
  if (!$update_query) {
    printf("Error: %s\n", mysqli_error($connection));
    exit();
  }  
  //}
  // if ($Status=="Draft") {
  //  $query="UPDATE posts SET Title='$title',username='$fname', draftTime='$fdate',onlyDate=' $fdate' WHERE id={$id}";
  // $update_query=mysqli_query($connection,$query);
  // if (!$update_query) {
  //   printf("Error: %s\n", mysqli_error($connection));
  //   exit();
  // }  
  // }
   
}
// -----------------------------
if (isset($_POST['delete_post'])) {
   $id=$_POST['deleteID']; 


   $query="SELECT * FROM posts WHERE id={$id}";
   $select_query=mysqli_query($connection,$query);
   if (!$select_query) {
    printf("Error: %s\n", mysqli_error($connection));
    exit();
  }  
    while ($row=mysqli_fetch_array($select_query)) {
       $fid=$row['fid'];
       $userid=$row['user_id'];
       $username=$row['username'];
       $Title=$row['Title'];
       $Content=$row['Content'];
        $Status=$row['Status'];
       $draftTime=$row['draftTime'];
       $publishTime=$row['publishTime'];
       $Visibility=$row['Visibility'];
       $publihedOn=$row['publihedOn'];
       $Format=$row['Format'];
       
       $seo_title=$row['seo_title'];
       $url=$row['url'];
       $seo_schema=$row['seo_schema'];
       $image=$row['image'];
       
    }
    if(empty($fid)){ 
          $fid="";  
    }
    if(empty($userid)){ 
          $userid="";  
    }
    if(empty($username)){ 
          $username="";  
    }
    if(empty($Title)){ 
          $Title="";  
    }
    if(empty($Content)){ 
          $Content="";  
    }
    if(empty($Status)){ 
          $Status="";  
    }
    if(empty($draftTime)){ 
          $draftTime="";  
    }
    if(empty($publishTime)){ 
          $publishTime="";  
    }
    if(empty($Visibility)){ 
          $Visibility="";  
    }
    if(empty($publihedOn)){ 
          $publihedOn="";  
    }
    if(empty($Format)){ 
          $Format="";  
    }

    if(empty($selectCategory)){ 
          $selectCategory="";  
    }
     if(empty($categoryName)){ 
         $categoryName="";  
    }
    if(empty($categoryType)){ 
          $categoryType="";  
    }
    if(empty($seo_title)){ 
          $seo_title="";  
    }

    if(empty($url)){ 
          $url="";  
    }
    if(empty($seo_schema)){ 
          $seo_schema="";  
    }

    if(empty( $image)){ 
           $image="";  
    }
 date_default_timezone_set("Asia/Kolkata");
      $current_time = date("Y-m-d");
 $cat_query="SELECT * FROM category WHERE id={$fid}";
   $cat_select_query=mysqli_query($connection,$cat_query);
   if (!$cat_select_query) {
    printf("Error: %s\n", mysqli_error($connection));
    exit();
  }  
    while ($row=mysqli_fetch_array($cat_select_query)) {
      $selectCategory=$row['selectCategory'];
       $categoryName=$row['categoryName'];
       $categoryType=$row['parentcategory'];
     }

    $query="INSERT INTO trash(fid,user_id,username,Title,Content,Status,draftTime,publishTime,Visibility,publihedOn,Format,selectCategory,categoryName,categoryType,seo_title,url,seo_schema,image, trashDate)VALUES('$fid','$userid','$username','$Title','$Content','$Status','$draftTime','$publishTime','$Visibility',' $publihedOn','$Format','$selectCategory','$categoryName','$categoryType','$seo_title','$url','$seo_schema','$image','$current_time')";
    $insert_query=mysqli_query($connection,$query);
    if (!$insert_query) {
    printf("Error: %s\n", mysqli_error($connection));
    exit();
  }  
  
   $query="DELETE FROM category WHERE id={$fid}";
  $delete_query=mysqli_query($connection,$query);
  if (!$delete_query) {
    printf("Error: %s\n", mysqli_error($connection));
    exit();
  }  
}
?>
<!-- ---------------------------------------- -->
<body id="page-top">

 <?php include("includes/topnav.php"); ?>

  <div id="wrapper">

    <!-- Sidebar -->
    
<?php include("includes/sidenav.php"); ?>

      <div class="container-fluid">
        <div class="row dash_row outer-w3-agile">
            <div class="col-md-12">
              <div class="row">
          <div class="col-md-6">
         <a href="allpost.php?show=all"> All (<span><?php echo $total_posts;    ?></span>) </a> |  <a href="allpost.php?show=published"> Published </a> (<span><?php echo $publish_posts;   ?></span>)  | <a href="allpost.php?show=draft">  Draft </a>(<span><?php echo $draft_posts; ?></span>)|<a href="allpost.php?show=trash"> Trash </a> (<span><?php echo $total_trash;   ?></span>)

        </div>
         <div class="col-md-2 offset-2">
    <form action="" method="post">
    <input type="text" name="search" class="form-control" placeholder="Search By Title">
  </div>
  <div class="col-md-2 ">
    <input type="submit" name="selectByTitle" class="btn btn-primary col-md-6" value="Search">
     <!-- <button type="button" class="btn btn-primary" >Apply</button> -->
      </form>
  </div>
</div>
      
<div class="row dash_row" id="filter">
<!-- ---------------------------select by category---------------------- -->
 

   <div class="col-md-2">
    <form action="" method="post">

    <select class="form-control" name="selectByAuthor">

      <option value="allauthor">All Author</option>
       <?php
                           // $connection=mysqli_connect('localhost','root','','admin');
                           $select_query="SELECT DISTINCT username FROM posts";
                           $select_all_categories_query=mysqli_query($connection, $select_query);
                if (!$select_all_categories_query) {
    printf("Error: %s\n", mysqli_error($connection));
    exit();
  }
                            while($row=mysqli_fetch_array($select_all_categories_query)){
                              $author=$row['username'];
                          
                    ?>
                                        <option> <?php echo $author;    ?></option>
                                       
                                        <?php
                                      }
                                        ?>
    </select>
  </div>
  <div class="col-md-2">
    <select class="form-control" name="selectByCategorySort">
      <option value="allcategory">All Category</option>
       <?php
                           // $connection=mysqli_connect('localhost','root','','admin');
                           $select_query="SELECT DISTINCT categoryName FROM category";
                           $select_all_categories_query=mysqli_query($connection, $select_query);
                if (!$select_all_categories_query) {
    printf("Error: %s\n", mysqli_error($connection));
    exit();
  }
                            while($row=mysqli_fetch_array($select_all_categories_query)){
                              $category_sort=$row['categoryName'];
                          
                    ?>
                                        <option> <?php echo $category_sort;    ?></option>
                                       
                                        <?php
                                      }
                                        ?>
    </select>
  </div>
  <div class="col-md-2">
    <select class="form-control" name="selectByFormat">
      <option value="format">Format</option>
       <?php
                           // $connection=mysqli_connect('localhost','root','','admin');
                           $select_query="SELECT DISTINCT Format FROM posts";
                           $select_all_categories_query=mysqli_query($connection, $select_query);
                if (!$select_all_categories_query) {
    printf("Error: %s\n", mysqli_error($connection));
    exit();
  }
                            while($row=mysqli_fetch_array($select_all_categories_query)){
                              $Format=$row['Format'];
                          
                    ?>
                                        <option> <?php echo $Format;    ?></option>
                                       
                                        <?php
                                      }
                                        ?>
    </select>
  </div>
  <div class="col-md-2">
   <input type="submit" name="selectByCategory" class="btn btn-primary col-md-6" value="Apply">
     <!-- <button type="button" class="btn btn-primary" name="selectByCategory">Apply</button> -->
      </form>
  </div>

<!-- ------------------------------------------------------------------------ -->
  <div class="col-md-2">
    <form action="" method="post">
    <select class="form-control" name="byDate">
      <option value="alldates">All Dates</option>
      <?php
                           // $connection=mysqli_connect('localhost','root','','admin'); 
      
                           $select_query="SELECT DISTINCT onlyDate FROM posts";
                           $select_all_categories_query=mysqli_query($connection, $select_query);
                if (!$select_all_categories_query) {
    printf("Error: %s\n", mysqli_error($connection));
    exit();
  }
                            while($row=mysqli_fetch_array($select_all_categories_query)){
                              $Date=$row['onlyDate'];
                          
                    ?>
                                        <option> <?php echo $Date;    ?></option>
                                       
                                        <?php
                                      }
                                        ?>
    </select>
  </div>
  <div class="col-md-2 ">
    <input type="submit" name="selectByDate" class="btn btn-primary col-md-6" value="Apply">
     <!-- <button type="button" class="btn btn-primary" >Apply</button> -->
      </form>
  </div>
  
</div>
</div>
</div>
        <div class="row dash_row">
        <div class="col-md-12 outer-w3-agile">
              <div class="table-responsive">

                
              <table id="mytable" class="table table-bordred table-striped">
                   
                   <thead>
                   
                   <th><!-- <input type="checkbox" id="checkall" /> --></th>
                   <th>Title</th>
                    <th>Author</th>
                     <th>Categories</th>
                     <!-- <th>Tags</th>
                     <th>Comment</th> -->
                     <th>Date</th>
                     <th>Edit</th>
                   
                   </thead>
    <tbody>


      <?php if(isset($_GET['show'])){
        $show=$_GET['show'];
      }
      else{
  $show='';
}
if (!isset($_POST['selectByCategory']) && !isset($_POST['selectByDate']) && !isset($_POST['selectByTitle'])) {
switch ($show) {
             case 'published';
               include "published_posts.php"; 
               break;
              case 'draft':
              include "draft_posts.php"; 
               break;
               case 'all':
              include "allposts.php"; 
               break;
               case 'sort':
              include "sort.php"; 
               break;
               case 'trash':
                include "trash.php"; 
                 break;
              default:
               include "allposts.php"; 
               break;
           }   
         }
         ?>
<!-- // ---------------------------selectByCategory---------------------------------- -->
<?php
if (isset($_POST['selectByCategory'])) {
  
   $selectByAuthor=$_POST['selectByAuthor'];  
   $selectByCategory=$_POST['selectByCategorySort'];
   $selectByFormat=$_POST['selectByFormat'];

 
 
 if (($selectByAuthor=='allauthor') && ($selectByCategory=='allcategory') && ($selectByFormat=='format')) {
   header("Location:allpost.php");
 }
 else if (!($selectByAuthor=='allauthor') && !($selectByCategory=='allcategory') && !($selectByFormat=='format')){
      
  include "selectBycategory.php";
}else if(!($selectByAuthor=='allauthor') && ($selectByCategory=='allcategory') && ($selectByFormat=='format')){
include "includes/selectByAuthor.php";
}else if(($selectByAuthor=='allauthor') && !($selectByCategory=='allcategory') && ($selectByFormat=='format')){
include "includes/selectByAllCategory.php";
}else if(($selectByAuthor=='allauthor') && ($selectByCategory=='allcategory') && !($selectByFormat=='format')){
include "includes/selectByFormat.php";
}else if(!($selectByAuthor=='allauthor') && !($selectByCategory=='allcategory') && ($selectByFormat=='format')){
include "includes/selectByAuthorAndCategory.php";
}else if(!($selectByAuthor=='allauthor') && ($selectByCategory=='allcategory') && !($selectByFormat=='format')){
include "includes/selectByAuthorAndFormat.php";
}else if(($selectByAuthor=='allauthor') && !($selectByCategory=='allcategory') && !($selectByFormat=='format')){
include "includes/selectByCategoryAndFormat.php";
}
else{
  echo "Nothing to show";
}
}

?>
<!-- // --------------------------------selectbydate--------------------------------- -->
<?php
if (isset($_POST['selectByDate'])) {
  
$publihedOn=$_POST['byDate'];
if ($publihedOn=='alldates') {
  header("Location:allpost.php");
}else{
  include "selectByDate_posts.php";
}


}
      ?>
<!-- ------------------------------------searchbytitle---------------------------------- -->   

<?php
     
if (isset($_POST['selectByTitle'])) {
  include "includes/searchByTitle.php";

}
         ?>
            </div>

                </div>
              </div>
      </div>
 <!-- --------------------------------------------- -->
   
<!-- ------------------------------------------------ -->
   
<!-- ----------------------------------------------------- -->
<!-- ---------quickedit modal------------- -->
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
      <div class="modal-body" id="inserted_item_data">
        
   
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
<!-- ---------delete modal---- -->
<div class="modal fade" id="delete" tabindex="-1" role="dialog" aria-labelledby="exampleModalLongTitle" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLongTitle">Delete</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <form action="" method="post">
      <div class="modal-body">
        
        <input type="hidden" id="deleteID" name="deleteID">
  Are you sure want delete?

      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary"  data-dismiss="modal">Cancel</button>
       
      <input type="submit" class="btn btn-primary" name="delete_post" value="Delete">
        <!-- <a href=""><button type="button" class="btn btn-primary">Delete</button></a> -->
      </div>
      </form>
       
      </div>
    </div>
  </div>
</div>
<!-- -------------------- -->
<script type="text/javascript">
 
   $(document).ready(function(){  
    
$(document).on('click', '.edit_data', function(){
  var employee_id = $(this).attr("id");
  $.ajax({  
                url:"fetch_quick_edit.php",  
                method:"POST",  
                data:{employee_id:employee_id},  
                //dataType:"json",  
                success:function(data){  
                   //$('#title').val(data.Title);
                  $('#inserted_item_data').html(data);
                  $('#quickeditmodal').modal('show');  
                     
                }  
           }); 



   });


   });  
  



// -----------------------------------------------
  $(document).ready(function(){

  $(".deletePost").click(function(){
  $("#delete").modal('show');
     var deleteId = $(this).data('id');
     $(".modal-body #deleteID").val(deleteId);
     // As pointed out in comments, 
     // it is unnecessary to have to manually call the modal.
     // $('#addBookDialog').modal('show');
});
});
</script>
  



<!-- ------------------------------------------------------- -->
  <!-- Custom scripts for all pages-->
 <script type="text/javascript">
    $('#datepicker').datepicker({
        weekStart: 1,
        daysOfWeekHighlighted: "6,0",
        autoclose: true,
        todayHighlight: true,
    });
    $('#datepicker').datepicker("setDate", new Date());
</script> 

</body>

</html>