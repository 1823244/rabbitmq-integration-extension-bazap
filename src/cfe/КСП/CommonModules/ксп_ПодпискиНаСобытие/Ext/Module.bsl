﻿Процедура ксп_ПриЗаписиДокументаПриЗаписи(Источник, Отказ) Экспорт

	Если Источник.обменДанными.Загрузка = Истина Тогда
		Возврат;
	КонецЕсли;

	РегистрыСведений.ксп_ПланОбменаЕРП.ЗарегистрироватьИзменения(Источник.Ссылка);
	
	
	
КонецПроцедуры

Процедура ксп_ПриЗаписиСправочникаПриЗаписи(Источник, Отказ) Экспорт
	
	Если Источник.обменДанными.Загрузка = Истина Тогда
		Возврат;
	КонецЕсли;
	
	РегистрыСведений.ксп_ПланОбменаЕРП.ЗарегистрироватьИзменения(Источник.Ссылка);
	
КонецПроцедуры
