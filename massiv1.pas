program massiv1;
var
  i, N: integer;
  A: array[1..100] of integer;
begin
  writeln('Массив случайных чисел');
  randomize;
  for i := 1 to 9 do
  begin
    a[i] := -20 + random(23);
    write(a[i], ' ')
  end;
  writeln;
  writeln('Новый массив:');
  writeln;
  for i := 1 to 9 do
  begin
    if (a[i] < 0) then a[i] := sqr(a[i]);
    write(a[i], ' ')
  end;  
end.