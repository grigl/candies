<?php

/*
 * Print advensed stock
 * -------------------------------------------------------------
 * Type:     block
 * Name:     printAdvensedStock
 * Purpose:  Распечатывает подробный остаток товара по характеристикам
 * -------------------------------------------------------------
 * 
 * Работает только с двумя конкретными характеристиками — цвет и размер
 *
 * Пример использования в шаблоне:
 *    {printAdvensedStock productId=...}{/printAdvensedStock}
 *
 */

function smarty_block_printAdvensedStock( $params, $content, &$smarty, &$repeat ) {

	$productId = $params['productId'];

	$result = db_phquery('select * from advensed_stock where productID = ?', $productId);

	$Robin = '<ul class="js-advensed-stock" data-product-id="' . $productId . '" >';

	while ($row = db_fetch_assoc($result)) {
		$Robin .= "<li data-color-id=\"{$row['colorID']}\" data-size-id=\"{$row['sizeID']}\" data-amount=\"{$row['amount']}\">";
			$Robin .= "{$row['colorID']}, {$row['sizeID']}, {$row['amount']}"; // для наглядности выводим
		$Robin .= "</li>";
	}
	
	$Robin .= '</ul>';

	$Robin .= '<code>
		В этом списке выводятся данные о остатке разделенные по цветам и размерам. 
		`colorID` и `sizeID` совпадают со значениями в выпадающих списках. 
		`amount` — остаток этого товара с таким цветом и размером.
		Если нет какого-то сочетания цвет+размер значит товара с таким сочетанием нет на складе.
		Из него нужно с помощбю javascript брать данные и убирать лишнее пункты из выпадающих списков и делать другую нужную логику на клиентсайде.
		Он видимый только для отладки, нужно будет сделать его скрытым и убрать этот текст.
	</code>';

	return $Robin;
}

