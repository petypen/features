﻿#language: ru

@tree

Функционал: Сценарии тестирования справочника Товара

Как тестировщик я хочу
проверить все режимы и команды справочника товары
чтобы предоставить пользователю надежную систему

Контекст:
	Дано Я открыл новый сеанс TestClient или подключил уже существующий

Сценарий: Подготовка данных
	Когда Я подготавливаю справочник Товары

Сценарий: Добавить одну картинку в номенклатуру типа Товар
	И я закрываю все окна клиентского приложения
	
	Дано Я открываю навигационную ссылку "e1cib/data/Справочник.Товары?ref=898200198600304911ec93369e08291e"
	Тогда открылось окно 'Товар с картинкой (Товар)'
	
	И я нажимаю кнопку выбора у поля с именем "ФайлКартинки"
	Тогда открылось окно 'Файлы'
	И я нажимаю на кнопку с именем 'ФормаСоздать'
	Тогда открылось окно 'Файл (создание)'
	
	И я выбираю файл "$КаталогПроекта$\Финал\Босоножки.jpg"
	
	И я нажимаю на кнопку с именем 'ВыбратьФайлСДискаИЗаписать'
	Тогда открылось окно 'Босоножки.jpg (Файл)'
	И я нажимаю на кнопку с именем 'ФормаЗаписатьИЗакрыть'
	И я жду закрытия окна 'Босоножки.jpg (Файл)' в течение 20 секунд
	Тогда открылось окно 'Файлы'
	И в таблице "Список" я перехожу к строке
		| 'Наименование'  | 'Код'       |
		| 'Босоножки.jpg' | '000000003' |
	И в таблице "Список" я выбираю текущую строку
	

Сценарий: Добавить одну картинку в номенклатуру типа Услуга

Сценарий: Добавить вторую картинку в номенклатуру типа Товар

Сценарий: Удалить вторую картинку в номенклатуру типа Товар
