<?php

require_once '../base.php' ;

$smarty->assign('finishes', get_product_images('2013_finishes')) ;
$smarty->assign('new_items', get_product_images('2013_new_items')) ;
$smarty->display('whats-new.tpl') ;
?>
