var
  inputText, outputText: Text;
  currentNumber, minNumber, maxNumber: Integer;

begin
  Assign(InputText, 'C:\input.txt');
  Reset(inputText);
  
  Assign(outputText, 'output.txt');
  Rewrite(outputText);
  
  Readln(inputText, currentNumber);
  minNumber := currentNumber;
  maxNumber := currentNumber;

  while not EOF(inputText) do
  begin
    Readln(inputText, currentNumber);
    
    if currentNumber < minNumber then
      minNumber := currentNumber;
      
    if currentNumber > maxNumber then
      maxNumber := currentNumber;
  end;
  
  Writeln(outputText, 'Минимальное число: ', minNumber);
  Writeln(outputText, 'Максимальное число: ', maxNumber);
  Close(inputText);
  Close(outputText);
end.