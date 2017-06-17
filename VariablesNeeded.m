function [ ttf,InitialConds  ] = VariablesNeeded(  )
%Allows variables needed to be set once
%takes no inputs, returns the vars needed
ttf = 60;  %Expecting the entire fall to last no longer than 100 seconds
%Confirmation with s = ut+1/2at^2
Vout = 53.3376;
Angle = 23.0642;

InitialConds = [0;2000;cosd(Angle)*Vout;sind(Angle)*Vout];


end

