function [ Vwind ] = Vwind( x,y )
%Reference height increases by 0.01x per meter
%height referenced by the river
%only care about the real components
Vwind = real(10*((y-500+0.01*x)/(1500))^0.14);
end