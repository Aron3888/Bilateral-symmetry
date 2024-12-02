% tests whether the selector can find the correct answer
x_selector( N10 ) :-
  x_unit(selector( [[1 ,7 ,6 ,9 ,5 ,4 ,8] ,[2 ,3]] ) , 0 , N1 ) ,
  x_unit(selector( [[2 ,3] ,[1 ,7 ,6 ,9 ,5 ,4 ,8]] ) , N1 , N2 ) ,
  x_unit(\+ selector( [[1 ,7] ,[9 ,6 ,4 ,8 ,3 ,5 ,2]] ) , N2 , N3 ) ,
  x_unit(\+ selector( [[1 ,7] ,[4 ,2 ,8 ,3 ,5 ,2 ,6]] ) , N3 , N4 ) ,
  x_unit(\+ selector( [[1 ,7 ,6 ,9 ,5 ,2 ,8] ,[4 ,3]] ) , N4 , N5 ) ,
  x_unit(\+ selector( [[] ,[6 ,9 ,5 ,2 ,8 ,4 ,3 ,1 ,7]]) , N5 , N6 ) ,
  x_unit(\+ selector( [[5 ,3 ,1 ,4 ,9] ,[8 ,2 ,6 ,7]] ) , N6 , N7 ) ,
  x_unit(\+ selector( [[9 ,1 ,5 ,3 ,4] ,[7 ,6 ,8 ,2]] ) , N7 , N8 ) ,
  x_unit(\+ selector( [[6 ,2 ,8 ,9] ,[5 ,4 ,3 ,1 ,7]] ) , N8 , N9 ) ,
  x_unit(\+ selector( [[9 ,7 ,3 ,8 ,2 ,1 ,4 ,6 ,5] ,[]]) , N9 , N10 ) .

x_unit(F, M, N) :- 
    call(F) -> N is M + 1; N is M.
