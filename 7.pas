function CountDivisors(num: Integer): Integer;
var
  i, cnt: Integer;
begin
  cnt := 0;
  for i := 1 to num do
  begin
    if num mod i = 0 then
      Inc(cnt);
  end;
  Result := cnt;
end;

function SumOfNumbersWithFiveDivisors(n: Integer): Integer;
var
  i, sum: Integer;
begin
  sum := 0;
  for i := 1 to n do
  begin
    if CountDivisors(i) = 5 then
      Inc(sum, i);
  end;
  Result := sum;
end;

var
  input, output: Text;
  n, result: Integer;
begin
  Assign(input, 'z3.in');
  Assign(output, 'z3.out');
  Reset(input);
  ReadLn(input, n);
  Close(input);
  
  result := SumOfNumbersWithFiveDivisors(n);
  
  Rewrite(output);
  WriteLn(output, result);
  Close(output);
end.