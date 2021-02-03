clear
clc

apples = orchard();
fprintf("The maximum number of apples is %i apples.", apples(2));

% One tree produces 60 apples
% We have 10 trees, every time we add a tree, we lose 1 apple per tree
% How many trees can we add before we start losing apples?

function [y, val, idx] = orchard() %#ok<*STOUT,*INUSD>
    
    x1 = 1:1:10; % from 1 to 10, the number of apples is increasing linearly
    y1 = 60.*x1;
    plot(x1, y1);
    hold on % for piecewise function
    
    x = 10:1:60;
    y = x.*(70-x);
    [val, idx] = max(y);
    
    plot(x,y);
    
    plot(x(idx), y(idx), "r*");
    

end