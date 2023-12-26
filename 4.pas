program z4;

var
  K: integer;
  inputFileName, tempFileName, line: string;
  inputFile, tempFile: text;
  lineNumber: integer;
  found: boolean;

begin
  { Ввод числа K и имени файла }
  write('Введите число K: ');
  readln(K);
  write('Введите имя файла: ');
  readln(inputFileName);

  { Открыть входной файл }
  assign(inputFile, 'C:\text2.txt' + inputFileName);
  reset(inputFile);

  { Создать временный файл }
  tempFileName := 'C:\temp.txt';
  assign(tempFile, tempFileName);
  rewrite(tempFile);

  { Инициализация переменной found }
  found := False;

  { Проход по строкам входного файла }
  lineNumber := 1;
  while not eof(inputFile) do
  begin
    readln(inputFile, line);

    { Проверка номера строки }
    if lineNumber = K then
    begin
      { Вставка пустой строки }
      writeln(tempFile, '');
      found := True;
    end;

    writeln(tempFile, line);
    lineNumber := lineNumber + 1;
  end;

  { Закрыть файлы }
  close(inputFile);
  close(tempFile);

  { Удалить исходный файл }
  erase(inputFile);

  { Переименовать временный файл в исходное имя }
  rename(tempFile, inputFileName);

  { Вывод сообщений }
  if found then
    writeln('Пустая строка успешно вставлена перед строкой номер ', K, ' в файле ', inputFileName)
  else
    writeln('Строки с номером ', K, ' в файле ', inputFileName, ' не существует.');
end.