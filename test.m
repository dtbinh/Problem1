% syms x1(t) x2(t) x3(t) 
% eqn1 = diff(x1) == x1*((x2 - x1) + (x3 - x1) );
% eqn2 = diff(x2) == x2*((x1 - x2) + (x3 - x2) );
% eqn3 = diff(x3) == x3*((x1 - x3) + (x2 - x3) );
% 
% S = dsolve(eqn1, eqn2, eqn3);




syms x1(t) x2(t) x3(t) 
eqn1 = diff(x1) == x1*x1;
eqn2 = diff(x2) == x2*x2;
eqn3 = diff(x3) == x3*x3;

S = dsolve(eqn1, eqn2, eqn3);
