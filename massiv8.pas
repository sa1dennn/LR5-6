program massiv8;
var i, iMaxVal: integer;
var a: array[1..20] of integer;
var b: array[0..10] of integer;
begin
// Инициализация массивов и расчёт среднего
   Writeln('Сформированный массив:');
   for i:=1 to 20 do
   begin
        a[i] := Random(11);
        Writeln(i, ') ', a[i]);
   end;
   for i:=0 to 10 do b[i] := 0;
// Подсчёт элементов
   for i:=1 to 20 do b[a[i]] := b[a[i]] + 1;
 
// Определение наиболее часто встречающихся элементов
   for i:=0 to 10 do if b[i] > iMaxVal then iMaxVal := b[i];
 
// Вывод результатов
   Writeln('Количество повторений: ', iMaxVal);
   for i:=0 to 10 do if b[i] = iMaxVal then Writeln('Повторяющееся значение: ', i);
end.