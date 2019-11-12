<?php
if(isset($_SERVER['HTTPS']) && $_SERVER['HTTPS'] === 'on') 
    $link = "https"; 
else
    $link = "http"; 

    $link .= "://"; 
    $current_time = date('Y/m/d');

$url= $link . $_SERVER['SERVER_NAME'] . dirname($_SERVER['PHP_SELF']) . '/' . $current_time ;

echo $url;
?>