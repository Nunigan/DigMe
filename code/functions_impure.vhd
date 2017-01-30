variable number : Integer := 0;
impure function Func(A : Integer) return Integer is
  variable counter : Integer;
begin
  counter := A * number;
  number := number + 1;
  return counter;
end Func;
