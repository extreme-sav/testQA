﻿#language: ru

@tree

Функционал: <описание фичи>

Как Тестировщик я хочу
заполнить документ Заказ покупателя
чтобы заполнить

Контекст:
	Дано Я открыл новый сеанс TestClient или подключил уже существующий

Сценарий: <описание сценария>
	И В командном интерфейсе я выбираю 'Продажи' 'Заказы покупателей'
	Тогда открылось окно 'Заказы покупателей'
	И я нажимаю на кнопку с именем 'FormCreate'
	Тогда открылось окно 'Заказ покупателя (создание)'
	И я нажимаю кнопку выбора у поля с именем "Partner"
	Тогда открылось окно 'Партнеры'
	И в таблице "List" я активизирую поле с именем "Description"
	И в таблице "List" я выбираю текущую строку
	Тогда открылось окно 'Заказ покупателя (создание) *'
	И в таблице "ItemList" я активизирую поле с именем "ItemListLineNumber"
	Если поле с именем 'Company' имеет значение "" Тогда
	И я нажимаю кнопку выбора у поля с именем "Company"
	Тогда открылось окно 'Организации'
	И в таблице "List" я активизирую поле с именем "Description"
	И в таблице "List" я выбираю текущую строку
	Тогда открылось окно 'Заказ покупателя (создание) *'
	И в таблице "ItemList" я активизирую поле с именем "ItemListLineNumber"
	И я нажимаю на кнопку с именем 'FormPostAndClose'
	И я жду закрытия окна 'Заказ покупателя (создание) *' в течение 20 секунд
