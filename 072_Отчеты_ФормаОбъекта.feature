﻿
#language: ru

@tree

Функциональность: Дымовые тесты - Отчеты - ФормаОбъекта
# Конфигурация: Управление холдингом, редакция 3.2
# Версия: 3.2.4.6

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: Открытие формы отчета "Анализ дебиторской задолженности"

	Дано Я открываю основную форму отчета "АнализДебиторскойЗадолженности"
	Если появилось предупреждение Тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму отчета АнализДебиторскойЗадолженности"
	Если имя текущей формы "ErrorWindow" Тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму отчета АнализДебиторскойЗадолженности"
	И Я закрываю текущее окно

Сценарий: Открытие формы отчета "Анализ заказов поставщикам"

	Дано Я открываю основную форму отчета "АнализЗаказовПоставщикам"
	Если появилось предупреждение Тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму отчета АнализЗаказовПоставщикам"
	Если имя текущей формы "ErrorWindow" Тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму отчета АнализЗаказовПоставщикам"
	И Я закрываю текущее окно

Сценарий: Открытие формы отчета "Анализ процессов"

	Дано Я открываю основную форму отчета "АнализПроцессов"
	Если появилось предупреждение Тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму отчета АнализПроцессов"
	Если имя текущей формы "ErrorWindow" Тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму отчета АнализПроцессов"
	И Я закрываю текущее окно

Сценарий: Открытие формы отчета "Анализ удовлетворения потребностей"

	Дано Я открываю основную форму отчета "АнализУдовлетворенияПотребностей"
	Если появилось предупреждение Тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму отчета АнализУдовлетворенияПотребностей"
	Если имя текущей формы "ErrorWindow" Тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму отчета АнализУдовлетворенияПотребностей"
	И Я закрываю текущее окно

Сценарий: Открытие формы отчета "Сверка банковских выписок"

	Дано Я открываю основную форму отчета "ВедомостьБезналичныхДенежныхСредств"
	Если появилось предупреждение Тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму отчета ВедомостьБезналичныхДенежныхСредств"
	Если имя текущей формы "ErrorWindow" Тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму отчета ВедомостьБезналичныхДенежныхСредств"
	И Я закрываю текущее окно

Сценарий: Открытие формы отчета "Взаиморасчеты поставщика"

	Дано Я открываю основную форму отчета "ВзаиморасчетыПоставщика"
	Если появилось предупреждение Тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму отчета ВзаиморасчетыПоставщика"
	Если имя текущей формы "ErrorWindow" Тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму отчета ВзаиморасчетыПоставщика"
	И Я закрываю текущее окно

Сценарий: Открытие формы отчета "Выверка трансляции проводок"

	Дано Я открываю основную форму отчета "ВыверкаТрансляцииПроводок"
	Если появилось предупреждение Тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму отчета ВыверкаТрансляцииПроводок"
	Если имя текущей формы "ErrorWindow" Тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму отчета ВыверкаТрансляцииПроводок"
	И Я закрываю текущее окно

Сценарий: Открытие формы отчета "Графический отчет связей отчетов"

	Дано Я открываю основную форму отчета "ГрафическийОтчетСвязейОтчетов"
	Если появилось предупреждение Тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму отчета ГрафическийОтчетСвязейОтчетов"
	Если имя текущей формы "ErrorWindow" Тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму отчета ГрафическийОтчетСвязейОтчетов"
	И Я закрываю текущее окно

Сценарий: Открытие формы отчета "Движения документа"

	Дано Я открываю основную форму отчета "ДвиженияНастраиваемойОтчетности"
	Если появилось предупреждение Тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму отчета ДвиженияНастраиваемойОтчетности"
	Если имя текущей формы "ErrorWindow" Тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму отчета ДвиженияНастраиваемойОтчетности"
	И Я закрываю текущее окно

Сценарий: Открытие формы отчета "Инициативы"

	Дано Я открываю основную форму отчета "Инициативы"
	Если появилось предупреждение Тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму отчета Инициативы"
	Если имя текущей формы "ErrorWindow" Тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму отчета Инициативы"
	И Я закрываю текущее окно

Сценарий: Открытие формы отчета "Состояние моих заявок"

	Дано Я открываю основную форму отчета "ИсполнениеЗаявокНаОплату"
	Если появилось предупреждение Тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму отчета ИсполнениеЗаявокНаОплату"
	Если имя текущей формы "ErrorWindow" Тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму отчета ИсполнениеЗаявокНаОплату"
	И Я закрываю текущее окно

Сценарий: Открытие формы отчета "Исполнение стадий меропрития (Диаграмма Ганта)"

	Дано Я открываю основную форму отчета "ИсполнениеСтадийМеропритияДиаграммаГанта"
	Если появилось предупреждение Тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму отчета ИсполнениеСтадийМеропритияДиаграммаГанта"
	Если имя текущей формы "ErrorWindow" Тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму отчета ИсполнениеСтадийМеропритияДиаграммаГанта"
	И Я закрываю текущее окно

Сценарий: Открытие формы отчета "История согласования"

	Дано Я открываю основную форму отчета "ИсторияСогласования"
	Если появилось предупреждение Тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму отчета ИсторияСогласования"
	Если имя текущей формы "ErrorWindow" Тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму отчета ИсторияСогласования"
	И Я закрываю текущее окно

Сценарий: Открытие формы отчета "Матрица полномочий категорийных менеджеров"

	Дано Я открываю основную форму отчета "МатрицаПолномочийКатегорийныхМенеджеров"
	Если появилось предупреждение Тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму отчета МатрицаПолномочийКатегорийныхМенеджеров"
	Если имя текущей формы "ErrorWindow" Тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму отчета МатрицаПолномочийКатегорийныхМенеджеров"
	И Я закрываю текущее окно

Сценарий: Открытие формы отчета "Матрица рисков"

	Дано Я открываю основную форму отчета "МатрицаРисков"
	Если появилось предупреждение Тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму отчета МатрицаРисков"
	Если имя текущей формы "ErrorWindow" Тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму отчета МатрицаРисков"
	И Я закрываю текущее окно

Сценарий: Открытие формы отчета "Остатки кредитных лимитов"

	Дано Я открываю основную форму отчета "ОстаткиКредитныхЛимитов"
	Если появилось предупреждение Тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму отчета ОстаткиКредитныхЛимитов"
	Если имя текущей формы "ErrorWindow" Тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму отчета ОстаткиКредитныхЛимитов"
	И Я закрываю текущее окно

Сценарий: Открытие формы отчета "Профильные ЦФО"

	Дано Я открываю основную форму отчета "ОтветственныеЗаФункциональныеНаправления"
	Если появилось предупреждение Тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму отчета ОтветственныеЗаФункциональныеНаправления"
	Если имя текущей формы "ErrorWindow" Тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму отчета ОтветственныеЗаФункциональныеНаправления"
	И Я закрываю текущее окно

Сценарий: Открытие формы отчета "Отчет о применении аналогов"

	Дано Я открываю основную форму отчета "ОтчетОПримененииАналогов"
	Если появилось предупреждение Тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму отчета ОтчетОПримененииАналогов"
	Если имя текущей формы "ErrorWindow" Тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму отчета ОтчетОПримененииАналогов"
	И Я закрываю текущее окно

Сценарий: Открытие формы отчета "Отчет о связях показателей отчетов"

	Дано Я открываю основную форму отчета "ОтчетОСвязяхМеждуОтчетами"
	Если появилось предупреждение Тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму отчета ОтчетОСвязяхМеждуОтчетами"
	Если имя текущей формы "ErrorWindow" Тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму отчета ОтчетОСвязяхМеждуОтчетами"
	И Я закрываю текущее окно

Сценарий: Открытие формы отчета "Отчет по показателям"

	Дано Я открываю основную форму отчета "ОтчетПоПоказателям"
	Если появилось предупреждение Тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму отчета ОтчетПоПоказателям"
	Если имя текущей формы "ErrorWindow" Тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму отчета ОтчетПоПоказателям"
	И Я закрываю текущее окно

Сценарий: Открытие формы отчета "Отчет по произвольному запросу ВИБ"

	Дано Я открываю основную форму отчета "ОтчетПоПроизвольномуЗапросуВИБ"
	Если появилось предупреждение Тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму отчета ОтчетПоПроизвольномуЗапросуВИБ"
	Если имя текущей формы "ErrorWindow" Тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму отчета ОтчетПоПроизвольномуЗапросуВИБ"
	И Я закрываю текущее окно

Сценарий: Открытие формы отчета "Отчет по произвольному запросу текущей ИБ"

	Дано Я открываю основную форму отчета "ОтчетПоПроизвольномуЗапросуТек"
	Если появилось предупреждение Тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму отчета ОтчетПоПроизвольномуЗапросуТек"
	Если имя текущей формы "ErrorWindow" Тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму отчета ОтчетПоПроизвольномуЗапросуТек"
	И Я закрываю текущее окно

Сценарий: Открытие формы отчета "Отчет по регистру бухгалтерии"

	Дано Я открываю основную форму отчета "ОтчетПоРегиструБухгалтерииБД"
	Если появилось предупреждение Тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму отчета ОтчетПоРегиструБухгалтерииБД"
	Если имя текущей формы "ErrorWindow" Тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму отчета ОтчетПоРегиструБухгалтерииБД"
	И Я закрываю текущее окно

Сценарий: Открытие формы отчета "Отчет по регистру накопления"

	Дано Я открываю основную форму отчета "ОтчетПоРегиструНакопленияБД"
	Если появилось предупреждение Тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму отчета ОтчетПоРегиструНакопленияБД"
	Если имя текущей формы "ErrorWindow" Тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму отчета ОтчетПоРегиструНакопленияБД"
	И Я закрываю текущее окно

Сценарий: Открытие формы отчета "План статей"

	Дано Я открываю основную форму отчета "ПланПоказателей"
	Если появилось предупреждение Тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму отчета ПланПоказателей"
	Если имя текущей формы "ErrorWindow" Тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму отчета ПланПоказателей"
	И Я закрываю текущее окно

Сценарий: Открытие формы отчета "План-факт выполнения мероприятий"

	Дано Я открываю основную форму отчета "ПланФактВыполненияМероприятий"
	Если появилось предупреждение Тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму отчета ПланФактВыполненияМероприятий"
	Если имя текущей формы "ErrorWindow" Тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму отчета ПланФактВыполненияМероприятий"
	И Я закрываю текущее окно

Сценарий: Открытие формы отчета "План-фактный анализ закупок"

	Дано Я открываю основную форму отчета "ПланФактныйАнализЗакупок"
	Если появилось предупреждение Тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму отчета ПланФактныйАнализЗакупок"
	Если имя текущей формы "ErrorWindow" Тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму отчета ПланФактныйАнализЗакупок"
	И Я закрываю текущее окно

Сценарий: Открытие формы отчета "План-фактный анализ оплат и начислений"

	Дано Я открываю основную форму отчета "ПланФактныйАнализФинансовыхИнструментовУХ"
	Если появилось предупреждение Тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму отчета ПланФактныйАнализФинансовыхИнструментовУХ"
	Если имя текущей формы "ErrorWindow" Тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму отчета ПланФактныйАнализФинансовыхИнструментовУХ"
	И Я закрываю текущее окно

Сценарий: Открытие формы отчета "Платежный календарь"

	Дано Я открываю основную форму отчета "ПлатежныйКалендарьУХ"
	Если появилось предупреждение Тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму отчета ПлатежныйКалендарьУХ"
	Если имя текущей формы "ErrorWindow" Тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму отчета ПлатежныйКалендарьУХ"
	И Я закрываю текущее окно

Сценарий: Открытие формы отчета "Сетевая диаграмма группы проектов"

	Дано Я открываю основную форму отчета "СетеваяДиаграммаГруппыПроектов"
	Если появилось предупреждение Тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму отчета СетеваяДиаграммаГруппыПроектов"
	Если имя текущей формы "ErrorWindow" Тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму отчета СетеваяДиаграммаГруппыПроектов"
	И Я закрываю текущее окно

Сценарий: Открытие формы отчета "Сетевая диаграмма шаблона универсального процесса"

	Дано Я открываю основную форму отчета "СетеваяДиаграммаШаблонаУниверсальногоПроцесса"
	Если появилось предупреждение Тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму отчета СетеваяДиаграммаШаблонаУниверсальногоПроцесса"
	Если имя текущей формы "ErrorWindow" Тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму отчета СетеваяДиаграммаШаблонаУниверсальногоПроцесса"
	И Я закрываю текущее окно

Сценарий: Открытие формы отчета "Синхронизация НСИ"

	Дано Я открываю основную форму отчета "СинхронизацияНСИ"
	Если появилось предупреждение Тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму отчета СинхронизацияНСИ"
	Если имя текущей формы "ErrorWindow" Тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму отчета СинхронизацияНСИ"
	И Я закрываю текущее окно

Сценарий: Открытие формы отчета "Статус отправки отчетности в ФНС"

	Дано Я открываю основную форму отчета "СтатусОтправкиОтчетностиВФНС"
	Если появилось предупреждение Тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму отчета СтатусОтправкиОтчетностиВФНС"
	Если имя текущей формы "ErrorWindow" Тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму отчета СтатусОтправкиОтчетностиВФНС"
	И Я закрываю текущее окно

Сценарий: Открытие формы отчета "Установка лимитов"

	Дано Я открываю основную форму отчета "УстановкаЛимитовПредварительная"
	Если появилось предупреждение Тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму отчета УстановкаЛимитовПредварительная"
	Если имя текущей формы "ErrorWindow" Тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму отчета УстановкаЛимитовПредварительная"
	И Я закрываю текущее окно
