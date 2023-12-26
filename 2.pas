program z2;

var
  N, K, i, j: integer;
  fileHandle: TextFile;
  line: string;

begin
  // Вводим значения N и K
  write('Введите число N: ');
  readln(N);
  write('Введите число K: ');
  readln(K);

  // Открываем файл для записи
  assign(fileHandle, 'C:\output.txt'); // Замените путь к рабочему столу
  rewrite(fileHandle);

  // Записываем N строк с K звездочками в файл
  for i := 1 to N do
  begin
    line := '';
    for j := 1 to K do
    begin
      line := line + '*';
    end;
    writeln(fileHandle, line);
  end;

  // Закрываем файл
  close(fileHandle);

  writeln('Файл успешно создан!');
end.