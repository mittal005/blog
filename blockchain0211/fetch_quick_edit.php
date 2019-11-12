<?php  
 $connect = mysqli_connect("localhost", "root", "", "admin1");  
 if(isset($_POST["employee_id"]))  
 {  
  //$eid=$_POST["employee_id"]);
      // $query = "SELECT * FROM category WHERE id = '".$_POST["employee_id"]."'";  
      $query="SELECT posts.id, posts.fid, posts.Title, posts.username, posts.onlyDate,posts.seo_title,category.selectCategory
FROM category
INNER JOIN posts ON '".$_POST["employee_id"]."'=posts.fid AND '".$_POST["employee_id"]."'=category.id";

      $result = mysqli_query($connect, $query);  
      //echo $row = mysqli_fetch_array($result);  
      while ($row = mysqli_fetch_array($result)) {
      	 $fid= $row['fid'];
         $Title= $row['Title'];
         $username= $row['username'];
         $selectCategory= $row['selectCategory'];
         $seo_title= $row['seo_title'];
          $onlyDate= $row['onlyDate'];
     }
     //$check='checked';
$output = '
<br />
<h3 align="center">Quick Edit</h3>

';
$output .= '<input type="text" name="bookId" id="bookId" value="'.$fid.'"/>';
$output .= '<br>';
  $output .= '<label>Title</label>';
   $output .= '<input type="text" class="form-control" name="ftitle" id="title" value="'.$Title.'" required>';   
 $output .= '<label>Category</label>';
 $output .= '<br>';
 $output .= '<div class="container5">';
  $select_query="SELECT DISTINCT categoryName FROM category";
                           $select_all_categories_query=mysqli_query($connect, $select_query);
                if (!$select_all_categories_query) {
    printf("Error: %s\n", mysqli_error($connection));
    exit();
  }
                            while($row=mysqli_fetch_array($select_all_categories_query)){
                              $name=$row['categoryName'];
 $str_arr = explode (",",$selectCategory); 
 //print_r($str_arr);
      if (in_array($name,$str_arr)) {
      	  $check="checked";
      }else{
      	$check="";
      }
  $output .= '
      <input type="checkbox"  name="select_category_quick_draft[]" value="'.$name.'"  '.$check.'/  class="mar_top_20" >'.$name.'';            
          $output .= '<br>';                         
                                    }
 $output .= '</div>';                                   
                                    
 $output .= '<label>Slug</label>';
 $output .= '<input type="text" class="form-control" name="fslug" id="content" value="'.$seo_title.'">';
 $output .= '<label>Date</label>';
  $output .= '<input type="text" id="datepicker" name="fdate" class="form-control" value="'.$onlyDate.'">';                                        
     echo $output; 
 }  
 ?>

