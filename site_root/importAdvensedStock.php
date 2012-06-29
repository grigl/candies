<?php

// Настройки
require('importAdvensedStock_settings.php');


// Основная логика скрипта

mb_internal_encoding('utf8');
@set_time_limit(0);
header("Content-Type: text/plain");

loadAdvencedRest();


// Функции

function loadAdvencedRest() {
	
	connect();

	$colorOptionId = mysql_query('select optionID from SC_product_options where name_en="Color"');
	$colorOptionId = mysql_fetch_assoc($colorOptionId);
	$colorOptionId = $colorOptionId['optionID'];
	echo "colorOptionId: $colorOptionId\n";

	$sizeOptionId = mysql_query('select optionID from SC_product_options where name_en="Size"');
	$sizeOptionId = mysql_fetch_assoc($sizeOptionId);
	$sizeOptionId = $sizeOptionId['optionID'];
	echo "sizeOptionId: $sizeOptionId\n";

	$result = mysql_query("select * from SC_products_opt_val_variants where optionID=$sizeOptionId");
	$sizes = array();
	while ($row = mysql_fetch_assoc($result)) {
		$sizes[$row['variantID']] = $row['option_value_ru'];
	}
	echo "Размеры: ";
	print_r($sizes);

	$result = mysql_query("select * from SC_products_opt_val_variants where optionID=$colorOptionId");
	$colors = array();
	while ($row = mysql_fetch_assoc($result)) {
		$colors[$row['variantID']] = normalizeStirng($row['option_value_ru'], 'utf8');
	}
	echo "Цвета: ";
	print_r($colors);

	// Выбрасываем все текущие данные
	mysql_query('truncate table advensed_stock');
	
	$stock = get("stock/xml");
	//dumpXmlObject($stock);

	foreach ($stock as $stockTO) {
		$MSId = '' . $stockTO->goodRef['id'];
		$externalId = '' . $stockTO['externalCode'];

		$advensedStock = get("stock-for-good/xml?goodId=$MSId");

		foreach ($advensedStock as $stockGoodTO) {
			$fullName = $stockGoodTO->goodRef['name'];
			preg_match('/.*\((.*)\)/', $fullName, $params);
			if (!isset($params[1])) {
				echo "{$fullName} // {$externalId} // Нет скобок в названиии серии — Fail\n";
				continue;
			}
			$params = split(',', $params[1]);
			if (count($params) < 2) {
				echo "{$fullName} // {$externalId} // Не могу найти цвет и размер в названии серии — Fail\n";
				continue;
			}
			$size = trim($params[0]);
			$color = normalizeStirng(trim($params[1]), 'utf8');
			$amount = floor($stockGoodTO['stock']);

			unset($colorId);
			foreach ($colors as $key => $value) {
				if ($value == $color) {
					$colorId = $key;
					break;
				} 
			}

			if (!isset($colorId)) {
				echo "{$fullName} // {$externalId} // Не могу найти цвет «{$color}» в базе данных — Fail\n";
				continue;
			}

			unset($sizeId);
			foreach ($sizes as $key => $value) {
				if ($value == $size) {
					$sizeId = $key;
					break;
				}
			}

			if (!isset($sizeId)) {
				echo "{$fullName} // {$externalId} // Не могу найти размер «{$size}» в базе данных — Fail\n";
				continue;
			}

			$productId = mysql_query("select productID from SC_products where id_1c='$externalId'");
			if (!$productId || mysql_num_rows($productId) == 0) {
				echo "{$fullName} // {$externalId} // Не могу найти продукт в базе данных — Fail\n";
				continue;
			}
			$productId = mysql_fetch_assoc($productId);
			$productId = $productId['productID'];

			mysql_query("insert into advensed_stock (productID, colorID, sizeID, amount) values ($productId, $sizeId, $colorId, $amount)");

			echo "{$fullName} // {$externalId} ($productId) // {$size} ($sizeId) // {$color} ($colorId) // {$amount} — Ok\n";
		}
	}
	
}

	// Утилиты

	function dumpXmlObject($object, $level = 0) {
		foreach ($object->attributes() as $key => $value) {
			echo str_repeat("\t", $level) . "$key % $value\n";
		}
		foreach ($object as $key => $value) {
			if (count($value->children()) === 0 && count($value->attributes()) === 0) {
				echo str_repeat("\t", $level) . "$key → $value\n";
			} else {
				echo str_repeat("\t", $level) . "$key → \n";
				dumpXmlObject($value, $level + 1);
			}
		}
	}

	function normalizeStirng($str) {
		return str_replace('ё', 'е', mb_strtolower($str));
	}
	

	// HTTP

	function get($path) {
		$sock = initSocket();
		fputs($sock, "GET /exchange/rest/$path HTTP/1.1\r\n");
		fputs($sock, "Host: online.moysklad.ru\r\n");
		auth($sock);
		fputs($sock, "Content-Type: application/xml \r\n");
		fputs($sock, "Accept: */*\r\n");
		fputs($sock, "Connection: close\r\n\r\n");

		while ($str = trim(fgets($sock, 4096)));
		$body = "";
		while (!feof($sock))
			$body.= fgets($sock, 4096);
		//var_dump($body);
		return new SimpleXMLElement($body);
	}

	function initSocket() {
		$sock = fsockopen("ssl://online.moysklad.ru", 443, $errno, $errstr, 30);
		if (!$sock) 
			die("Error: can't open socket");
		return $sock;
	}

	function auth($sock) {
		fputs($sock, "Authorization: Basic " . base64_encode(LOGIN . ':' . PASSWORD) . "\r\n");
	}

	// MySql

	function connect() {
		mysql_connect(DB_HOST, DB_LOGIN, DB_PASSWORD) or die(mysql_error());
		mysql_select_db(DB_NAME) or die(mysql_error());
		mysql_query("SET character_set_client='".MYSQL_CHARSET."'");
		mysql_query("SET character_set_connection='".MYSQL_CHARSET."'");
		mysql_query("SET character_set_results='".MYSQL_CHARSET."'");
	}
