format long

a = -1.86e-6;
b= -6.77e-4;
c = 7.26e-6;
d = 1.76e-3;
e = 3.31e-6;

A = [0,0,1,0;0,0,0,1;a,0,0,b;0,c,d,0];
B = [0;0;e;e];
C = [1,0,0,0];

C2 = [0,1,0,0];

A2 = mtimes(A,A);
A3 = mtimes(A2,A);

W = ctrb(A1, B1);
r = rank(W);
disp(W)
disp(r)

cp = charpoly(A);
disp(cp)

e = eig(A);

% disp(e)


f = -4.21e-6;
g = -1.35e-11;

At = [0,f,0,g;1,0,0,0;0,1,0,0;0,0,1,0];
Bt = [1;0;0;0];

cpt = charpoly(At);
disp(cpt)
Wt = ctrb(At,Bt);

T = Wt\W;
disp(T)
Kt = [0,0,0,1.35e-4];
K = Kt*T;
% K = mtimes(Kt,T);
disp(K)

k = -1/(C/(A-B*K)*B);
disp(k)

k2 = -1/(C2/(A-B*K)*B);

disp(k2)