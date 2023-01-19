﻿
#language: ru

@tree

Функциональность: Дымовые тесты - Документы - Печать
# Конфигурация: Управление холдингом, редакция 3.2
# Версия: 3.2.3.31

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: Печать элемента документа "Авансовый отчет" (АвансовыйОтчет)

	* Ищем ссылку на существующий элемент
		И я выполняю код встроенного языка на сервере
		"""bsl
			Объект.ЗначениеНаСервере = НЕОПРЕДЕЛЕНО;
			Запрос = Новый Запрос(
				"ВЫБРАТЬ ПЕРВЫЕ 1
				|	ТекДанныеИсточник.Ссылка КАК Ссылка
				|ИЗ
				|	Документ.АвансовыйОтчет КАК ТекДанныеИсточник
				|ГДЕ
				|	НЕ ТекДанныеИсточник.ПометкаУдаления
				|	И ТекДанныеИсточник.Проведен");
			ВыборкаЗапроса = Запрос.Выполнить().Выбрать();
			Если ВыборкаЗапроса.Следующий() Тогда
				Объект.ЗначениеНаСервере = ПолучитьНавигационнуюСсылку(ВыборкаЗапроса.Ссылка);
			КонецЕсли;
		"""
		И Я запоминаю значение выражения 'Объект.ЗначениеНаСервере' в переменную 'НавигационнаяСсылка'

	Если 'ЗначениеЗаполнено($НавигационнаяСсылка$)' Тогда

		* Отрываем форму существующиего элемента
			И Я открываю навигационную ссылку '$НавигационнаяСсылка$'
			Если появилось предупреждение Тогда
				Тогда я вызываю исключение "Не удалось открыть существующий элемент документа АвансовыйОтчет"
			Если имя текущей формы "ErrorWindow" Тогда
				Тогда я вызываю исключение "Не удалось открыть существующий элемент документа АвансовыйОтчет"
			И я запоминаю заголовок формы в переменную 'ЗаголовокФормы'

		* Вывод на печать формы "Авансовый отчет (АО-1)"
			Когда открылось окно '$ЗаголовокФормы$'
			Если элемент формы с именем 'ПодменюПечатьОбычное_Аванс_Отчет' присутствует на форме Тогда
				И я нажимаю на кнопку с именем 'ПодменюПечатьОбычное_Аванс_Отчет'
				Если появилось предупреждение Тогда
					Тогда я вызываю исключение "Не удалось вывести на печать форму ""Авансовый отчет (АО-1)"" документа АвансовыйОтчет" 
				Если имя текущей формы "ErrorWindow" Тогда
					Тогда я вызываю исключение "Не удалось вывести на печать форму ""Авансовый отчет (АО-1)"" документа АвансовыйОтчет"
				Тогда открылось окно '*'
				И Я закрываю окно '*'

		* Вывод на печать формы "Приходный ордер (М-4)"
			Когда открылось окно '$ЗаголовокФормы$'
			Если элемент формы с именем 'ПодменюПечатьОбычное_М4' присутствует на форме Тогда
				И я нажимаю на кнопку с именем 'ПодменюПечатьОбычное_М4'
				Если появилось предупреждение Тогда
					Тогда я вызываю исключение "Не удалось вывести на печать форму ""Приходный ордер (М-4)"" документа АвансовыйОтчет" 
				Если имя текущей формы "ErrorWindow" Тогда
					Тогда я вызываю исключение "Не удалось вывести на печать форму ""Приходный ордер (М-4)"" документа АвансовыйОтчет"
				Тогда открылось окно '*'
				И Я закрываю окно '*'

		* Вывод на печать формы "Справка-расчет ""Рублевые суммы документа в валюте"""
			Когда открылось окно '$ЗаголовокФормы$'
			Если элемент формы с именем 'ПодменюПечатьОбычное_РублевыеСуммыДокументаВВалюте' присутствует на форме Тогда
				И я нажимаю на кнопку с именем 'ПодменюПечатьОбычное_РублевыеСуммыДокументаВВалюте'
				Если появилось предупреждение Тогда
					Тогда я вызываю исключение "Не удалось вывести на печать форму ""Справка-расчет ""Рублевые суммы документа в валюте"""" документа АвансовыйОтчет" 
				Если имя текущей формы "ErrorWindow" Тогда
					Тогда я вызываю исключение "Не удалось вывести на печать форму ""Справка-расчет ""Рублевые суммы документа в валюте"""" документа АвансовыйОтчет"
				Тогда открылось окно '*'
				И Я закрываю окно '*'

		* Вывод на печать формы "Реестр документов"
			Когда открылось окно '$ЗаголовокФормы$'
			Если элемент формы с именем 'ПодменюПечатьОбычное_Реестр' присутствует на форме Тогда
				И я нажимаю на кнопку с именем 'ПодменюПечатьОбычное_Реестр'
				Если появилось предупреждение Тогда
					Тогда я вызываю исключение "Не удалось вывести на печать форму ""Реестр документов"" документа АвансовыйОтчет" 
				Если имя текущей формы "ErrorWindow" Тогда
					Тогда я вызываю исключение "Не удалось вывести на печать форму ""Реестр документов"" документа АвансовыйОтчет"
				Тогда открылось окно '*'
				И Я закрываю окно '*'

Сценарий: Печать элемента документа "Операция" (ОперацияБух)

	* Ищем ссылку на существующий элемент
		И я выполняю код встроенного языка на сервере
		"""bsl
			Объект.ЗначениеНаСервере = НЕОПРЕДЕЛЕНО;
			Запрос = Новый Запрос(
				"ВЫБРАТЬ ПЕРВЫЕ 1
				|	ТекДанныеИсточник.Ссылка КАК Ссылка
				|ИЗ
				|	Документ.ОперацияБух КАК ТекДанныеИсточник
				|ГДЕ
				|	НЕ ТекДанныеИсточник.ПометкаУдаления
				|	");
			ВыборкаЗапроса = Запрос.Выполнить().Выбрать();
			Если ВыборкаЗапроса.Следующий() Тогда
				Объект.ЗначениеНаСервере = ПолучитьНавигационнуюСсылку(ВыборкаЗапроса.Ссылка);
			КонецЕсли;
		"""
		И Я запоминаю значение выражения 'Объект.ЗначениеНаСервере' в переменную 'НавигационнаяСсылка'

	Если 'ЗначениеЗаполнено($НавигационнаяСсылка$)' Тогда

		* Отрываем форму существующиего элемента
			И Я открываю навигационную ссылку '$НавигационнаяСсылка$'
			Если появилось предупреждение Тогда
				Тогда я вызываю исключение "Не удалось открыть существующий элемент документа ОперацияБух"
			Если имя текущей формы "ErrorWindow" Тогда
				Тогда я вызываю исключение "Не удалось открыть существующий элемент документа ОперацияБух"
			И я запоминаю заголовок формы в переменную 'ЗаголовокФормы'

		* Вывод на печать формы "Бухгалтерская справка"
			Когда открылось окно '$ЗаголовокФормы$'
			Если элемент формы с именем 'ПодменюПечатьОбычное_БухгалтерскаяСправка' присутствует на форме Тогда
				И я нажимаю на кнопку с именем 'ПодменюПечатьОбычное_БухгалтерскаяСправка'
				Если появилось предупреждение Тогда
					Тогда я вызываю исключение "Не удалось вывести на печать форму ""Бухгалтерская справка"" документа ОперацияБух" 
				Если имя текущей формы "ErrorWindow" Тогда
					Тогда я вызываю исключение "Не удалось вывести на печать форму ""Бухгалтерская справка"" документа ОперацияБух"
				Тогда открылось окно '*'
				И Я закрываю окно '*'

Сценарий: Печать элемента документа "Прием на работу" (ПриемНаРаботу)

	* Ищем ссылку на существующий элемент
		И я выполняю код встроенного языка на сервере
		"""bsl
			Объект.ЗначениеНаСервере = НЕОПРЕДЕЛЕНО;
			Запрос = Новый Запрос(
				"ВЫБРАТЬ ПЕРВЫЕ 1
				|	ТекДанныеИсточник.Ссылка КАК Ссылка
				|ИЗ
				|	Документ.ПриемНаРаботу КАК ТекДанныеИсточник
				|ГДЕ
				|	НЕ ТекДанныеИсточник.ПометкаУдаления
				|	И ТекДанныеИсточник.Проведен");
			ВыборкаЗапроса = Запрос.Выполнить().Выбрать();
			Если ВыборкаЗапроса.Следующий() Тогда
				Объект.ЗначениеНаСервере = ПолучитьНавигационнуюСсылку(ВыборкаЗапроса.Ссылка);
			КонецЕсли;
		"""
		И Я запоминаю значение выражения 'Объект.ЗначениеНаСервере' в переменную 'НавигационнаяСсылка'

	Если 'ЗначениеЗаполнено($НавигационнаяСсылка$)' Тогда

		* Отрываем форму существующиего элемента
			И Я открываю навигационную ссылку '$НавигационнаяСсылка$'
			Если появилось предупреждение Тогда
				Тогда я вызываю исключение "Не удалось открыть существующий элемент документа ПриемНаРаботу"
			Если имя текущей формы "ErrorWindow" Тогда
				Тогда я вызываю исключение "Не удалось открыть существующий элемент документа ПриемНаРаботу"
			И я запоминаю заголовок формы в переменную 'ЗаголовокФормы'

		* Вывод на печать формы "Приказ о приеме (Т-1)"
			Когда открылось окно '$ЗаголовокФормы$'
			Если элемент формы с именем 'ПодменюПечатьОбычное_ПФ_MXL_Т1' присутствует на форме Тогда
				И я нажимаю на кнопку с именем 'ПодменюПечатьОбычное_ПФ_MXL_Т1'
				Если появилось предупреждение Тогда
					Тогда я вызываю исключение "Не удалось вывести на печать форму ""Приказ о приеме (Т-1)"" документа ПриемНаРаботу" 
				Если имя текущей формы "ErrorWindow" Тогда
					Тогда я вызываю исключение "Не удалось вывести на печать форму ""Приказ о приеме (Т-1)"" документа ПриемНаРаботу"
				Тогда открылось окно '*'
				И Я закрываю окно '*'

		* Вывод на печать формы "Трудовой договор (микропредприятий)"
			Когда открылось окно '$ЗаголовокФормы$'
			Если элемент формы с именем 'ПодменюПечатьОбычное_ПФ_MXL_ТрудовойДоговорМикропредприятий' присутствует на форме Тогда
				И я нажимаю на кнопку с именем 'ПодменюПечатьОбычное_ПФ_MXL_ТрудовойДоговорМикропредприятий'
				Если появилось предупреждение Тогда
					Тогда я вызываю исключение "Не удалось вывести на печать форму ""Трудовой договор (микропредприятий)"" документа ПриемНаРаботу" 
				Если имя текущей формы "ErrorWindow" Тогда
					Тогда я вызываю исключение "Не удалось вывести на печать форму ""Трудовой договор (микропредприятий)"" документа ПриемНаРаботу"
				Тогда открылось окно '*'
				И Я закрываю окно '*'

Сценарий: Печать элемента документа "Установка цен номенклатуры" (УстановкаЦенНоменклатуры)

	* Ищем ссылку на существующий элемент
		И я выполняю код встроенного языка на сервере
		"""bsl
			Объект.ЗначениеНаСервере = НЕОПРЕДЕЛЕНО;
			Запрос = Новый Запрос(
				"ВЫБРАТЬ ПЕРВЫЕ 1
				|	ТекДанныеИсточник.Ссылка КАК Ссылка
				|ИЗ
				|	Документ.УстановкаЦенНоменклатуры КАК ТекДанныеИсточник
				|ГДЕ
				|	НЕ ТекДанныеИсточник.ПометкаУдаления
				|	И ТекДанныеИсточник.Проведен");
			ВыборкаЗапроса = Запрос.Выполнить().Выбрать();
			Если ВыборкаЗапроса.Следующий() Тогда
				Объект.ЗначениеНаСервере = ПолучитьНавигационнуюСсылку(ВыборкаЗапроса.Ссылка);
			КонецЕсли;
		"""
		И Я запоминаю значение выражения 'Объект.ЗначениеНаСервере' в переменную 'НавигационнаяСсылка'

	Если 'ЗначениеЗаполнено($НавигационнаяСсылка$)' Тогда

		* Отрываем форму существующиего элемента
			И Я открываю навигационную ссылку '$НавигационнаяСсылка$'
			Если появилось предупреждение Тогда
				Тогда я вызываю исключение "Не удалось открыть существующий элемент документа УстановкаЦенНоменклатуры"
			Если имя текущей формы "ErrorWindow" Тогда
				Тогда я вызываю исключение "Не удалось открыть существующий элемент документа УстановкаЦенНоменклатуры"
			И я запоминаю заголовок формы в переменную 'ЗаголовокФормы'

		* Вывод на печать формы "Изменение цен номенклатуры"
			Когда открылось окно '$ЗаголовокФормы$'
			Если элемент формы с именем 'ПодменюПечатьОбычное_ПереченьЦен' присутствует на форме Тогда
				И я нажимаю на кнопку с именем 'ПодменюПечатьОбычное_ПереченьЦен'
				Если появилось предупреждение Тогда
					Тогда я вызываю исключение "Не удалось вывести на печать форму ""Изменение цен номенклатуры"" документа УстановкаЦенНоменклатуры" 
				Если имя текущей формы "ErrorWindow" Тогда
					Тогда я вызываю исключение "Не удалось вывести на печать форму ""Изменение цен номенклатуры"" документа УстановкаЦенНоменклатуры"
				Тогда открылось окно '*'
				И Я закрываю окно '*'

		* Вывод на печать формы "Ценники"
			Когда открылось окно '$ЗаголовокФормы$'
			Если элемент формы с именем 'ПодменюПечатьОбычное_Ценники' присутствует на форме Тогда
				И я нажимаю на кнопку с именем 'ПодменюПечатьОбычное_Ценники'
				Если появилось предупреждение Тогда
					Тогда я вызываю исключение "Не удалось вывести на печать форму ""Ценники"" документа УстановкаЦенНоменклатуры" 
				Если имя текущей формы "ErrorWindow" Тогда
					Тогда я вызываю исключение "Не удалось вывести на печать форму ""Ценники"" документа УстановкаЦенНоменклатуры"
				Тогда открылось окно '*'
				И Я закрываю окно '*'
