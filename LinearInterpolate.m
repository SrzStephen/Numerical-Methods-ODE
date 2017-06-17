function [yval] = LinearInterpolate( z )
%Linear intopolates
%need this to return the exact value at 650
%Could use polyfit interval, but this is more accurate
%When compared to the polyfit
[len,wid] = size(z)

for ii = 1:len
    if (z(ii,1) < 650) && z(ii+1,1) >650
        x1 = z(ii,1); x3 = z(ii+1,1); 
        y1 = z(ii,2); y3= z(ii+1,2);
    elseif z(ii,1) == 650
            yval = z(ii,2);
            return
    end
    

end
    yval = ((650-x1)*(y3-y1))/(x3-x1)+y1;
    
end
