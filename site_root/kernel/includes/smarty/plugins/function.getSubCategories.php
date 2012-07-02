<?php

/*
 * Smarty plugin
 * -------------------------------------------------------------
 * Type:     function
 * Name:     getSubCatiegories
 * Purpose:  Записывает в переменную шаблона список подкатегорий
 * -------------------------------------------------------------
 * 
 * {getSubCategories var="myCategories" parentName="Ж"}
 *
 *
 */

function smarty_function_getSubCategories( $params, &$smarty ) {
  extract($params);

  $subCatigories = db_phquery_fetch(DBRFETCH_ASSOC_ALL, 'SELECT a.* FROM ?#CATEGORIES_TABLE as a, ?#CATEGORIES_TABLE as b WHERE b.categoryID = a.parent AND b.name_ru=?', $parentName);

  foreach ($subCatigories as &$category) {
  	$category = LanguagesManager::ml_fillFields(CATEGORIES_TABLE, $category);
  	$category['url'] = $category['categoryID'];
  }
  //$subCatigories = db_phquery_fetch(DBRFETCH_ROW_ALL, 'SELECT * FROM  `SC_products`');
  //var_dump($subCatigories);

  $smarty->assign($var, $subCatigories);
}
