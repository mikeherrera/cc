<?php

define('ROOT', '/Users/maherrera/Documents/Projects/continentalstudiosinc/') ;
define('LIB', ROOT . 'lib/') ;
define('SMARTY', LIB . 'Smarty-3.1.11/libs/') ;
define('PUB', ROOT . 'public/') ;
define('VIEWS', ROOT . 'views/') ;
define('TMP', ROOT . 'tmp/') ;
define('TEMP_C', TMP . 'templates_c/') ;
define('CACHE', TMP . 'cache/') ;

define('WEB_ROOT', 'http://dev.cc.com/') ;
define('ASSETS', WEB_ROOT . 'assets/') ;
define('BOOTSTRAP', ASSETS . 'bootstrap/') ;
define('BOOTSTRAP_CSS', BOOTSTRAP . 'css/bootstrap.min.css') ;
define('BOOTSTRAP_JS', BOOTSTRAP . 'js/bootstrap.min.js') ;
define('BOOTSTRAP_IMG', BOOTSTRAP . 'img/') ;
define('JS', ASSETS . 'js/') ; 
define('JS_LIB', JS . 'lib/') ;
define('CSS', ASSETS . 'css/') ;
define('IMAGES', ASSETS . 'images/') ;

require_once SMARTY . 'Smarty.class.php' ;
$smarty = new Smarty() ;
$smarty->setTemplateDir(VIEWS) ;
$smarty->setCompileDir(TEMP_C) ;
$smarty->setCacheDir(CACHE) ;

$smarty->assign('CSS', CSS) ;
$smarty->assign('IMAGES', IMAGES) ;
$smarty->assign('BOOTSTRAP_CSS', BOOTSTRAP_CSS) ;
$smarty->assign('BOOTSTRAP_JS', BOOTSTRAP_JS) ;
$smarty->assign('JS_LIB', JS_LIB) ;
$smarty->display('index.tpl') ;
?>
