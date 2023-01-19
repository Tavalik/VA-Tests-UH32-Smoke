﻿
#language: ru

@tree

Функциональность: Дымовые тесты - Документы
# Конфигурация: Управление холдингом, редакция 3.2
# Версия: 3.2.3.31

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: Расширенные действия с элементом документа "Версия коммерческого договора"

	* Ищем ссылку на существующий элемент
		И я выполняю код встроенного языка на сервере
		"""bsl
			Объект.ЗначениеНаСервере = НЕОПРЕДЕЛЕНО;
			Запрос = Новый Запрос(
				"ВЫБРАТЬ ПЕРВЫЕ 1
				|	ТекДанныеИсточник.Ссылка КАК Ссылка
				|ИЗ
				|	Документ.ВерсияСоглашенияКоммерческийДоговор КАК ТекДанныеИсточник
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
				Тогда я вызываю исключение "Не удалось открыть существующий элемент документа ВерсияСоглашенияКоммерческийДоговор"
			Если имя текущей формы "ErrorWindow" Тогда
				Тогда я вызываю исключение "Не удалось открыть существующий элемент документа ВерсияСоглашенияКоммерческийДоговор"
			И я запоминаю заголовок формы в переменную 'ЗаголовокФормы'

		* Создаем новый элемент копированием
			Когда открылось окно '$ЗаголовокФормы$'
			Если элемент формы с именем 'ФормаСкопировать' присутствует на форме Тогда
				И я нажимаю на кнопку с именем 'ФормаСкопировать'
				Если появилось предупреждение Тогда
					Тогда я вызываю исключение "Не удалось скопировать существующий элемент документа ВерсияСоглашенияКоммерческийДоговор"
				Если имя текущей формы "ErrorWindow" Тогда
					Тогда я вызываю исключение "Не удалось скопировать существующий элемент документа ВерсияСоглашенияКоммерческийДоговор"
				И я запоминаю заголовок формы в переменную 'ЗаголовокФормы'

		* Записываем новый элемент
			Когда открылось окно '$ЗаголовокФормы$'
			Если элемент формы с именем 'ФормаЗаписать' присутствует на форме Тогда
				И я нажимаю на кнопку с именем 'ФормаЗаписать'
				Если появилось предупреждение Тогда
					Тогда я вызываю исключение "Не удалось записать новый элемент документа ВерсияСоглашенияКоммерческийДоговор"
				Если имя текущей формы "ErrorWindow" Тогда
					Тогда я вызываю исключение "Не удалось записать новый элемент документа ВерсияСоглашенияКоммерческийДоговор"

Сценарий: Расширенные действия с элементом документа "Корректировка значений показателей"

	* Ищем ссылку на существующий элемент
		И я выполняю код встроенного языка на сервере
		"""bsl
			Объект.ЗначениеНаСервере = НЕОПРЕДЕЛЕНО;
			Запрос = Новый Запрос(
				"ВЫБРАТЬ ПЕРВЫЕ 1
				|	ТекДанныеИсточник.Ссылка КАК Ссылка
				|ИЗ
				|	Документ.КорректировкаЗначенийПоказателей КАК ТекДанныеИсточник
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
				Тогда я вызываю исключение "Не удалось открыть существующий элемент документа КорректировкаЗначенийПоказателей"
			Если имя текущей формы "ErrorWindow" Тогда
				Тогда я вызываю исключение "Не удалось открыть существующий элемент документа КорректировкаЗначенийПоказателей"
			И я запоминаю заголовок формы в переменную 'ЗаголовокФормы'

		* Создаем новый элемент копированием
			Когда открылось окно '$ЗаголовокФормы$'
			Если элемент формы с именем 'ФормаСкопировать' присутствует на форме Тогда
				И я нажимаю на кнопку с именем 'ФормаСкопировать'
				Если появилось предупреждение Тогда
					Тогда я вызываю исключение "Не удалось скопировать существующий элемент документа КорректировкаЗначенийПоказателей"
				Если имя текущей формы "ErrorWindow" Тогда
					Тогда я вызываю исключение "Не удалось скопировать существующий элемент документа КорректировкаЗначенийПоказателей"
				И я запоминаю заголовок формы в переменную 'ЗаголовокФормы'

		* Записываем новый элемент
			Когда открылось окно '$ЗаголовокФормы$'
			Если элемент формы с именем 'ФормаЗаписать' присутствует на форме Тогда
				И я нажимаю на кнопку с именем 'ФормаЗаписать'
				Если появилось предупреждение Тогда
					Тогда я вызываю исключение "Не удалось записать новый элемент документа КорректировкаЗначенийПоказателей"
				Если имя текущей формы "ErrorWindow" Тогда
					Тогда я вызываю исключение "Не удалось записать новый элемент документа КорректировкаЗначенийПоказателей"

Сценарий: Расширенные действия с элементом документа "Экземпляр отчета"

	* Ищем ссылку на существующий элемент
		И я выполняю код встроенного языка на сервере
		"""bsl
			Объект.ЗначениеНаСервере = НЕОПРЕДЕЛЕНО;
			Запрос = Новый Запрос(
				"ВЫБРАТЬ ПЕРВЫЕ 1
				|	ТекДанныеИсточник.Ссылка КАК Ссылка
				|ИЗ
				|	Документ.НастраиваемыйОтчет КАК ТекДанныеИсточник
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
				Тогда я вызываю исключение "Не удалось открыть существующий элемент документа НастраиваемыйОтчет"
			Если имя текущей формы "ErrorWindow" Тогда
				Тогда я вызываю исключение "Не удалось открыть существующий элемент документа НастраиваемыйОтчет"
			И я запоминаю заголовок формы в переменную 'ЗаголовокФормы'

		* Создаем новый элемент копированием
			Когда открылось окно '$ЗаголовокФормы$'
			Если элемент формы с именем 'ФормаСкопировать' присутствует на форме Тогда
				И я нажимаю на кнопку с именем 'ФормаСкопировать'
				Если появилось предупреждение Тогда
					Тогда я вызываю исключение "Не удалось скопировать существующий элемент документа НастраиваемыйОтчет"
				Если имя текущей формы "ErrorWindow" Тогда
					Тогда я вызываю исключение "Не удалось скопировать существующий элемент документа НастраиваемыйОтчет"
				И я запоминаю заголовок формы в переменную 'ЗаголовокФормы'

		* Записываем новый элемент
			Когда открылось окно '$ЗаголовокФормы$'
			Если элемент формы с именем 'ФормаЗаписать' присутствует на форме Тогда
				И я нажимаю на кнопку с именем 'ФормаЗаписать'
				Если появилось предупреждение Тогда
					Тогда я вызываю исключение "Не удалось записать новый элемент документа НастраиваемыйОтчет"
				Если имя текущей формы "ErrorWindow" Тогда
					Тогда я вызываю исключение "Не удалось записать новый элемент документа НастраиваемыйОтчет"

Сценарий: Расширенные действия с элементом документа "Операция"

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

		* Создаем новый элемент копированием
			Когда открылось окно '$ЗаголовокФормы$'
			Если элемент формы с именем 'ФормаСкопировать' присутствует на форме Тогда
				И я нажимаю на кнопку с именем 'ФормаСкопировать'
				Если появилось предупреждение Тогда
					Тогда я вызываю исключение "Не удалось скопировать существующий элемент документа ОперацияБух"
				Если имя текущей формы "ErrorWindow" Тогда
					Тогда я вызываю исключение "Не удалось скопировать существующий элемент документа ОперацияБух"
				И я запоминаю заголовок формы в переменную 'ЗаголовокФормы'

		* Записываем новый элемент
			Когда открылось окно '$ЗаголовокФормы$'
			Если элемент формы с именем 'ФормаЗаписать' присутствует на форме Тогда
				И я нажимаю на кнопку с именем 'ФормаЗаписать'
				Если появилось предупреждение Тогда
					Тогда я вызываю исключение "Не удалось записать новый элемент документа ОперацияБух"
				Если имя текущей формы "ErrorWindow" Тогда
					Тогда я вызываю исключение "Не удалось записать новый элемент документа ОперацияБух"

Сценарий: Расширенные действия с элементом документа "Прием на работу"

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

		* Создаем новый элемент копированием
			Когда открылось окно '$ЗаголовокФормы$'
			Если элемент формы с именем 'ФормаСкопировать' присутствует на форме Тогда
				И я нажимаю на кнопку с именем 'ФормаСкопировать'
				Если появилось предупреждение Тогда
					Тогда я вызываю исключение "Не удалось скопировать существующий элемент документа ПриемНаРаботу"
				Если имя текущей формы "ErrorWindow" Тогда
					Тогда я вызываю исключение "Не удалось скопировать существующий элемент документа ПриемНаРаботу"
				И я запоминаю заголовок формы в переменную 'ЗаголовокФормы'

		* Записываем новый элемент
			Когда открылось окно '$ЗаголовокФормы$'
			Если элемент формы с именем 'ФормаЗаписать' присутствует на форме Тогда
				И я нажимаю на кнопку с именем 'ФормаЗаписать'
				Если появилось предупреждение Тогда
					Тогда я вызываю исключение "Не удалось записать новый элемент документа ПриемНаРаботу"
				Если имя текущей формы "ErrorWindow" Тогда
					Тогда я вызываю исключение "Не удалось записать новый элемент документа ПриемНаРаботу"

Сценарий: Расширенные действия с элементом документа "Установка цен номенклатуры"

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

		* Создаем новый элемент копированием
			Когда открылось окно '$ЗаголовокФормы$'
			Если элемент формы с именем 'ФормаСкопировать' присутствует на форме Тогда
				И я нажимаю на кнопку с именем 'ФормаСкопировать'
				Если появилось предупреждение Тогда
					Тогда я вызываю исключение "Не удалось скопировать существующий элемент документа УстановкаЦенНоменклатуры"
				Если имя текущей формы "ErrorWindow" Тогда
					Тогда я вызываю исключение "Не удалось скопировать существующий элемент документа УстановкаЦенНоменклатуры"
				И я запоминаю заголовок формы в переменную 'ЗаголовокФормы'

		* Записываем новый элемент
			Когда открылось окно '$ЗаголовокФормы$'
			Если элемент формы с именем 'ФормаЗаписать' присутствует на форме Тогда
				И я нажимаю на кнопку с именем 'ФормаЗаписать'
				Если появилось предупреждение Тогда
					Тогда я вызываю исключение "Не удалось записать новый элемент документа УстановкаЦенНоменклатуры"
				Если имя текущей формы "ErrorWindow" Тогда
					Тогда я вызываю исключение "Не удалось записать новый элемент документа УстановкаЦенНоменклатуры"
