<?php  
 $connect = mysqli_connect("localhost", "root", "", "admin1");  
 if(isset($_POST["employee_id"]))  
 {  
 	//$eid=$_POST["employee_id"]);
      // $query = "SELECT * FROM category WHERE id = '".$_POST["employee_id"]."'";  
      $query="SELECT posts.id, posts.fid, posts.Title, posts.username, posts.onlyDate, category.selectCategory
FROM category
INNER JOIN posts ON '".$_POST["employee_id"]."'=posts.fid AND '".$_POST["employee_id"]."'=category.id";

      $result = mysqli_query($connect, $query);  
      //$row = mysqli_fetch_array($result);  
      while ($row = mysqli_fetch_array($result)) {
      	 $selectCategory= $row['selectCategory'];
      }
      $select_query="SELECT DISTINCT categoryName FROM category";
                           $select_all_categories_query=mysqli_query($connection, $select_query);
                if (!$select_all_categories_query) {
    printf("Error: %s\n", mysqli_error($connection));
    exit();
  }
       $output = '
<br />
<h3 align="center">Item Data</h3>

';                     while($row=mysqli_fetch_array($select_all_categories_query)){
                              $name=$row['categoryName'];
                              $str_arr = explode (",",$selectCategory); 
                              
    $output .= '
 
  <input type="checkbox" class="mar_top_20" name="select_category[]" value="<?php  $selectCategory; ?>"  (in_array($name,$str_arr)) ?"checked":""; />$name;
  
 ';
 $output .= '<br>';

}

    echo $output;  
 }  
 ?>
