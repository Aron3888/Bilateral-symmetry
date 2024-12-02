% Main entry point
main
  :- generator(X), selector(X), write(X).

% Convert a list of digits to a number
number(XS, N) 
  :- number_loop(XS, 0, N).

number_loop([], N, N).
number_loop([X|XS], Y, N) 
  :- YS is Y*10 + X,
     number_loop(XS, YS, N).
     
% Generate valid partitions of digits
generator([X, XS]) 
  :- permutation([1,2,3,4,5,6,7,8,9], Digits),
     append(X, XS, Digits),
     X \= [], XS \= [].

% Select partitions meeting criteria
selector([M, N]) 
  :- number(M, MS),
     number(N, NS),
     Pr is MS*NS,
     number_chars(Pr, Z),
     reverse(Z, Z),
     Pr >= 40000000,
     Pr < 50000000,
     Min is min(MS, NS),
     Min mod 10 =:= 3,
     Sum is MS + NS + 100,
     number_chars(Sum, Y),
     reverse(Y, Y).

% Reverses a list
reverse([], []).
reverse([X|XS], R) 
  :- reverse(XS, W),
     append(W, [X], R).
