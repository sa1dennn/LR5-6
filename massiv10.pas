program massiv10;
const N = 10;
var 
    a: array[1..N] of integer;
    i, k, m: byte;
begin
    randomize;
    for i:=1 to N do begin
        a[i] := random(10) - 5;
        write(a[i]:4)
    end;
    writeln;
    i := 1;
    m := N;
    while i<=m do 
        if a[i] < 0 then begin
            m := m-1;
            for k:=i to m do
                a[k] := a[k+1];
        end
        else
            i := i+1;
    for i:=1 to m do 
        write(a[i]:4);
    writeln;
end.