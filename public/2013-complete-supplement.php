<?php

require_once '../base.php' ;

$smarty->assign('complete_supplement', get_product_images('2013_complete_supplement')) ;
$smarty->display('2013-complete-supplement.tpl') ;
?>
