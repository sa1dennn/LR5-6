program massiv2;
var A:array[-22..93] of integer;
i,n,k,s:integer;
begin
write ('введите размерность '); readln(n);
for i:=1 to n do
    begin
      A[i]:=random(31)-15;
      write(A[i]:4);
      if A[i] mod 2 = 0 then
      begin
        s:=s+A[i];
        inc(k);
      end;
    end;
    writeln;
    writeln('Сумма чётных= ',s);
    writeln('Кол-во чётных= ',k);
    readln;
End.
