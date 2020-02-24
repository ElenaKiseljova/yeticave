<?php
    function include_template($tmp, $vars = array()) {
         if(file_exists('templates/'.$tmp.'.tpl.php')) {
             ob_start();
             extract($vars);
             require_once('templates/'.$tmp.'.tpl.php');
             return ob_get_clean();
         }
    }
 ?>
