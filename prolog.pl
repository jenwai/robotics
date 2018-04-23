loop(1):- write("The value is: 1"), nl, write("yes").

loop(X):-
    X > 1,
    write("The value is: "),
    write(X),
    N is X - 1,
    nl,
    loop(N).


sum(X, X):- X < 10, write(X), write(",X"), nl.

sum(X, Y):- 
    X >= 10,
    N is mod(X,10),
    P is X//10,
    sum(P,Z),
    Y is Z + N.


go:-
    repeat,
    write("fuck"),
    read(X), Ans is sqrt(X),
    write("ans:"),
    write(Ans), nl, X==0.

member(X,[X | _]).

member(X,[_ | Tail]):- member(X, Tail).
%tail will always be a list of entity while head is a single entity 


my_conc([],L,L).
my_conc([X | L1], L2, [X | L3]):- my_conc(L1, L2, L3).
%in prolog, L = [a | [b,c]], L = [a,b,c] 
%can be used to decompose, conc(L1,L2,[a,b,c])
%
%

my_length([],0).
my_length([_ | Tail], N):- my_length(Tail, N1), N is N1+1.

add(X, L, [X | L]).

del(X, [X | Tail], Tail).
del(X, [Y | Tail], [Y | Tail1]):- del().

sublist(S, L):- conc(L1, L2, L), conc(S, L3, L2).

    



