﻿#language: ru

@tree

Функционал: ввод наименования в цикле

Как Тестировщик я хочу
заполнить карточки номенклатуры
чтобы заполнить

Контекст:
	Дано Я открыл новый сеанс TestClient или подключил уже существующий

Сценарий: ввод наименования в цикле
	И В командном интерфейсе я выбираю 'Справочники' 'Номенклатура'
	Тогда открылось окно 'Номенклатура'
	И Я запоминаю значение выражения '0' в переменную "Счетчик"
	Затем я делаю 10 раз
		И Я запоминаю значение выражения '$Счетчик$ + 1' в переменную "Счетчик"
		И Я запоминаю значение выражения '"НаименованиеТовара" + $Счетчик$' в переменную "НаименованиеТовара"
		И я нажимаю на кнопку с именем 'FormCreate'
		Тогда открылось окно 'Номенклатура (создание)'
		И в поле с именем 'Description_ru' я ввожу текст '$НаименованиеТовара$'
		И я нажимаю кнопку выбора у поля с именем "ItemType"
		Тогда открылось окно 'Виды номенклатуры'
		И в таблице "List" я активизирую поле с именем "Description"
		И в таблице "List" я выбираю текущую строку
		Тогда открылось окно 'Номенклатура (создание) *'
		И я нажимаю кнопку выбора у поля с именем "Unit"
		Тогда открылось окно 'Единицы измерения'
		И в таблице "List" я активизирую поле с именем "Description"
		И в таблице "List" я выбираю текущую строку
		Тогда открылось окно 'Номенклатура (создание) *'
		И я нажимаю на кнопку с именем 'FormWriteAndClose'
		И я жду закрытия окна 'Номенклатура (создание) *' в течение 20 секунд
