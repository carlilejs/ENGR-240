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
rectArea = area(length, width);

fprintf("A rectangle of length %.2f and width %.2f has an area of %.2f\n", length, width, rectArea);

%% QUESTION 2
array = ["Oxygen"   15.9994     2;
         "Hydrogen" 1.0079      2];
     
fprintf("The weight of hydrogen peroxide is %.2f amu\n", amu(array));

%% QUESTION 3

% See volume(r1, r2)

%% QUESTION 4

% See wingLoading (weight, wingArea)

%% QUESTION 5

foodCost(100000);

%% FUNCTION DEFINITIONS

function a = area (length, width)
% Returns the area, a, of a rectangle of length and width.

    a = length * width;
end


function weight = amu (atom_info)
    weight = 0;
    
    for i = 1:size(atom_info)
        weight = weight + ( double(atom_info(i,2)) * double(atom_info(i,3)) );
    end
end

function volume = volHollowSphere (r0, r1)
    volume = (4*pi / 3) * (r1^3 - r0^3);
end

function r = wingLoading (weight, wingArea)
    % Weight in kg, wingArea in m^2, r in kg / m^2
    r = weight / wingArea;
    % Matlab stores values to full machine precision, meaning x.yzq000000000000000000...
    % Any display of simply x.yzq is just a display preference, and not the
    % actual stored value.
end

function foodCost (annualIncome)
    fprintf("With an annual income of $%.2f, you should be spending between $%.2f and $%.2f on food each year.\n", annualIncome, annualIncome * .08, annualIncome * .1);
    fprintf("That translates to a monthly food expense between $%.2f and $%.2f\n", annualIncome*.08 / 12, annualIncome*.1 / 12);
end

