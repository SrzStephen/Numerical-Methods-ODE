function [ yest ] = yval2( T )
t0=0; %initial time at 0
tf=T; %time before parachute opens
[ttf,InitialConds] = VariablesNeeded(); %time to ensure that you reach destination
[t,z] = ode45(@derv,[t0 tf],InitialConds); % stage 1 before parachute opens
[t2,z2] = ode45(@dervopen,[tf ttf],z(end,:)); % stage 2 parachute opened
yest= LinearInterpolate(z2);
end