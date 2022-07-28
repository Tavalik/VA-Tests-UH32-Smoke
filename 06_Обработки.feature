﻿
#language: ru

@tree

Функциональность: Дымовые тесты - Обработки
# Конфигурация: Управление холдингом, редакция 3.2
# Версия: 3.2.1.102

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: Открытие формы обработки "АнализЗаполненияПоказателей"
	Дано Я открываю основную форму обработки "АнализЗаполненияПоказателей"
	Если появилось предупреждение тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму обработки АнализЗаполненияПоказателей"
	И Я закрываю текущее окно

Сценарий: Открытие формы обработки "АналитическийБланк"
	Дано Я открываю основную форму обработки "АналитическийБланк"
	Если появилось предупреждение тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму обработки АналитическийБланк"
	И Я закрываю текущее окно

Сценарий: Открытие формы обработки "АналитическийБланкСводнаяТаблица"
	Дано Я открываю основную форму обработки "АналитическийБланкСводнаяТаблица"
	Если появилось предупреждение тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму обработки АналитическийБланкСводнаяТаблица"
	И Я закрываю текущее окно

Сценарий: Открытие формы обработки "ВзысканиеДебиторскойЗадолженности"
	Дано Я открываю основную форму обработки "ВзысканиеДебиторскойЗадолженности"
	Если появилось предупреждение тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму обработки ВзысканиеДебиторскойЗадолженности"
	И Я закрываю текущее окно

Сценарий: Открытие формы обработки "ВыборАльтернатив"
	Дано Я открываю основную форму обработки "ВыборАльтернатив"
	Если появилось предупреждение тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму обработки ВыборАльтернатив"
	И Я закрываю текущее окно

Сценарий: Открытие формы обработки "ВыборСпособовПокрытияПотребностиВФинансировании"
	Дано Я открываю основную форму обработки "ВыборСпособовПокрытияПотребностиВФинансировании"
	Если появилось предупреждение тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму обработки ВыборСпособовПокрытияПотребностиВФинансировании"
	И Я закрываю текущее окно

Сценарий: Открытие формы обработки "ВыводСтруктурыРасчетаПоказателей"
	Дано Я открываю основную форму обработки "ВыводСтруктурыРасчетаПоказателей"
	Если появилось предупреждение тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму обработки ВыводСтруктурыРасчетаПоказателей"
	И Я закрываю текущее окно

Сценарий: Открытие формы обработки "ВыгрузкаЗагрузкаДанныхXML"
	Дано Я открываю основную форму обработки "ВыгрузкаЗагрузкаДанныхXML"
	Если появилось предупреждение тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму обработки ВыгрузкаЗагрузкаДанныхXML"
	И Я закрываю текущее окно

Сценарий: Открытие формы обработки "ВыгрузкаЗагрузкаМетодическихМоделей"
	Дано Я открываю основную форму обработки "ВыгрузкаЗагрузкаМетодическихМоделей"
	Если появилось предупреждение тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму обработки ВыгрузкаЗагрузкаМетодическихМоделей"
	И Я закрываю текущее окно

Сценарий: Открытие формы обработки "ВызовФормаВыбораСтатьиБюджета"
	Дано Я открываю основную форму обработки "ВызовФормаВыбораСтатьиБюджета"
	Если появилось предупреждение тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму обработки ВызовФормаВыбораСтатьиБюджета"
	И Я закрываю текущее окно

Сценарий: Открытие формы обработки "ВыплатаЗарплатыЗаявкамиНаОплату"
	Дано Я открываю основную форму обработки "ВыплатаЗарплатыЗаявкамиНаОплату"
	Если появилось предупреждение тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму обработки ВыплатаЗарплатыЗаявкамиНаОплату"
	И Я закрываю текущее окно

Сценарий: Открытие формы обработки "ГенерацияЗаявокНаРазмещениеСвободныхОстатковДС"
	Дано Я открываю основную форму обработки "ГенерацияЗаявокНаРазмещениеСвободныхОстатковДС"
	Если появилось предупреждение тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму обработки ГенерацияЗаявокНаРазмещениеСвободныхОстатковДС"
	И Я закрываю текущее окно

Сценарий: Открытие формы обработки "ГенерацияКассовыхОрдеров"
	Дано Я открываю основную форму обработки "ГенерацияКассовыхОрдеров"
	Если появилось предупреждение тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму обработки ГенерацияКассовыхОрдеров"
	И Я закрываю текущее окно

Сценарий: Открытие формы обработки "ГенерацияМоделиОтчетностиКИК"
	Дано Я открываю основную форму обработки "ГенерацияМоделиОтчетностиКИК"
	Если появилось предупреждение тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму обработки ГенерацияМоделиОтчетностиКИК"
	И Я закрываю текущее окно

Сценарий: Открытие формы обработки "ГенерацияОбъектовБД"
	Дано Я открываю основную форму обработки "ГенерацияОбъектовБД"
	Если появилось предупреждение тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму обработки ГенерацияОбъектовБД"
	И Я закрываю текущее окно

Сценарий: Открытие формы обработки "ГенерацияПлатежныхПоручений"
	Дано Я открываю основную форму обработки "ГенерацияПлатежныхПоручений"
	Если появилось предупреждение тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму обработки ГенерацияПлатежныхПоручений"
	И Я закрываю текущее окно

Сценарий: Открытие формы обработки "ГрупповаяУстановкаПараметровКонтроляСтатейБюджетов"
	Дано Я открываю основную форму обработки "ГрупповаяУстановкаПараметровКонтроляСтатейБюджетов"
	Если появилось предупреждение тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму обработки ГрупповаяУстановкаПараметровКонтроляСтатейБюджетов"
	И Я закрываю текущее окно

Сценарий: Открытие формы обработки "ГрупповоеИзменениеРеквизитов"
	Дано Я открываю основную форму обработки "ГрупповоеИзменениеРеквизитов"
	Если появилось предупреждение тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму обработки ГрупповоеИзменениеРеквизитов"
	И Я закрываю текущее окно

Сценарий: Открытие формы обработки "ГрупповоеИзменениеЭлементовОтчета"
	Дано Я открываю основную форму обработки "ГрупповоеИзменениеЭлементовОтчета"
	Если появилось предупреждение тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму обработки ГрупповоеИзменениеЭлементовОтчета"
	И Я закрываю текущее окно

Сценарий: Открытие формы обработки "ГрупповоеРедактированиеЭкземпляровОтчета"
	Дано Я открываю основную форму обработки "ГрупповоеРедактированиеЭкземпляровОтчета"
	Если появилось предупреждение тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму обработки ГрупповоеРедактированиеЭкземпляровОтчета"
	И Я закрываю текущее окно

Сценарий: Открытие формы обработки "ДиаграммаГантаОперации"
	Дано Я открываю основную форму обработки "ДиаграммаГантаОперации"
	Если появилось предупреждение тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму обработки ДиаграммаГантаОперации"
	И Я закрываю текущее окно

Сценарий: Открытие формы обработки "ДополнительноеСогласование"
	Дано Я открываю основную форму обработки "ДополнительноеСогласование"
	Если появилось предупреждение тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму обработки ДополнительноеСогласование"
	И Я закрываю текущее окно

Сценарий: Открытие формы обработки "ЖурналДокументовЦессии"
	Дано Я открываю основную форму обработки "ЖурналДокументовЦессии"
	Если появилось предупреждение тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму обработки ЖурналДокументовЦессии"
	И Я закрываю текущее окно

Сценарий: Открытие формы обработки "ЗагрузкаБанковскойВыпискиISO20022"
	Дано Я открываю основную форму обработки "ЗагрузкаБанковскойВыпискиISO20022"
	Если появилось предупреждение тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму обработки ЗагрузкаБанковскойВыпискиISO20022"
	И Я закрываю текущее окно

Сценарий: Открытие формы обработки "ЗагрузкаГрафикаФИ"
	Дано Я открываю основную форму обработки "ЗагрузкаГрафикаФИ"
	Если появилось предупреждение тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму обработки ЗагрузкаГрафикаФИ"
	И Я закрываю текущее окно

Сценарий: Открытие формы обработки "ЗагрузкаДанныхИзВнешнихФайлов"
	Дано Я открываю основную форму обработки "ЗагрузкаДанныхИзВнешнихФайлов"
	Если появилось предупреждение тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму обработки ЗагрузкаДанныхИзВнешнихФайлов"
	И Я закрываю текущее окно

Сценарий: Открытие формы обработки "ЗагрузкаДанныхТаблицей"
	Дано Я открываю основную форму обработки "ЗагрузкаДанныхТаблицей"
	Если появилось предупреждение тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму обработки ЗагрузкаДанныхТаблицей"
	И Я закрываю текущее окно

Сценарий: Открытие формы обработки "ЗагрузкаКлассификаторовЕИС"
	Дано Я открываю основную форму обработки "ЗагрузкаКлассификаторовЕИС"
	Если появилось предупреждение тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму обработки ЗагрузкаКлассификаторовЕИС"
	И Я закрываю текущее окно

Сценарий: Открытие формы обработки "ЗагрузкаСтавокЦБРФ"
	Дано Я открываю основную форму обработки "ЗагрузкаСтавокЦБРФ"
	Если появилось предупреждение тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму обработки ЗагрузкаСтавокЦБРФ"
	И Я закрываю текущее окно

Сценарий: Открытие формы обработки "ЗадачиИОповещенияТекущегоПользователя"
	Дано Я открываю основную форму обработки "ЗадачиИОповещенияТекущегоПользователя"
	Если появилось предупреждение тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму обработки ЗадачиИОповещенияТекущегоПользователя"
	И Я закрываю текущее окно

Сценарий: Открытие формы обработки "ЗакрытиеПериодаМСФО"
	Дано Я открываю основную форму обработки "ЗакрытиеПериодаМСФО"
	Если появилось предупреждение тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму обработки ЗакрытиеПериодаМСФО"
	И Я закрываю текущее окно

Сценарий: Открытие формы обработки "ЗаменаНоменклатуры"
	Дано Я открываю основную форму обработки "ЗаменаНоменклатуры"
	Если появилось предупреждение тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму обработки ЗаменаНоменклатуры"
	И Я закрываю текущее окно

Сценарий: Открытие формы обработки "ЗапасыДляРеклассаВНА"
	Дано Я открываю основную форму обработки "ЗапасыДляРеклассаВНА"
	Если появилось предупреждение тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму обработки ЗапасыДляРеклассаВНА"
	И Я закрываю текущее окно

Сценарий: Открытие формы обработки "ЗаполнениеДокументовОтраженияФактаПоБюджетам"
	Дано Я открываю основную форму обработки "ЗаполнениеДокументовОтраженияФактаПоБюджетам"
	Если появилось предупреждение тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму обработки ЗаполнениеДокументовОтраженияФактаПоБюджетам"
	И Я закрываю текущее окно

Сценарий: Открытие формы обработки "ЗаполнениеКорректировокПоШаблонам"
	Дано Я открываю основную форму обработки "ЗаполнениеКорректировокПоШаблонам"
	Если появилось предупреждение тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму обработки ЗаполнениеКорректировокПоШаблонам"
	И Я закрываю текущее окно

Сценарий: Открытие формы обработки "ИмпортВидовОтчетовИзЭлектронныхТаблицMicrosoftExcel"
	Дано Я открываю основную форму обработки "ИмпортВидовОтчетовИзЭлектронныхТаблицMicrosoftExcel"
	Если появилось предупреждение тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму обработки ИмпортВидовОтчетовИзЭлектронныхТаблицMicrosoftExcel"
	И Я закрываю текущее окно

Сценарий: Открытие формы обработки "ИмпортОбъектовИзExcel"
	Дано Я открываю основную форму обработки "ИмпортОбъектовИзExcel"
	Если появилось предупреждение тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму обработки ИмпортОбъектовИзExcel"
	И Я закрываю текущее окно

Сценарий: Открытие формы обработки "ИмпортПроектаИзMicrosoftProject"
	Дано Я открываю основную форму обработки "ИмпортПроектаИзMicrosoftProject"
	Если появилось предупреждение тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму обработки ИмпортПроектаИзMicrosoftProject"
	И Я закрываю текущее окно

Сценарий: Открытие формы обработки "КонвертацияБланковВМногопериодные"
	Дано Я открываю основную форму обработки "КонвертацияБланковВМногопериодные"
	Если появилось предупреждение тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму обработки КонвертацияБланковВМногопериодные"
	И Я закрываю текущее окно

Сценарий: Открытие формы обработки "КонвертацияВерсийДоговоров"
	Дано Я открываю основную форму обработки "КонвертацияВерсийДоговоров"
	Если появилось предупреждение тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму обработки КонвертацияВерсийДоговоров"
	И Я закрываю текущее окно

Сценарий: Открытие формы обработки "КонвертерSCMIntermediateFormatУХ"
	Дано Я открываю основную форму обработки "КонвертерSCMIntermediateFormatУХ"
	Если появилось предупреждение тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму обработки КонвертерSCMIntermediateFormatУХ"
	И Я закрываю текущее окно

Сценарий: Открытие формы обработки "КонвертерОбъектовXDTOУХ"
	Дано Я открываю основную форму обработки "КонвертерОбъектовXDTOУХ"
	Если появилось предупреждение тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму обработки КонвертерОбъектовXDTOУХ"
	И Я закрываю текущее окно

Сценарий: Открытие формы обработки "КонсольУправленияПроцессом"
	Дано Я открываю основную форму обработки "КонсольУправленияПроцессом"
	Если появилось предупреждение тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму обработки КонсольУправленияПроцессом"
	И Я закрываю текущее окно

Сценарий: Открытие формы обработки "КонструкторПериодическихКурсов"
	Дано Я открываю основную форму обработки "КонструкторПериодическихКурсов"
	Если появилось предупреждение тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму обработки КонструкторПериодическихКурсов"
	И Я закрываю текущее окно

Сценарий: Открытие формы обработки "КонструкторПользовательскихПолей"
	Дано Я открываю основную форму обработки "КонструкторПользовательскихПолей"
	Если появилось предупреждение тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму обработки КонструкторПользовательскихПолей"
	И Я закрываю текущее окно

Сценарий: Открытие формы обработки "КопированиеПоСрезам"
	Дано Я открываю основную форму обработки "КопированиеПоСрезам"
	Если появилось предупреждение тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму обработки КопированиеПоСрезам"
	И Я закрываю текущее окно

Сценарий: Открытие формы обработки "КопированиеЭкземпляровОтчетов"
	Дано Я открываю основную форму обработки "КопированиеЭкземпляровОтчетов"
	Если появилось предупреждение тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму обработки КопированиеЭкземпляровОтчетов"
	И Я закрываю текущее окно

Сценарий: Открытие формы обработки "КорректировкиЗначенийПоказателей"
	Дано Я открываю основную форму обработки "КорректировкиЗначенийПоказателей"
	Если появилось предупреждение тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму обработки КорректировкиЗначенийПоказателей"
	И Я закрываю текущее окно

Сценарий: Открытие формы обработки "МастерСозданияВидаОтчетаОСВ"
	Дано Я открываю основную форму обработки "МастерСозданияВидаОтчетаОСВ"
	Если появилось предупреждение тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму обработки МастерСозданияВидаОтчетаОСВ"
	И Я закрываю текущее окно

Сценарий: Открытие формы обработки "МатрицаАдресации"
	Дано Я открываю основную форму обработки "МатрицаАдресации"
	Если появилось предупреждение тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму обработки МатрицаАдресации"
	И Я закрываю текущее окно

Сценарий: Открытие формы обработки "МатрицаПолномочий"
	Дано Я открываю основную форму обработки "МатрицаПолномочий"
	Если появилось предупреждение тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму обработки МатрицаПолномочий"
	И Я закрываю текущее окно

Сценарий: Открытие формы обработки "МатрицаПравДоступаВидыОтчетов"
	Дано Я открываю основную форму обработки "МатрицаПравДоступаВидыОтчетов"
	Если появилось предупреждение тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму обработки МатрицаПравДоступаВидыОтчетов"
	И Я закрываю текущее окно

Сценарий: Открытие формы обработки "МатрицаУправленияУниверсальнымПроцессом"
	Дано Я открываю основную форму обработки "МатрицаУправленияУниверсальнымПроцессом"
	Если появилось предупреждение тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму обработки МатрицаУправленияУниверсальнымПроцессом"
	И Я закрываю текущее окно

Сценарий: Открытие формы обработки "НазначениеПоставщиковНоменклатуреЛота"
	Дано Я открываю основную форму обработки "НазначениеПоставщиковНоменклатуреЛота"
	Если появилось предупреждение тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму обработки НазначениеПоставщиковНоменклатуреЛота"
	И Я закрываю текущее окно

Сценарий: Открытие формы обработки "НалоговыйМониторинг"
	Дано Я открываю основную форму обработки "НалоговыйМониторинг"
	Если появилось предупреждение тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму обработки НалоговыйМониторинг"
	И Я закрываю текущее окно

Сценарий: Открытие формы обработки "НастройкаВнутригрупповыхКонтрагентов"
	Дано Я открываю основную форму обработки "НастройкаВнутригрупповыхКонтрагентов"
	Если появилось предупреждение тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму обработки НастройкаВнутригрупповыхКонтрагентов"
	И Я закрываю текущее окно

Сценарий: Открытие формы обработки "НастройкаМатрицыПолномочий"
	Дано Я открываю основную форму обработки "НастройкаМатрицыПолномочий"
	Если появилось предупреждение тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму обработки НастройкаМатрицыПолномочий"
	И Я закрываю текущее окно

Сценарий: Открытие формы обработки "НастройкаПараметровОтчетовПоУмолчанию"
	Дано Я открываю основную форму обработки "НастройкаПараметровОтчетовПоУмолчанию"
	Если появилось предупреждение тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму обработки НастройкаПараметровОтчетовПоУмолчанию"
	И Я закрываю текущее окно

Сценарий: Открытие формы обработки "НастройкаПравилЗаполненияОбъектовБД"
	Дано Я открываю основную форму обработки "НастройкаПравилЗаполненияОбъектовБД"
	Если появилось предупреждение тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму обработки НастройкаПравилЗаполненияОбъектовБД"
	И Я закрываю текущее окно

Сценарий: Открытие формы обработки "НастройкаПравилИмпортаОбъектовADO"
	Дано Я открываю основную форму обработки "НастройкаПравилИмпортаОбъектовADO"
	Если появилось предупреждение тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму обработки НастройкаПравилИмпортаОбъектовADO"
	И Я закрываю текущее окно

Сценарий: Открытие формы обработки "НастройкаСтатейБюджетовДляОпераций"
	Дано Я открываю основную форму обработки "НастройкаСтатейБюджетовДляОпераций"
	Если появилось предупреждение тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму обработки НастройкаСтатейБюджетовДляОпераций"
	И Я закрываю текущее окно

Сценарий: Открытие формы обработки "НастройкаСтрокиПодключения"
	Дано Я открываю основную форму обработки "НастройкаСтрокиПодключения"
	Если появилось предупреждение тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму обработки НастройкаСтрокиПодключения"
	И Я закрываю текущее окно

Сценарий: Открытие формы обработки "НастройкаСтруктурыОтчета"
	Дано Я открываю основную форму обработки "НастройкаСтруктурыОтчета"
	Если появилось предупреждение тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму обработки НастройкаСтруктурыОтчета"
	И Я закрываю текущее окно

Сценарий: Открытие формы обработки "НастройкиФормированияПроводокПоДокументам"
	Дано Я открываю основную форму обработки "НастройкиФормированияПроводокПоДокументам"
	Если появилось предупреждение тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму обработки НастройкиФормированияПроводокПоДокументам"
	И Я закрываю текущее окно

Сценарий: Открытие формы обработки "ОбменНСИ"
	Дано Я открываю основную форму обработки "ОбменНСИ"
	Если появилось предупреждение тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму обработки ОбменНСИ"
	И Я закрываю текущее окно

Сценарий: Открытие формы обработки "ОтменаИсполненияПлатежныхПозиций"
	Дано Я открываю основную форму обработки "ОтменаИсполненияПлатежныхПозиций"
	Если появилось предупреждение тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму обработки ОтменаИсполненияПлатежныхПозиций"
	И Я закрываю текущее окно

Сценарий: Открытие формы обработки "ОтображениеПротоколируемыхСобытий"
	Дано Я открываю основную форму обработки "ОтображениеПротоколируемыхСобытий"
	Если появилось предупреждение тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму обработки ОтображениеПротоколируемыхСобытий"
	И Я закрываю текущее окно

Сценарий: Открытие формы обработки "ОценкаОбъектов"
	Дано Я открываю основную форму обработки "ОценкаОбъектов"
	Если появилось предупреждение тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму обработки ОценкаОбъектов"
	И Я закрываю текущее окно

Сценарий: Открытие формы обработки "ПереносМетодическихМоделейБПМСФО"
	Дано Я открываю основную форму обработки "ПереносМетодическихМоделейБПМСФО"
	Если появилось предупреждение тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму обработки ПереносМетодическихМоделейБПМСФО"
	И Я закрываю текущее окно

Сценарий: Открытие формы обработки "ПереносПоказателейОтчетов"
	Дано Я открываю основную форму обработки "ПереносПоказателейОтчетов"
	Если появилось предупреждение тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму обработки ПереносПоказателейОтчетов"
	И Я закрываю текущее окно

Сценарий: Открытие формы обработки "ПодборВНА"
	Дано Я открываю основную форму обработки "ПодборВНА"
	Если появилось предупреждение тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму обработки ПодборВНА"
	И Я закрываю текущее окно

Сценарий: Открытие формы обработки "ПодборИзПланаПоставок"
	Дано Я открываю основную форму обработки "ПодборИзПланаПоставок"
	Если появилось предупреждение тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму обработки ПодборИзПланаПоставок"
	И Я закрываю текущее окно

Сценарий: Открытие формы обработки "ПодборОбъектовРасчетов"
	Дано Я открываю основную форму обработки "ПодборОбъектовРасчетов"
	Если появилось предупреждение тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму обработки ПодборОбъектовРасчетов"
	И Я закрываю текущее окно

Сценарий: Открытие формы обработки "ПодборПланов"
	Дано Я открываю основную форму обработки "ПодборПланов"
	Если появилось предупреждение тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму обработки ПодборПланов"
	И Я закрываю текущее окно

Сценарий: Открытие формы обработки "ПодборПлановЛимитов"
	Дано Я открываю основную форму обработки "ПодборПлановЛимитов"
	Если появилось предупреждение тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму обработки ПодборПлановЛимитов"
	И Я закрываю текущее окно

Сценарий: Открытие формы обработки "ПодборПотребностейИзПлана"
	Дано Я открываю основную форму обработки "ПодборПотребностейИзПлана"
	Если появилось предупреждение тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму обработки ПодборПотребностейИзПлана"
	И Я закрываю текущее окно

Сценарий: Открытие формы обработки "ПодборРезервов"
	Дано Я открываю основную форму обработки "ПодборРезервов"
	Если появилось предупреждение тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму обработки ПодборРезервов"
	И Я закрываю текущее окно

Сценарий: Открытие формы обработки "ПодготовкаМежстрановойОтчетности"
	Дано Я открываю основную форму обработки "ПодготовкаМежстрановойОтчетности"
	Если появилось предупреждение тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму обработки ПодготовкаМежстрановойОтчетности"
	И Я закрываю текущее окно

Сценарий: Открытие формы обработки "ПоискИСлияниеДублирующихсяЭлементов"
	Дано Я открываю основную форму обработки "ПоискИСлияниеДублирующихсяЭлементов"
	Если появилось предупреждение тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму обработки ПоискИСлияниеДублирующихсяЭлементов"
	И Я закрываю текущее окно

Сценарий: Открытие формы обработки "ПоискОбъектовДляЕИСПоУИД"
	Дано Я открываю основную форму обработки "ПоискОбъектовДляЕИСПоУИД"
	Если появилось предупреждение тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму обработки ПоискОбъектовДляЕИСПоУИД"
	И Я закрываю текущее окно

Сценарий: Открытие формы обработки "ПомощникОтнесенияПотребностиНаДоговор"
	Дано Я открываю основную форму обработки "ПомощникОтнесенияПотребностиНаДоговор"
	Если появилось предупреждение тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму обработки ПомощникОтнесенияПотребностиНаДоговор"
	И Я закрываю текущее окно

Сценарий: Открытие формы обработки "ПомощникПланирования"
	Дано Я открываю основную форму обработки "ПомощникПланирования"
	Если появилось предупреждение тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму обработки ПомощникПланирования"
	И Я закрываю текущее окно

Сценарий: Открытие формы обработки "ПомощникУчетаОбязательств"
	Дано Я открываю основную форму обработки "ПомощникУчетаОбязательств"
	Если появилось предупреждение тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму обработки ПомощникУчетаОбязательств"
	И Я закрываю текущее окно

Сценарий: Открытие формы обработки "ПорталСверкиВГО"
	Дано Я открываю основную форму обработки "ПорталСверкиВГО"
	Если появилось предупреждение тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму обработки ПорталСверкиВГО"
	И Я закрываю текущее окно

Сценарий: Открытие формы обработки "ПроверкаКорректностиОписанияМетаданных"
	Дано Я открываю основную форму обработки "ПроверкаКорректностиОписанияМетаданных"
	Если появилось предупреждение тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму обработки ПроверкаКорректностиОписанияМетаданных"
	И Я закрываю текущее окно

Сценарий: Открытие формы обработки "РазнесениеВыписки"
	Дано Я открываю основную форму обработки "РазнесениеВыписки"
	Если появилось предупреждение тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму обработки РазнесениеВыписки"
	И Я закрываю текущее окно

Сценарий: Открытие формы обработки "РаспределениеКредитаПоДЗО"
	Дано Я открываю основную форму обработки "РаспределениеКредитаПоДЗО"
	Если появилось предупреждение тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму обработки РаспределениеКредитаПоДЗО"
	И Я закрываю текущее окно

Сценарий: Открытие формы обработки "РасчетИЗаписьПоказателей"
	Дано Я открываю основную форму обработки "РасчетИЗаписьПоказателей"
	Если появилось предупреждение тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму обработки РасчетИЗаписьПоказателей"
	И Я закрываю текущее окно

Сценарий: Открытие формы обработки "РасчетРасхожденийВГО"
	Дано Я открываю основную форму обработки "РасчетРасхожденийВГО"
	Если появилось предупреждение тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму обработки РасчетРасхожденийВГО"
	И Я закрываю текущее окно

Сценарий: Открытие формы обработки "РеестрУведомленийОбИностранныхКомпаниях"
	Дано Я открываю основную форму обработки "РеестрУведомленийОбИностранныхКомпаниях"
	Если появилось предупреждение тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму обработки РеестрУведомленийОбИностранныхКомпаниях"
	И Я закрываю текущее окно

Сценарий: Открытие формы обработки "РестуктуризацияБланковВО"
	Дано Я открываю основную форму обработки "РестуктуризацияБланковВО"
	Если появилось предупреждение тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму обработки РестуктуризацияБланковВО"
	И Я закрываю текущее окно

Сценарий: Открытие формы обработки "СозданиеОтсутствующихВерсийСоглашенийДоговоров"
	Дано Я открываю основную форму обработки "СозданиеОтсутствующихВерсийСоглашенийДоговоров"
	Если появилось предупреждение тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму обработки СозданиеОтсутствующихВерсийСоглашенийДоговоров"
	И Я закрываю текущее окно

Сценарий: Открытие формы обработки "СопоставлениеПланФактОперацийМСФО"
	Дано Я открываю основную форму обработки "СопоставлениеПланФактОперацийМСФО"
	Если появилось предупреждение тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму обработки СопоставлениеПланФактОперацийМСФО"
	И Я закрываю текущее окно

Сценарий: Открытие формы обработки "СписокМероприятийОценкиПоставщиков"
	Дано Я открываю основную форму обработки "СписокМероприятийОценкиПоставщиков"
	Если появилось предупреждение тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму обработки СписокМероприятийОценкиПоставщиков"
	И Я закрываю текущее окно

Сценарий: Открытие формы обработки "СравнениеВерсийГрафиков"
	Дано Я открываю основную форму обработки "СравнениеВерсийГрафиков"
	Если появилось предупреждение тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму обработки СравнениеВерсийГрафиков"
	И Я закрываю текущее окно

Сценарий: Открытие формы обработки "СравнениеТабличныхДокументов"
	Дано Я открываю основную форму обработки "СравнениеТабличныхДокументов"
	Если появилось предупреждение тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму обработки СравнениеТабличныхДокументов"
	И Я закрываю текущее окно

Сценарий: Открытие формы обработки "СтруктураВладения"
	Дано Я открываю основную форму обработки "СтруктураВладения"
	Если появилось предупреждение тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму обработки СтруктураВладения"
	И Я закрываю текущее окно

Сценарий: Открытие формы обработки "СхемыСправки"
	Дано Я открываю основную форму обработки "СхемыСправки"
	Если появилось предупреждение тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму обработки СхемыСправки"
	И Я закрываю текущее окно

Сценарий: Открытие формы обработки "ТрансформационнаяТаблица"
	Дано Я открываю основную форму обработки "ТрансформационнаяТаблица"
	Если появилось предупреждение тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму обработки ТрансформационнаяТаблица"
	И Я закрываю текущее окно

Сценарий: Открытие формы обработки "УдалениеВидовОтчетов"
	Дано Я открываю основную форму обработки "УдалениеВидовОтчетов"
	Если появилось предупреждение тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму обработки УдалениеВидовОтчетов"
	И Я закрываю текущее окно

Сценарий: Открытие формы обработки "УправлениеАналогами"
	Дано Я открываю основную форму обработки "УправлениеАналогами"
	Если появилось предупреждение тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму обработки УправлениеАналогами"
	И Я закрываю текущее окно

Сценарий: Открытие формы обработки "УправлениеОтклонениями"
	Дано Я открываю основную форму обработки "УправлениеОтклонениями"
	Если появилось предупреждение тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму обработки УправлениеОтклонениями"
	И Я закрываю текущее окно

Сценарий: Открытие формы обработки "УправлениеПериодомСценарияВГрафическомВиде"
	Дано Я открываю основную форму обработки "УправлениеПериодомСценарияВГрафическомВиде"
	Если появилось предупреждение тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму обработки УправлениеПериодомСценарияВГрафическомВиде"
	И Я закрываю текущее окно

Сценарий: Открытие формы обработки "УправлениеПроцессомПодготовкиОтчетности"
	Дано Я открываю основную форму обработки "УправлениеПроцессомПодготовкиОтчетности"
	Если появилось предупреждение тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму обработки УправлениеПроцессомПодготовкиОтчетности"
	И Я закрываю текущее окно

Сценарий: Открытие формы обработки "УправлениеСтатусамиОбъектов"
	Дано Я открываю основную форму обработки "УправлениеСтатусамиОбъектов"
	Если появилось предупреждение тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму обработки УправлениеСтатусамиОбъектов"
	И Я закрываю текущее окно

Сценарий: Открытие формы обработки "УрегулированиеДокументов"
	Дано Я открываю основную форму обработки "УрегулированиеДокументов"
	Если появилось предупреждение тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму обработки УрегулированиеДокументов"
	И Я закрываю текущее окно

Сценарий: Открытие формы обработки "УстановкаСоответствияСчетов"
	Дано Я открываю основную форму обработки "УстановкаСоответствияСчетов"
	Если появилось предупреждение тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму обработки УстановкаСоответствияСчетов"
	И Я закрываю текущее окно

Сценарий: Открытие формы обработки "УточнениеЗаявокНаЗакупку"
	Дано Я открываю основную форму обработки "УточнениеЗаявокНаЗакупку"
	Если появилось предупреждение тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму обработки УточнениеЗаявокНаЗакупку"
	И Я закрываю текущее окно

Сценарий: Открытие формы обработки "анлУправлениеПоставляемымиПанелями1САналитика"
	Дано Я открываю основную форму обработки "анлУправлениеПоставляемымиПанелями1САналитика"
	Если появилось предупреждение тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму обработки анлУправлениеПоставляемымиПанелями1САналитика"
	И Я закрываю текущее окно
