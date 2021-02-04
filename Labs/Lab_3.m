clear
clc

%
% Author: Josh Carlile
% Class: Mr. Hogan's ENGR 240
% Date: 1/31/2021
%

%% QUESTION 1
% Write a function and prompt the user for the length and width of a
% rectangle, and return its area with two decimal places. Put comments in
% the function.

area();

%% QUESTION 2
% Write a function that will take in parameters for the number of atoms of
% a particular element and its atomic weight and return the atomic weight
% of the compound.

array = ["Oxygen"   15.9994     2;
         "Hydrogen" 1.0079      2];
     
fprintf("The weight of hydrogen peroxide is %.2f amu\n", amu(array));

%% QUESTION 3
% Write a function that will calculate the volume of a hollow sphere

% See volume(r1, r2)

%% QUESTION 4
% Wing loading is the airplane's weight divided by wing area. Write a
% function that will prompt the user for the weight in kg, and wing area in
% m^2. Return wing loading in kg / m^2

% See wingLoading ()d

%% QUESTION 5
% The fluid flow rate in the metric system is usually measured in m^3 / s.
% A cubic foot per second is equal to .0028 cubic meters per second. Write
% a function that recieves flow rate in m^3 / s and returns flow rate in
% ft^3 / s.

metersPerSecond = 15.20;

flowConversion(metersPerSecond);


%% QUESTION 6

foodCost(100000);

%% QUESTION 7
% Write a function that takes a temperature in celcius. Ask the user if
% they want the temperature in Fahrenheit or Kelvin and convert. Use a
% switch statement.

resultant = convertTemp();


%% FUNCTION DEFINITIONS

function area ()
% Returns the area, a, of a rectangle of length and width.
    
    length = input("Enter the length of the rectangle: ");
    if (~isa(length, 'numeric'))
        warning("Length not a number. Setting length = 0.");
        length = 0;
    end
    
    width = input("Enter the width of the rectangle: ");
    if (~isa(width, 'numeric'))
        warning("Width not a number. Setting width = 0.");
        width = 0;
    end
    
    fprintf("Area of rectangle with width: %.1f and length: %.1f has area %.2f\n\n", length, width, length * width);
end


function weight = amu (atom_info)
% Receive a matrix, atom_info = ['Element Name', Element Weight (amu),
% Quantity], as a parameter and return the weight of the compound for that
% element.

    weight = 0;
    
    for i = 1:size(atom_info)
        weight = weight + ( double(atom_info(i,2)) * double(atom_info(i,3)) );
    end
    
    if ( ~isa(atom_info(1), 'string' ) || ~isa(atom_info(2:3), 'numeric') )
        warning("Array atom_info should be in the form [String, Number, Number]");
    end
end

function volume = volHollowSphere (r0, r1)
    volume = (4*pi / 3) * (r1^3 - r0^3);
end

function r = wingLoading ()
    % Weight in kg, wingArea in m^2, r in kg / m^2
    
    % Prompt user for airplane weight in kg
    weight = input("Enter the airplane weight in kg: ");
    
    
    r = weight / wingArea;
    % Matlab stores values to full machine precision, meaning x.yzq000000000000000000...
    % Any display of simply x.yzq is just a display preference, and not the
    % actual stored value.
end

function flowConversion (meters)
% Converts flow rate from meters cubed per second to feet cubed per second
    fprintf("\nThe flow rate is %.2f m^3/s\n", meters);
    fprintf("A flow rate of %.2f feet cubed per second is equal to %.2f feet cubed per second\n\n", meters, meters / .0028);
end

function foodCost (annualIncome)
    fprintf("With an annual income of $%.2f, you should be spending between $%.2f and $%.2f on food each year.\n", annualIncome, annualIncome * .08, annualIncome * .1);
    fprintf("That translates to a monthly food expense between $%.2f and $%.2f\n", annualIncome*.08 / 12, annualIncome*.1 / 12);
end

function resultTemp = convertTemp ()
    resultTemp = 0;

    tempC = input("Enter a temperature in Celcius: ");
    if isnumeric(tempC) ~= true
       tempC = 0;
    end
    
    conversion = input("Convert to Kelvin or Fahrenheit? K/F [F]: ", 's');
    if isstring(conversion) || ischar(conversion)
        
    end
    
    switch conversion
        case 'F'
            resultTemp = (9/5) * tempC + 32;
            fprintf("%.1f C is %.1f F\n", tempC, resultTemp);
        case 'K'
            resultTemp = tempC + 273.15;
            fprintf("%.1f C is %.1f K\n", tempC, resultTemp);
        otherwise
            resultTemp = 0;
            fprintf("Error. Please enter K for Kelvin, or F for Fahrenheit.");
    end
end

