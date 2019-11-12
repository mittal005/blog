<?php

$connect = mysqli_connect("localhost", "root", "", "admin1"); 


   
                           
    $select_query="SELECT DISTINCT categoryName FROM category ORDER BY id DESC";

    $select_all_categories_query=mysqli_query($connect, $select_query);
                if (!$select_all_categories_query) {
    printf("Error: %s\n", mysqli_error($connect));
    exit();
  }
                      
$output = '

<h3 align="center">Item Data</h3>

';

while($row = mysqli_fetch_array($select_all_categories_query))
{
 $output .= '
 
  <input type="checkbox" class="mar_top_20" name="selectCategory[]" id="selectCategory_ajax" value="'.$row["categoryName"].'">'.$row["categoryName"].'
  
 ';
 $output .= '<br>';
}

 echo $output;                                     
                   



?>