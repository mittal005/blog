<?php
// ------------------------pagination-----------------------------
 $per_page=5;
if(isset($_GET['page'])) {

          
            $page = $_GET['page'];

            } else {


                $page = "";
            }


            if($page == "" || $page == 1) {

                $page_1 = 0;

            } else {

                $page_1 = ($page * $per_page) - $per_page;

            }

          //$connection=mysqli_connect('localhost','root','','admin');
          $post_query_count="SELECT * FROM posts WHERE Status='Publish'";
          $find_count=mysqli_query($connection,$post_query_count);
          if (!$find_count) {
    printf("Error: %s\n", mysqli_error($connection));
    exit();
  }
          $count=mysqli_num_rows($find_count); 
          $count=ceil($count/$per_page);

// --------------------------

?>
<?php
             
              //$connection=mysqli_connect('localhost','root','','admin');
              // $query="SELECT * FROM posts WHERE Status='Publish' LIMIT $page_1,$per_page";
$query="SELECT posts.id,posts.fid, posts.Title, posts.username, posts.onlyDate, category.selectCategory
FROM posts
INNER JOIN category ON posts.fid=category.id AND posts.status='Publish' LIMIT $page_1,$per_page";
$select_allposts=mysqli_query($connection,$query);
while($row=mysqli_fetch_array($select_allposts)) {
  $id=$row['id'];
   $fid=$row['fid'];
  $title=$row['Title'];
  $username=$row['username'];
  $selectCategory=$row['selectCategory'];
  $onlyDate=$row['onlyDate'];
  // $draftTime=$row['draftTime'];
  // $publishTime=$row['publishTime'];
              ?>       

    
    <tr>
    <td><!-- <input type="checkbox" class="checkthis" /> --></td>
    <td class="author_td"><label><?php echo $title;  ?></label></td>
    <td><label><?php echo $username;  ?></label></td>
    <td class="page_control"><label><?php echo $selectCategory;  ?></label></td>

    <!-- <td><label></label></td>
    <td><label></label></td> -->
   
    <td><?php echo $onlyDate;  ?></td>
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

    ?>
 </tbody>
        
</table>
<ul class="pagination">

  <?php
   for($i =1; $i <= $count; $i++) {


        if($i == $page) {

             echo "<li class='page-item'><a class='page-link active_pagination' href='allpost.php?show=published&&page={$i}'>{$i}</a></li>";


        }  else {

            echo "<li class='page-item''><a class='page-link' href='allpost.php?show=published&&page={$i}'>{$i}</a></li>";


        }

         
        }



  ?>
    
 
  </ul>
  