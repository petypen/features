﻿#language: ru

@tree

Функционал: заполнение справочника Номенклатура

Как тестировщик я хочу
быстро подготовить много эдеметов справочника Номенклатура
чтобы проводить нагрузочное тестирование

Контекст:
	Дано Я подключаю клиент тестирования "Этот клиент" из таблицы клиентов тестирования
	* В тестовой ИБ IRP загружены начальные данные для тестирования
	
Сценарий: создать десять элементов справочника
	И я закрываю все окна клиентского приложения
	
	И Я запоминаю значение выражения '1' в переменную "НомерТовара"
	
	И В командном интерфейсе я выбираю 'Справочники' 'Номенклатура'
	Тогда открылось окно 'Номенклатура'
	
	И я делаю 10 раз
		
		И я нажимаю на кнопку с именем 'FormCreate'
		Тогда открылось окно 'Номенклатура (создание)'
		
		И Я запоминаю значение выражения '"Товар-" + $НомерТовара$' в переменную "ТекстНаименования"
		И в поле с именем 'Description_ru' я ввожу текст '$ТекстНаименования$'
		
		И я нажимаю кнопку выбора у поля с именем "ItemType"
		Тогда открылось окно 'Виды номенклатуры'
		И в таблице "List" я перехожу к строке:
			| 'Код' | 'Наименование'              | 'Ссылка'                    |
			| '2'   | 'Товар (без характеристик)' | 'Товар (без характеристик)' |
		И в таблице "List" я выбираю текущую строку
		
		И я нажимаю кнопку выбора у поля с именем "Unit"
		Тогда открылось окно 'Единицы измерения'
		И в таблице "List" я перехожу к строке
			| 'Код' | 'Ссылка' | 'Наименование' |
			| '1'   | 'шт'     | 'шт'           |
		И в таблице "List" я выбираю текущую строку
		
		И я нажимаю на кнопку с именем 'FormWriteAndClose'
		И я жду закрытия окна 'Номенклатура (создание) *' в течение 20 секунд
		
		И Я запоминаю значение выражения '$НомерТовара$ + 1' в переменную "НомерТовара"
