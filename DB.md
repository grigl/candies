# Список мест где идентификатор в коде зависит от значения в базе данных

- Вывод редактируемых страниц (эбаут) — slug страницы
- Модификатор is_male `modifier.is_male.php` — slug категории «М»
- Вывод фичеред товаров — id списков товаров
- Удаление лишних пунктов в админке: https://github.com/whitescape/candies/blob/master/site_root/published/SC/html/scripts/frame.php#L82

Изменения в бд:

CREATE TABLE IF NOT EXISTS `advensed_stock` (
  `productID` int(11) NOT NULL,
  `colorID` int(11) NOT NULL,
  `sizeID` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  PRIMARY KEY (`productID`,`colorID`,`sizeID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;