package Unit2 is
   function Sub (A, B : Integer) return Integer;
   pragma Export (C, Sub, "sub");
end Unit2;
