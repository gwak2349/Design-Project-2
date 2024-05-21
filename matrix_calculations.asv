a = 9.68e-7;
b= 0.00198;
c = 3.87e-6;

A = [0,0,1,0;0,0,0,1;0,a,b,0;c,0,0,-b];
B = [0;0;1;1];
C = [1,1,0,0];

A2 = mtimes(A,A);
A3 = mtimes(A2,A);

% W = [B,mtimes(A,B),mtimes(A2,B),mtimes(A3,B)];

W = ctrb(A, B);
r = rank(W);

controllability = ctrb(A,B);
disp(r)

a1 = 0;
a2 = 3.92e-6;
a3 = 0;
a4 = -3.707e-12;

