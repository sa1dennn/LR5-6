program massiv5;
const
 n = 10;
type
 TArr = array[1..n] of integer;
var
 arr1, arr2: TArr;
 
procedure Gen(var arr: TArr);
var
 i: integer;
begin
 writeln;
  for i:=1 to n do
   arr[i]:=random(100);
end;
 
procedure Print(var arr: TArr);
var
 i: integer;
begin
  for i:=1 to n do
   write(arr[i], ' ');
 writeln;
end;
 
function Summa(arr: TArr): integer;
var
 i, summ: integer;
begin
 summ:=0;
  for i:=1 to n do
   summ:=summ+arr[i];
 result:=summ;
end;
 
begin
 writeln('Массив 1: ');
 Gen(arr1);
 Print(arr1);
 writeln('Массив 2: ');
 Gen(arr2);
 Print(arr2); 
 writeln; 
  if Summa(arr1) > Summa(arr2) then
   Print(arr1)
    else Print(arr2);
end.