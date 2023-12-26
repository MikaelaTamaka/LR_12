Program z3;
var
  filetext: Text;
  s: String;
begin
  // Вводим строку S
  Write('Введите строку S для добавления в файл: ');
  Readln(s);

  Assign(filetext, 'c:\text1.txt');
  Append(filetext);

  // Добавляем строку S в конец файла
  Writeln(filetext, s);

  Close(filetext);

  Writeln('Строка успешно добавлена в файл.');
end.