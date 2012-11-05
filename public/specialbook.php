<?php

require_once '../base.php' ;

$smarty->assign('specialbook', get_product_images('specialbook')) ;
$smarty->display('specialbook.tpl') ;
?>
