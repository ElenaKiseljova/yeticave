<?php
    function include_template($tmp, $vars = array()) {
         if(file_exists('templates/'.$tmp.'.tpl.php')) {
             ob_start();
             extract($vars);
             require_once('templates/'.$tmp.'.tpl.php');
             return ob_get_clean();
         } else {
             return 'Указанного файла не существует';
         }
    }

    function rub($price) {
        $price = ceil(htmlspecialchars($price));

        if ($price >= 1000) {
            $strprice  = substr($price, 0, -3) . ' ' . substr($price, -3) . ' ' . '<b class="rub">р</b>';
        } else {
            $strprice = $price . ' ' . '<b class="rub">р</b>';
        }

        return $strprice;
    }
 ?>
