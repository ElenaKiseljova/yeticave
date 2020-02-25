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

    function end_date($lot_date) {
        date_default_timezone_set("Europe/Moscow");

        $time = strtotime($lot_date) - time();
        $hour = floor($time/3600);
        $minute = floor(($time - $hour*3600)/60);
        $second = floor($time - $hour*3600 - $minute*60);

        if ($hour < 10) {
            $zero = '0';
        } else {
            $zero = '';
        }

        if ($minute < 10) {
            $zeroM = '0';
        } else {
            $zeroM = '';
        }

        if ($second < 10) {
            $zeroS = '0';
        } else {
            $zeroS = '';
        }

        $curtime = $zero . $hour . ':' . $zeroM . $minute . ':' . $zeroS . $second;

        return $curtime;
    }
 ?>
