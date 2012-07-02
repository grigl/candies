<?php

/*
 * Smarty plugin
 * -------------------------------------------------------------
 * Type:     modifier
 * Name:     is_male
 * Purpose:  Returns true if product with given $category_id is male
 *
 * Принимаем категорию и проверяем правда ли что ее родительская категория имеет slug «m» 
 * Подразумевается только 1 уровень вложенности!
 *
 * -------------------------------------------------------------
 */
function smarty_modifier_is_male($category_id)
{
	return "М" == db_phquery_fetch(DBRFETCH_FIRST, 'SELECT a.name_ru FROM ?#CATEGORIES_TABLE as a, ?#CATEGORIES_TABLE as b WHERE a.categoryID = b.parent AND b.categoryID=?', $category_id);
}