﻿Процедура ВыполнитьТрансляцию(Каталог) Экспорт
	
	МодульФайл 	= Новый ТекстовыйДокумент;
	МодульФайл.Прочитать(Каталог+"\Ext\ManagedApplicationModule.bsl");
	MainФайл = Новый ТекстовыйДокумент;
	MainФайл.УстановитьТекст(ПолучитьОбщийМакет("MainМакет").ПолучитьТекст());
	
	Структура = Новый Массив;
	Для Строка = 1 По МодульФайл.КоличествоСтрок() Цикл
		СодержимоеСтроки = МодульФайл.ПолучитьСтроку(Строка);
		MainФайл.ДобавитьСтроку(Синтаксис.ВыполнитьАнализ(СодержимоеСтроки,Структура));
	КонецЦикла;
	MainФайл.Записать(Каталог+"\src\main.rs");
	
КонецПроцедуры