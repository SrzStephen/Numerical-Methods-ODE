clear all;
clc;
close all;
[ttf,Initialconds] = VariablesNeeded();
Targetx = 650; %650m away
Targety = 500-650*.01; %Accounts for river rise
PosErr = @(t) Targety-yval2(t);
%initing smallest ints
x= 1;
 xx = 1:650;
 dx=0.01;
 tol = 0.001;
 plot(650,Targety, 'b x');
 plot(xx,500-xx*.01, 'r-')
for ii=0:30
 [t,z] = ode45(@derv,[0 x],Initialconds);
 [t2,z2] = ode45(@dervopen,[x ttf],z(end,:));
 hold on
 plot(z(:,1),z(:,2));
 plot(z2(:,1), z2(:,2));
ylim([Targety 2500]);
%%Things to work
x0 = x; f0 = PosErr(x0);
 x0 = x + dx; fx = PosErr(x0);(x0);
 dfx = (fx-f0)/dx;
 A = dfx-PosErr(x0);
 x = x + dx;
 dx = (-A\f0-dx);
 if (norm(dx) < tol );
 fprintf(' Timing of parachute = %f %f\n', x)
 return;
 end
 
 
end
