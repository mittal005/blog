<?php
 
$select_by_category_query="SELECT * FROM category WHERE selectCategory LIKE '%$selectByCategory%'";
 $show_by_category_query=mysqli_query($connection,$select_by_category_query);
  if (!$show_by_category_query) {
    printf("Error: %s\n", mysqli_error($connection));
    exit();
  }  
  while($row=mysqli_fetch_array($show_by_category_query)) {
  
     $id=$row['id'];
     $selectCategory=$row['selectCategory'];
 $select_by_category_query1="SELECT * FROM posts  WHERE fid='{$id}' AND username='{$selectByAuthor}'";
$show_by_category_query1=mysqli_query($connection,$select_by_category_query1);
  if (!$show_by_category_query1) {
    printf("Error: %s\n", mysqli_error($connection));
    exit();
  }  
  
  while($row=mysqli_fetch_array($show_by_category_query1)) {
  $fid=$row['fid'];
  $id=$row['id'];
  $title=$row['Title'];
  $username=$row['username'];
  $onlyDate=$row['onlyDate'];
  
  ?>
      
  <tr>
    <td><!-- <input type="checkbox" class="checkthis" /> --></td>
    <td class="author_td"><label><?php echo $title;  ?></label></td>
    <td><label><?php echo $username;  ?></label></td>
    <td class="page_control"><label><?php echo $selectCategory;  ?></label></td>

    <!-- <td><label></label></td>
    <td><label></label></td> -->
   
    <td><?php echo $onlyDate;    ?></td>
    <td> <a class="nav-link " href="#" id="actionmenu" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          <i class="fa fa-ellipsis-v font-24"></i>
        </a>


        <div class="dropdown-menu dropdown-menu-right" id="actionmenulist" aria-labelledby="actionmenu">
          <a class="dropdown-item" href="editpost.php?edit=<?php echo $id;   ?>">Edit&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<i class="fa fa-pencil pad_left_40"></i></a>
  <a class="dropdown-item edit_data" name="edit" id="<?php echo $fid;  ?>" >Quick Edit&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<i class="fa fa-magic pad"></i></a>
  <!-- <button class="quickEditPost" >edit</button> -->
    <a class="dropdown-item deletePost" data-title="Delete" data-id="<?php echo $id;  ?>">Trash&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<i class="fa fa-trash padd"></i
            ></a>
             </div>
</label>
</td>
    </tr>
    <?php

}
}

    ?>
</tbody>
</table>
