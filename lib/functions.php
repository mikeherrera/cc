<?php

function get_product_images($product_folder_name)	{
	$dir = IMGS . $product_folder_name . '/' ;
	$img_path = IMAGES . $product_folder_name . '/' ;

	$dir_handle = opendir($dir) ;

	if ($dir_handle)  {
	  while (($file = readdir($dir_handle)) !== false) {
	    if ($file == '.' || $file == '..')  continue ;
    	$items[] = $img_path . $file ;
  	}
	}
	closedir($dir_handle) ;

	return $items ;
}

?>
