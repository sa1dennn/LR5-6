program massiv13;
const n = 5;
var Z : array[1..n] of integer;
     i, max, min, tmp : integer;
begin
  for i := 1 to n do
    readln(Z[i]);
  min := 1;
  max := 1;
  for i := 1 to n do
  begin
    if Z[i] > Z[max] then
      max := i;
    if Z[i] < Z[min] then
      min := i;
  end;
  tmp := Z[max];
  Z[max] := Z[min];
  Z[min] := tmp;
  for i := 1 to n do
    writeln(Z[i]);
  readln;
end.