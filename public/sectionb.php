<?php

require_once '../base.php' ;

if ($_REQUEST['p']) {
  $page = '_' . $_REQUEST['p'] ;
}

$smarty->display('main/sectionb' . $page . '.tpl') ;
?>
