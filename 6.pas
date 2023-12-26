var
   filetext: text;
   a:string;
   i:integer;
begin
assign(filetext,'c:\text.txt');
rewrite(filetext);
for i:=1 to 10 do
    ...
reset(filetext);
for i:=1 to 10 do begin
    ...
    ...
end;
close(filetext);
end.