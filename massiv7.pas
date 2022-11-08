begin
  var a:=ArrRandom(ReadInteger('Введите размер массива: '),-20,20); a.Println;
  var s:=1;
  var max:=0;
  for var i:=0 to a.Length-2 do
   begin
    if a[i]<a[i+1]
      then s+=1
      else 
        if s>max
          then max:=s
          else s:=1;
   end;
  Println('Максимальная длина неубывающего участка-> ',max);
  s:=0;
  max:=0;
  var maxi:=0;
  for var i:=0 to a.Length-1 do
   begin
     for var j:=0 to a.Length-1 do
       if a[i]=a[j] then s+=1;
     if s>max then begin max:=s; maxi:=i; end;
     s:=0;
   end;
  If max=1 then Println('Числа повторяются одинаково')
  else Println('Наиболее повторяющееся число->',a[maxi]);
end.