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
	
	Если ТипЗнч(Источник) = Тип("СправочникОбъект.ФранчайзинговыеМагазины") Тогда
		// добавим еще контрагента к выгрузке (Владельца)
		РегистрыСведений.ксп_ПланОбменаЕРП.ЗарегистрироватьИзменения(Источник.Владелец);
	КонецЕсли;
	
КонецПроцедуры
