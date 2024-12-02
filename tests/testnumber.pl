% tests the lists of digits correspond to its respective numeric value
x_warmup3(N5) :- 
  x_unit(number([], 0), 0, N1) ,
  x_unit(number([9], 9), N1, N2) ,
  x_unit(number([4 ,7], 47), N2, N3) ,
  x_unit(number([2 ,5 ,4], 254), N3, N4) ,
  x_unit(number([9 ,8 ,7 ,6], 9876), N4, N5) .

x_unit(F, M, N) :- 
    call(F) -> N is M + 1; N is M.
