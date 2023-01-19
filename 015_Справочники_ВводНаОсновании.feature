﻿
#language: ru

@tree

Функциональность: Дымовые тесты - Справочники - ВводНаОсновании
# Конфигурация: Управление холдингом, редакция 3.2
# Версия: 3.2.3.31

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: ВводНаОсновании элемента справочника "Запросы" (Запросы)

	* Ищем ссылку на существующий элемент
		И я выполняю код встроенного языка на сервере
		"""bsl
			Объект.ЗначениеНаСервере = НЕОПРЕДЕЛЕНО;
			Запрос = Новый Запрос(
				"ВЫБРАТЬ ПЕРВЫЕ 1
				|	ТекДанныеИсточник.Ссылка КАК Ссылка
				|ИЗ
				|	Справочник.Запросы КАК ТекДанныеИсточник
				|ГДЕ
				|	НЕ ТекДанныеИсточник.ПометкаУдаления
				|	И НЕ ТекДанныеИсточник.Предопределенный");
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
				Тогда я вызываю исключение "Не удалось открыть существующий элемент справочника Запросы"
			Если имя текущей формы "ErrorWindow" Тогда
				Тогда я вызываю исключение "Не удалось открыть существующий элемент справочника Запросы"
			И я запоминаю заголовок формы в переменную 'ЗаголовокФормы'

		* Введем на основании Справочник ПроизвольныеОтчеты
			Когда открылось окно '$ЗаголовокФормы$'
			Если элемент формы с именем 'ФормаСправочникПроизвольныеОтчетыСоздатьНаОсновании' присутствует на форме Тогда
				И я нажимаю на кнопку с именем 'ФормаСправочникПроизвольныеОтчетыСоздатьНаОсновании'
				Если появилось предупреждение Тогда
					Тогда я вызываю исключение "Не удалось ввести Справочник ПроизвольныеОтчеты на основании справочника Запросы" 
				Если имя текущей формы "ErrorWindow" Тогда
					Тогда я вызываю исключение "Не удалось ввести Справочник ПроизвольныеОтчеты на основании справочника Запросы"
				Тогда открылось окно '* (создание)'
				И Я закрываю окно '* (создание)'

Сценарий: ВводНаОсновании элемента справочника "Лоты" (Лоты)

	* Ищем ссылку на существующий элемент
		И я выполняю код встроенного языка на сервере
		"""bsl
			Объект.ЗначениеНаСервере = НЕОПРЕДЕЛЕНО;
			Запрос = Новый Запрос(
				"ВЫБРАТЬ ПЕРВЫЕ 1
				|	ТекДанныеИсточник.Ссылка КАК Ссылка
				|ИЗ
				|	Справочник.Лоты КАК ТекДанныеИсточник
				|ГДЕ
				|	НЕ ТекДанныеИсточник.ПометкаУдаления
				|	И НЕ ТекДанныеИсточник.Предопределенный");
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
				Тогда я вызываю исключение "Не удалось открыть существующий элемент справочника Лоты"
			Если имя текущей формы "ErrorWindow" Тогда
				Тогда я вызываю исключение "Не удалось открыть существующий элемент справочника Лоты"
			И я запоминаю заголовок формы в переменную 'ЗаголовокФормы'

		* Введем на основании Справочник Претензии
			Когда открылось окно '$ЗаголовокФормы$'
			Если элемент формы с именем 'ФормаСправочникПретензииСоздатьНаОсновании' присутствует на форме Тогда
				И я нажимаю на кнопку с именем 'ФормаСправочникПретензииСоздатьНаОсновании'
				Если появилось предупреждение Тогда
					Тогда я вызываю исключение "Не удалось ввести Справочник Претензии на основании справочника Лоты" 
				Если имя текущей формы "ErrorWindow" Тогда
					Тогда я вызываю исключение "Не удалось ввести Справочник Претензии на основании справочника Лоты"
				Тогда открылось окно '* (создание)'
				И Я закрываю окно '* (создание)'

Сценарий: ВводНаОсновании элемента справочника "Машиночитаемые доверенности (ФНС)" (МашиночитаемыеДоверенностиФНС)

	* Ищем ссылку на существующий элемент
		И я выполняю код встроенного языка на сервере
		"""bsl
			Объект.ЗначениеНаСервере = НЕОПРЕДЕЛЕНО;
			Запрос = Новый Запрос(
				"ВЫБРАТЬ ПЕРВЫЕ 1
				|	ТекДанныеИсточник.Ссылка КАК Ссылка
				|ИЗ
				|	Справочник.МашиночитаемыеДоверенностиФНС КАК ТекДанныеИсточник
				|ГДЕ
				|	НЕ ТекДанныеИсточник.ПометкаУдаления
				|	И НЕ ТекДанныеИсточник.Предопределенный");
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
				Тогда я вызываю исключение "Не удалось открыть существующий элемент справочника МашиночитаемыеДоверенностиФНС"
			Если имя текущей формы "ErrorWindow" Тогда
				Тогда я вызываю исключение "Не удалось открыть существующий элемент справочника МашиночитаемыеДоверенностиФНС"
			И я запоминаю заголовок формы в переменную 'ЗаголовокФормы'

		* Введем на основании Справочник ЗаявленияОбОтзывеМЧДФНС
			Когда открылось окно '$ЗаголовокФормы$'
			Если элемент формы с именем 'ФормаСправочникЗаявленияОбОтзывеМЧДФНССоздатьНаОсновании' присутствует на форме Тогда
				И я нажимаю на кнопку с именем 'ФормаСправочникЗаявленияОбОтзывеМЧДФНССоздатьНаОсновании'
				Если появилось предупреждение Тогда
					Тогда я вызываю исключение "Не удалось ввести Справочник ЗаявленияОбОтзывеМЧДФНС на основании справочника МашиночитаемыеДоверенностиФНС" 
				Если имя текущей формы "ErrorWindow" Тогда
					Тогда я вызываю исключение "Не удалось ввести Справочник ЗаявленияОбОтзывеМЧДФНС на основании справочника МашиночитаемыеДоверенностиФНС"
				Тогда открылось окно '* (создание)'
				И Я закрываю окно '* (создание)'

Сценарий: ВводНаОсновании элемента справочника "Настройки периодических операций" (НастройкиПериодическихОпераций)

	* Ищем ссылку на существующий элемент
		И я выполняю код встроенного языка на сервере
		"""bsl
			Объект.ЗначениеНаСервере = НЕОПРЕДЕЛЕНО;
			Запрос = Новый Запрос(
				"ВЫБРАТЬ ПЕРВЫЕ 1
				|	ТекДанныеИсточник.Ссылка КАК Ссылка
				|ИЗ
				|	Справочник.НастройкиПериодическихОпераций КАК ТекДанныеИсточник
				|ГДЕ
				|	НЕ ТекДанныеИсточник.ПометкаУдаления
				|	И НЕ ТекДанныеИсточник.Предопределенный");
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
				Тогда я вызываю исключение "Не удалось открыть существующий элемент справочника НастройкиПериодическихОпераций"
			Если имя текущей формы "ErrorWindow" Тогда
				Тогда я вызываю исключение "Не удалось открыть существующий элемент справочника НастройкиПериодическихОпераций"
			И я запоминаю заголовок формы в переменную 'ЗаголовокФормы'

		* Введем на основании Справочник НастройкиПериодическихОпераций
			Когда открылось окно '$ЗаголовокФормы$'
			Если элемент формы с именем 'ФормаСправочникНастройкиПериодическихОперацийСоздатьНаОсновании' присутствует на форме Тогда
				И я нажимаю на кнопку с именем 'ФормаСправочникНастройкиПериодическихОперацийСоздатьНаОсновании'
				Если появилось предупреждение Тогда
					Тогда я вызываю исключение "Не удалось ввести Справочник НастройкиПериодическихОпераций на основании справочника НастройкиПериодическихОпераций" 
				Если имя текущей формы "ErrorWindow" Тогда
					Тогда я вызываю исключение "Не удалось ввести Справочник НастройкиПериодическихОпераций на основании справочника НастройкиПериодическихОпераций"
				Тогда открылось окно '* (создание)'
				И Я закрываю окно '* (создание)'

Сценарий: ВводНаОсновании элемента справочника "Организационные единицы" (Организации)

	* Ищем ссылку на существующий элемент
		И я выполняю код встроенного языка на сервере
		"""bsl
			Объект.ЗначениеНаСервере = НЕОПРЕДЕЛЕНО;
			Запрос = Новый Запрос(
				"ВЫБРАТЬ ПЕРВЫЕ 1
				|	ТекДанныеИсточник.Ссылка КАК Ссылка
				|ИЗ
				|	Справочник.Организации КАК ТекДанныеИсточник
				|ГДЕ
				|	НЕ ТекДанныеИсточник.ПометкаУдаления
				|	И НЕ ТекДанныеИсточник.Предопределенный");
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
				Тогда я вызываю исключение "Не удалось открыть существующий элемент справочника Организации"
			Если имя текущей формы "ErrorWindow" Тогда
				Тогда я вызываю исключение "Не удалось открыть существующий элемент справочника Организации"
			И я запоминаю заголовок формы в переменную 'ЗаголовокФормы'

		* Введем на основании Справочник Контрагенты
			Когда открылось окно '$ЗаголовокФормы$'
			Если элемент формы с именем 'ФормаСправочникКонтрагентыСоздатьНаОсновании' присутствует на форме Тогда
				И я нажимаю на кнопку с именем 'ФормаСправочникКонтрагентыСоздатьНаОсновании'
				Если появилось предупреждение Тогда
					Тогда я вызываю исключение "Не удалось ввести Справочник Контрагенты на основании справочника Организации" 
				Если имя текущей формы "ErrorWindow" Тогда
					Тогда я вызываю исключение "Не удалось ввести Справочник Контрагенты на основании справочника Организации"
				Тогда открылось окно '* (создание)'
				И Я закрываю окно '* (создание)'

Сценарий: ВводНаОсновании элемента справочника "Основания увольнения" (ОснованияУвольнения)

	* Ищем ссылку на существующий элемент
		И я выполняю код встроенного языка на сервере
		"""bsl
			Объект.ЗначениеНаСервере = НЕОПРЕДЕЛЕНО;
			Запрос = Новый Запрос(
				"ВЫБРАТЬ ПЕРВЫЕ 1
				|	ТекДанныеИсточник.Ссылка КАК Ссылка
				|ИЗ
				|	Справочник.ОснованияУвольнения КАК ТекДанныеИсточник
				|ГДЕ
				|	НЕ ТекДанныеИсточник.ПометкаУдаления
				|	И НЕ ТекДанныеИсточник.Предопределенный");
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
				Тогда я вызываю исключение "Не удалось открыть существующий элемент справочника ОснованияУвольнения"
			Если имя текущей формы "ErrorWindow" Тогда
				Тогда я вызываю исключение "Не удалось открыть существующий элемент справочника ОснованияУвольнения"
			И я запоминаю заголовок формы в переменную 'ЗаголовокФормы'

		* Введем на основании Справочник ОснованияУвольненияПользовательские
			Когда открылось окно '$ЗаголовокФормы$'
			Если элемент формы с именем 'ФормаСправочникОснованияУвольненияПользовательскиеСоздатьНаОсновании' присутствует на форме Тогда
				И я нажимаю на кнопку с именем 'ФормаСправочникОснованияУвольненияПользовательскиеСоздатьНаОсновании'
				Если появилось предупреждение Тогда
					Тогда я вызываю исключение "Не удалось ввести Справочник ОснованияУвольненияПользовательские на основании справочника ОснованияУвольнения" 
				Если имя текущей формы "ErrorWindow" Тогда
					Тогда я вызываю исключение "Не удалось ввести Справочник ОснованияУвольненияПользовательские на основании справочника ОснованияУвольнения"
				Тогда открылось окно '* (создание)'
				И Я закрываю окно '* (создание)'

Сценарий: ВводНаОсновании элемента справочника "Перечисления ИБ" (ПеречисленияБД)

	* Ищем ссылку на существующий элемент
		И я выполняю код встроенного языка на сервере
		"""bsl
			Объект.ЗначениеНаСервере = НЕОПРЕДЕЛЕНО;
			Запрос = Новый Запрос(
				"ВЫБРАТЬ ПЕРВЫЕ 1
				|	ТекДанныеИсточник.Ссылка КАК Ссылка
				|ИЗ
				|	Справочник.ПеречисленияБД КАК ТекДанныеИсточник
				|ГДЕ
				|	НЕ ТекДанныеИсточник.ПометкаУдаления
				|	И НЕ ТекДанныеИсточник.Предопределенный");
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
				Тогда я вызываю исключение "Не удалось открыть существующий элемент справочника ПеречисленияБД"
			Если имя текущей формы "ErrorWindow" Тогда
				Тогда я вызываю исключение "Не удалось открыть существующий элемент справочника ПеречисленияБД"
			И я запоминаю заголовок формы в переменную 'ЗаголовокФормы'

		* Введем на основании Справочник СоответствиеВнешнимИБ
			Когда открылось окно '$ЗаголовокФормы$'
			Если элемент формы с именем 'ФормаСправочникСоответствиеВнешнимИБСоздатьНаОсновании' присутствует на форме Тогда
				И я нажимаю на кнопку с именем 'ФормаСправочникСоответствиеВнешнимИБСоздатьНаОсновании'
				Если появилось предупреждение Тогда
					Тогда я вызываю исключение "Не удалось ввести Справочник СоответствиеВнешнимИБ на основании справочника ПеречисленияБД" 
				Если имя текущей формы "ErrorWindow" Тогда
					Тогда я вызываю исключение "Не удалось ввести Справочник СоответствиеВнешнимИБ на основании справочника ПеречисленияБД"
				Тогда открылось окно '* (создание)'
				И Я закрываю окно '* (создание)'

Сценарий: ВводНаОсновании элемента справочника "Справочники ИБ" (СправочникиБД)

	* Ищем ссылку на существующий элемент
		И я выполняю код встроенного языка на сервере
		"""bsl
			Объект.ЗначениеНаСервере = НЕОПРЕДЕЛЕНО;
			Запрос = Новый Запрос(
				"ВЫБРАТЬ ПЕРВЫЕ 1
				|	ТекДанныеИсточник.Ссылка КАК Ссылка
				|ИЗ
				|	Справочник.СправочникиБД КАК ТекДанныеИсточник
				|ГДЕ
				|	НЕ ТекДанныеИсточник.ПометкаУдаления
				|	И НЕ ТекДанныеИсточник.Предопределенный");
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
				Тогда я вызываю исключение "Не удалось открыть существующий элемент справочника СправочникиБД"
			Если имя текущей формы "ErrorWindow" Тогда
				Тогда я вызываю исключение "Не удалось открыть существующий элемент справочника СправочникиБД"
			И я запоминаю заголовок формы в переменную 'ЗаголовокФормы'

		* Введем на основании Справочник СоответствиеВнешнимИБ
			Когда открылось окно '$ЗаголовокФормы$'
			Если элемент формы с именем 'ФормаСправочникСоответствиеВнешнимИБСоздатьНаОсновании' присутствует на форме Тогда
				И я нажимаю на кнопку с именем 'ФормаСправочникСоответствиеВнешнимИБСоздатьНаОсновании'
				Если появилось предупреждение Тогда
					Тогда я вызываю исключение "Не удалось ввести Справочник СоответствиеВнешнимИБ на основании справочника СправочникиБД" 
				Если имя текущей формы "ErrorWindow" Тогда
					Тогда я вызываю исключение "Не удалось ввести Справочник СоответствиеВнешнимИБ на основании справочника СправочникиБД"
				Тогда открылось окно '* (создание)'
				И Я закрываю окно '* (создание)'
