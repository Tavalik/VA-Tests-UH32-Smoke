﻿
#language: ru

@tree

Функциональность: Дымовые тесты - Документы - Запись
# Конфигурация: Управление холдингом, редакция 3.2
# Версия: 3.2.4.6

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: Запись элемента документа "Версия коммерческого договора" (ВерсияСоглашенияКоммерческийДоговор)

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

		* Записываем существующий элемент
			Когда открылось окно '$ЗаголовокФормы$'
			Если элемент формы с именем 'ФормаЗаписать' присутствует на форме Тогда
				И я нажимаю на кнопку с именем 'ФормаЗаписать'
				Если появилось предупреждение Тогда
					Тогда я вызываю исключение "Не удалось записать существующий элемент документа ВерсияСоглашенияКоммерческийДоговор"
				Если имя текущей формы "ErrorWindow" Тогда
					Тогда я вызываю исключение "Не удалось записать существующий элемент документа ВерсияСоглашенияКоммерческийДоговор"

		* Пересчитаем существующий элемент
			Когда открылось окно '$ЗаголовокФормы$'
			Если элемент формы с именем 'ФормаПеречитать' присутствует на форме Тогда
				И я нажимаю на кнопку с именем 'ФормаПеречитать'
				Если появилось предупреждение Тогда
					Тогда я вызываю исключение "Не удалось перечитать существующий элемент документа ВерсияСоглашенияКоммерческийДоговор"
				Если имя текущей формы "ErrorWindow" Тогда
					Тогда я вызываю исключение "Не удалось перечитать существующий элемент документа ВерсияСоглашенияКоммерческийДоговор"

		* Помечаем на удаление существующий элемент
			Когда открылось окно '$ЗаголовокФормы$'
			Если элемент формы с именем 'ФормаУстановитьПометкуУдаления' присутствует на форме Тогда
				И я нажимаю на кнопку с именем 'ФормаУстановитьПометкуУдаления'
				Если открылось окно '1С:Предприятие' Тогда
					И я нажимаю на кнопку с именем 'Button0'
				Если появилось предупреждение Тогда
					Тогда я вызываю исключение "Не удалось пометить на удаление элемент документа ВерсияСоглашенияКоммерческийДоговор"
				Если имя текущей формы "ErrorWindow" Тогда
					Тогда я вызываю исключение "Не удалось пометить на удаление элемент документа ВерсияСоглашенияКоммерческийДоговор"

		* Снимаем пометку на удаление с существующего элемента
			Когда открылось окно '$ЗаголовокФормы$'
			Если элемент формы с именем 'ФормаУстановитьПометкуУдаления' присутствует на форме Тогда
				И я нажимаю на кнопку с именем 'ФормаУстановитьПометкуУдаления'
				Если открылось окно '1С:Предприятие' Тогда
					И я нажимаю на кнопку с именем 'Button0'
				Если появилось предупреждение Тогда
					Тогда я вызываю исключение "Не удалось снять пометку на удаление с элемента документа ВерсияСоглашенияКоммерческийДоговор"
				Если имя текущей формы "ErrorWindow" Тогда
					Тогда я вызываю исключение "Не удалось снять пометку на удаление с элемента документа ВерсияСоглашенияКоммерческийДоговор"

		* Проведем документ
			Когда открылось окно '$ЗаголовокФормы$'
			Если элемент формы с именем 'ФормаПровести' присутствует на форме Тогда
				И я нажимаю на кнопку с именем 'ФормаПровести'
				Если появилось предупреждение Тогда
					Тогда я вызываю исключение "Не удалось провести элемент документа ВерсияСоглашенияКоммерческийДоговор"
				Если имя текущей формы "ErrorWindow" Тогда
					Тогда я вызываю исключение "Не удалось провести элемент документа ВерсияСоглашенияКоммерческийДоговор"

		* Отменим проведение документа
			Когда открылось окно '$ЗаголовокФормы$'
			Если элемент формы с именем 'ФормаОтменаПроведения' присутствует на форме Тогда
				И я нажимаю на кнопку с именем 'ФормаОтменаПроведения'
				Если появилось предупреждение Тогда
					Тогда я вызываю исключение "Не удалось отменить проведение документа ВерсияСоглашенияКоммерческийДоговор"
				Если имя текущей формы "ErrorWindow" Тогда
					Тогда я вызываю исключение "Не удалось отменить проведение документа ВерсияСоглашенияКоммерческийДоговор"

		* Проведем и закроем документ
			Когда открылось окно '$ЗаголовокФормы$'
			Если элемент формы с именем 'ФормаПровестиИЗакрыть' присутствует на форме Тогда
				И я нажимаю на кнопку с именем 'ФормаПровестиИЗакрыть'
				Если появилось предупреждение Тогда
					Тогда я вызываю исключение "Не удалось провести и закрыть элемент документа ВерсияСоглашенияКоммерческийДоговор"
				Если имя текущей формы "ErrorWindow" Тогда
					Тогда я вызываю исключение "Не удалось провести и закрыть элемент документа ВерсияСоглашенияКоммерческийДоговор"

Сценарий: Запись элемента документа "Корректировка значений показателей" (КорректировкаЗначенийПоказателей)

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

		* Записываем существующий элемент
			Когда открылось окно '$ЗаголовокФормы$'
			Если элемент формы с именем 'ФормаЗаписать' присутствует на форме Тогда
				И я нажимаю на кнопку с именем 'ФормаЗаписать'
				Если появилось предупреждение Тогда
					Тогда я вызываю исключение "Не удалось записать существующий элемент документа КорректировкаЗначенийПоказателей"
				Если имя текущей формы "ErrorWindow" Тогда
					Тогда я вызываю исключение "Не удалось записать существующий элемент документа КорректировкаЗначенийПоказателей"

		* Пересчитаем существующий элемент
			Когда открылось окно '$ЗаголовокФормы$'
			Если элемент формы с именем 'ФормаПеречитать' присутствует на форме Тогда
				И я нажимаю на кнопку с именем 'ФормаПеречитать'
				Если появилось предупреждение Тогда
					Тогда я вызываю исключение "Не удалось перечитать существующий элемент документа КорректировкаЗначенийПоказателей"
				Если имя текущей формы "ErrorWindow" Тогда
					Тогда я вызываю исключение "Не удалось перечитать существующий элемент документа КорректировкаЗначенийПоказателей"

		* Помечаем на удаление существующий элемент
			Когда открылось окно '$ЗаголовокФормы$'
			Если элемент формы с именем 'ФормаУстановитьПометкуУдаления' присутствует на форме Тогда
				И я нажимаю на кнопку с именем 'ФормаУстановитьПометкуУдаления'
				Если открылось окно '1С:Предприятие' Тогда
					И я нажимаю на кнопку с именем 'Button0'
				Если появилось предупреждение Тогда
					Тогда я вызываю исключение "Не удалось пометить на удаление элемент документа КорректировкаЗначенийПоказателей"
				Если имя текущей формы "ErrorWindow" Тогда
					Тогда я вызываю исключение "Не удалось пометить на удаление элемент документа КорректировкаЗначенийПоказателей"

		* Снимаем пометку на удаление с существующего элемента
			Когда открылось окно '$ЗаголовокФормы$'
			Если элемент формы с именем 'ФормаУстановитьПометкуУдаления' присутствует на форме Тогда
				И я нажимаю на кнопку с именем 'ФормаУстановитьПометкуУдаления'
				Если открылось окно '1С:Предприятие' Тогда
					И я нажимаю на кнопку с именем 'Button0'
				Если появилось предупреждение Тогда
					Тогда я вызываю исключение "Не удалось снять пометку на удаление с элемента документа КорректировкаЗначенийПоказателей"
				Если имя текущей формы "ErrorWindow" Тогда
					Тогда я вызываю исключение "Не удалось снять пометку на удаление с элемента документа КорректировкаЗначенийПоказателей"

		* Проведем документ
			Когда открылось окно '$ЗаголовокФормы$'
			Если элемент формы с именем 'ФормаПровести' присутствует на форме Тогда
				И я нажимаю на кнопку с именем 'ФормаПровести'
				Если появилось предупреждение Тогда
					Тогда я вызываю исключение "Не удалось провести элемент документа КорректировкаЗначенийПоказателей"
				Если имя текущей формы "ErrorWindow" Тогда
					Тогда я вызываю исключение "Не удалось провести элемент документа КорректировкаЗначенийПоказателей"

		* Отменим проведение документа
			Когда открылось окно '$ЗаголовокФормы$'
			Если элемент формы с именем 'ФормаОтменаПроведения' присутствует на форме Тогда
				И я нажимаю на кнопку с именем 'ФормаОтменаПроведения'
				Если появилось предупреждение Тогда
					Тогда я вызываю исключение "Не удалось отменить проведение документа КорректировкаЗначенийПоказателей"
				Если имя текущей формы "ErrorWindow" Тогда
					Тогда я вызываю исключение "Не удалось отменить проведение документа КорректировкаЗначенийПоказателей"

		* Проведем и закроем документ
			Когда открылось окно '$ЗаголовокФормы$'
			Если элемент формы с именем 'ФормаПровестиИЗакрыть' присутствует на форме Тогда
				И я нажимаю на кнопку с именем 'ФормаПровестиИЗакрыть'
				Если появилось предупреждение Тогда
					Тогда я вызываю исключение "Не удалось провести и закрыть элемент документа КорректировкаЗначенийПоказателей"
				Если имя текущей формы "ErrorWindow" Тогда
					Тогда я вызываю исключение "Не удалось провести и закрыть элемент документа КорректировкаЗначенийПоказателей"

Сценарий: Запись элемента документа "Экземпляр отчета" (НастраиваемыйОтчет)

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
				Тогда я вызываю исключение "Не удалось открыть существующий элемент документа НастраиваемыйОтчет"
			Если имя текущей формы "ErrorWindow" Тогда
				Тогда я вызываю исключение "Не удалось открыть существующий элемент документа НастраиваемыйОтчет"
			И я запоминаю заголовок формы в переменную 'ЗаголовокФормы'

		* Записываем существующий элемент
			Когда открылось окно '$ЗаголовокФормы$'
			Если элемент формы с именем 'ФормаЗаписать' присутствует на форме Тогда
				И я нажимаю на кнопку с именем 'ФормаЗаписать'
				Если появилось предупреждение Тогда
					Тогда я вызываю исключение "Не удалось записать существующий элемент документа НастраиваемыйОтчет"
				Если имя текущей формы "ErrorWindow" Тогда
					Тогда я вызываю исключение "Не удалось записать существующий элемент документа НастраиваемыйОтчет"

		* Пересчитаем существующий элемент
			Когда открылось окно '$ЗаголовокФормы$'
			Если элемент формы с именем 'ФормаПеречитать' присутствует на форме Тогда
				И я нажимаю на кнопку с именем 'ФормаПеречитать'
				Если появилось предупреждение Тогда
					Тогда я вызываю исключение "Не удалось перечитать существующий элемент документа НастраиваемыйОтчет"
				Если имя текущей формы "ErrorWindow" Тогда
					Тогда я вызываю исключение "Не удалось перечитать существующий элемент документа НастраиваемыйОтчет"

		* Помечаем на удаление существующий элемент
			Когда открылось окно '$ЗаголовокФормы$'
			Если элемент формы с именем 'ФормаУстановитьПометкуУдаления' присутствует на форме Тогда
				И я нажимаю на кнопку с именем 'ФормаУстановитьПометкуУдаления'
				Если открылось окно '1С:Предприятие' Тогда
					И я нажимаю на кнопку с именем 'Button0'
				Если появилось предупреждение Тогда
					Тогда я вызываю исключение "Не удалось пометить на удаление элемент документа НастраиваемыйОтчет"
				Если имя текущей формы "ErrorWindow" Тогда
					Тогда я вызываю исключение "Не удалось пометить на удаление элемент документа НастраиваемыйОтчет"

		* Снимаем пометку на удаление с существующего элемента
			Когда открылось окно '$ЗаголовокФормы$'
			Если элемент формы с именем 'ФормаУстановитьПометкуУдаления' присутствует на форме Тогда
				И я нажимаю на кнопку с именем 'ФормаУстановитьПометкуУдаления'
				Если открылось окно '1С:Предприятие' Тогда
					И я нажимаю на кнопку с именем 'Button0'
				Если появилось предупреждение Тогда
					Тогда я вызываю исключение "Не удалось снять пометку на удаление с элемента документа НастраиваемыйОтчет"
				Если имя текущей формы "ErrorWindow" Тогда
					Тогда я вызываю исключение "Не удалось снять пометку на удаление с элемента документа НастраиваемыйОтчет"
