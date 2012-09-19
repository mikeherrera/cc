<?php

require_once '../base.php' ;

$smarty->assign('memorials', get_product_images('memorials')) ;
$smarty->display('memorials.tpl') ;
?>
