function [ dMatrix ] = dervopen( t,Matrix )
%consts needed
m = 90; c2 = 0.54; % air resistance constant before parachute 
g = 9.81;
%passing through params as matrix to make life easier, decompose for
%readability
x = Matrix(1);y = Matrix(2);
Vx = Matrix(3);Vy = Matrix(4);
%Accelerations
Ax = -c2/m * sqrt((Vx-Vwind(x,y))^2+Vy^2)* (Vx-Vwind(x,y));
Ay = -c2/m * sqrt((Vx-Vwind(x,y))^2+Vy^2)*(Vy) - g ;
dMatrix = [Vx;Vy;Ax;Ay];
end