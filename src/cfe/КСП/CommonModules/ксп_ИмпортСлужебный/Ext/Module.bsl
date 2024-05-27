﻿// Описание_метода
//
// Параметры:
//	Параметр1 	- Тип1 - 
//
// Возвращаемое значение:
//	Тип: Тип_значения
//
Функция НайтиНоменклатуру(УзелНоменклатуры) Экспорт
	
	НоменклатураГУИД = "";
	Если УзелНоменклатуры.Свойство("Ref", НоменклатураГУИД) Тогда
		Возврат Справочники.Номенклатура.ПолучитьСсылку(Новый УникальныйИдентификатор(НоменклатураГУИД));
	КонецЕсли;
		
	Возврат Неопределено;
	
КонецФункции

// ищет элемент по ГУИД в мэппинге, если там нет - в справочнике
Функция НайтиВидЦеныПоГУИД(ГУИД, ВнешняяСистема) Экспорт
	
	Если НЕ ЗначениеЗаполнено(ГУИД) Тогда
		Возврат Неопределено;
	КонецЕсли;
	
	Рез = РегистрыСведений.ксп_МэппингСправочникВидыЦен.ПоМэппингу(ГУИД, ВнешняяСистема);
	
	Если НЕ ЗначениеЗаполнено(Рез) ИЛИ НЕ ЗначениеЗаполнено(Рез.ВерсияДанных) Тогда
		Рез = Справочники.ТипыЦенНоменклатуры.ПолучитьСсылку(Новый УникальныйИдентификатор(ГУИД));
	КонецЕсли;
	
	Возврат Рез;
	
КонецФункции  

Функция НайтиВидЦены(Узел, ВнешняяСистема) Экспорт
	
	ГУИД = "";
	узел.Свойство("Ref", ГУИД);
	
	Если НЕ ЗначениеЗаполнено(ГУИД) Тогда
		Возврат Неопределено;
	КонецЕсли;  
	
	Возврат НайтиВидЦеныПоГУИД(ГУИД, ВнешняяСистема);
		
КонецФункции


//// Описание_метода
////
//// Параметры:
////	Параметр1 	- Тип1 - 
////
//// Возвращаемое значение:
////	Тип: Тип_значения
////
Функция НайтиВалюту(УзелВалюты) Экспорт
	
	ВалютаКод = "";
	Если УзелВалюты.Свойство("currencyCode", ВалютаКод) Тогда
		Возврат Справочники.Валюты.НайтиПоКоду(ВалютаКод);
	КонецЕсли;
		
	Возврат Неопределено;

КонецФункции

//// Описание_метода
////
//// Параметры:
////	Параметр1 	- Тип1 - 
////
//// Возвращаемое значение:
////	Тип: Тип_значения
////
Функция НайтиПроект(УзелПроект, ВнешняяСистема) Экспорт
	
	ПроектГУИД = "";
	Если УзелПроект.Свойство("Ref", ПроектГУИД) Тогда
		
		Рез = РегистрыСведений.ксп_МэппингСправочникПроекты.ПоМэппингу(ПроектГУИД, ВнешняяСистема);
		Если ЗначениеЗаполнено(Рез) Тогда
			Возврат Рез;
		Иначе 
			Возврат Справочники.Проекты.ПолучитьСсылку(Новый УникальныйИдентификатор(ПроектГУИД));
		КонецЕсли;
		
	КонецЕсли;
		
	Возврат Неопределено;

КонецФункции

// Описание_метода
//
// Параметры:
//	Параметр1 	- Тип1 - 
//
// Возвращаемое значение:
//	Тип: Тип_значения
//
Функция НайтиПодразделение(УзелПодразделение, ВнешняяСистема) Экспорт
	
	ПодразделениеГУИД = "";
	Если УзелПодразделение.Свойство("Ref", ПодразделениеГУИД) Тогда
		
		Рез = РегистрыСведений.ксп_МэппингСправочникПодразделения.ПоМэппингу(ПодразделениеГУИД, ВнешняяСистема);
		Если ЗначениеЗаполнено(Рез) Тогда
			Возврат Рез;
		Иначе 
			Возврат Справочники.Подразделения.ПолучитьСсылку(Новый УникальныйИдентификатор(ПодразделениеГУИД));
		КонецЕсли;
		
	КонецЕсли;
		
	Возврат Неопределено;

КонецФункции

Функция НайтиКонтрагента(Узел, ВнешняяСистема) Экспорт

	Контрагент = Неопределено;
	ГУИД = "";
	Если узел.Свойство("Ref", ГУИД) Тогда
		Контрагент = Справочники.Контрагенты.ПолучитьСсылку(Новый УникальныйИдентификатор(ГУИД));
	КонецЕсли;
	
	Возврат Контрагент;
	
КонецФункции

// ищет элемент по ГУИД в мэппинге, если там нет - в справочнике
Функция НайтиВидНоменклатурыПоГУИД(ГУИД, ВнешняяСистема) Экспорт
	
	Если НЕ ЗначениеЗаполнено(ГУИД) Тогда
		Возврат Неопределено;
	КонецЕсли;
	
	Рез = РегистрыСведений.ксп_МэппингСправочникВидыНоменклатуры.ПоМэппингу(ГУИД, ВнешняяСистема);
	
	Если НЕ ЗначениеЗаполнено(Рез) ИЛИ НЕ ЗначениеЗаполнено(Рез.ВерсияДанных) Тогда
		Рез = Справочники.ВидыНоменклатуры.ПолучитьСсылку(Новый УникальныйИдентификатор(ГУИД));
	КонецЕсли;
	
	Возврат Рез;
	
КонецФункции

// ищет элемент по ГУИД в мэппинге, если там нет - в справочнике
Функция НайтиОрганизацию(Узел, ВнешняяСистема) Экспорт

	ГУИД = "";
	узел.Свойство("Ref", ГУИД);
	
	Если НЕ ЗначениеЗаполнено(ГУИД) Тогда
		Возврат Неопределено;
	КонецЕсли;
	
	Рез = РегистрыСведений.ксп_МэппингСправочникОрганизации.ПоМэппингу(ГУИД, ВнешняяСистема);
	
	Если НЕ ЗначениеЗаполнено(Рез) ИЛИ НЕ ЗначениеЗаполнено(Рез.ВерсияДанных) Тогда
		Рез = Справочники.Организации.ПолучитьСсылку(Новый УникальныйИдентификатор(ГУИД));
	КонецЕсли;
	
	Возврат Рез;
	
КонецФункции





