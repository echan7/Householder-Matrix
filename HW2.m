%Q2
A = [0 21 60 40 5 82; 21 0 52 70 12 98; 60 52 0 18 89 95; 40 70 18 0 70 81; 5 12 89 70 0 88; 82 98 95 81 88 0]
[V, D] = eig(A)
[V, D] = eig(A'*A)

%Q5
A = [1 1 2 -5 6; 2 5 -1 -9 2; 2 1 -1 3 6; 1 3 2 7 8; 5 6 7 8 9]
b = [3; -3; -11; -5; 10]

x = lin_solve(A, b)
x = A\b

D = [4 7 3 5 6; 2 3 8 7 9; 2 9 1 3 5; 7 7 7 2 1; 6 8 -2 3 4]
c = [2; 9; 7; 3; 4]

y = lin_solve(D, c)
y = D\c