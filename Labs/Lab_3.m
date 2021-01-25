clear
clc

%
% Author: Josh Carlile
% Class: Mr. Hogan's ENGR 240
% Date: 1/31/2021
%

%% QUESTION 1

length = 15;
width = 7;
rect_area = area(length, width);

fprintf("A rectangle of length %.2f and width %.2f has an area of %.2f\n", length, width, rect_area);

%% QUESTION 2
array = ["Oxygen"   15.9994     2;
         "Hydrogen" 1.0079      2];
     

     
%% FUNCTION DEFINITIONS

function a = area (length, width)
% Returns the area, a, of a rectangle of length and width.

    a = length * width;
end


function weight = amu (atom_info)
    weight = 0;
    
    for i = 1:size(atom_info)
        
    end
end