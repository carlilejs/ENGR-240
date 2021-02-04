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

area ();

%% QUESTION 2
% Write a function that will take in parameters for the number of atoms of
% a particular element and its atomic weight and return the atomic weight
% of the compound.

array = ["Oxygen"   15.9994     2;
         "Hydrogen" 1.0079      2];
     
fprintf("The weight of hydrogen peroxide is %.2f amu\n\n", amu (array));

%% QUESTION 3
% Write a function that will calculate the volume of a hollow sphere

r0 = 3; % inner radius
r1 = 5; % outer radius

volume = volHollowSphere (r0, r1); % volume of sphere with inner radius r0, and outer radius r1
fprintf("Volume of hollow sphere with inner radius: %.1f, and outer radius: %.1f, is %.2f\n\n", r0, r1, volume);

%% QUESTION 4
% Wing loading is the airplane's weight divided by wing area. Write a
% function that will prompt the user for the weight in kg, and wing area in
% m^2. Return wing loading in kg / m^2

loading = wingLoading ();
fprintf("Wing loading is %.2f kg / m^2\n\n", loading);

%% QUESTION 5
% The fluid flow rate in the metric system is usually measured in m^3 / s.
% A cubic foot per second is equal to .0028 cubic meters per second. Write
% a function that recieves flow rate in m^3 / s and returns flow rate in
% ft^3 / s.

metersPerSecond = 15.20;

flowRate = flowConversion (metersPerSecond);


%% QUESTION 6
% On average, people spend 8% to 10% of their income on food. Write a
% function that will prompt the user for annual income and print the range
% of money spent on food annually, as well as monthly.

foodCost ();

%% QUESTION 7
% Write a function that takes a temperature in celcius. Ask the user if
% they want the temperature in Fahrenheit or Kelvin and convert. Use a
% switch statement.

resultant = convertTemp();


%% FUNCTION DEFINITIONS

function area ()
% Prints the area, a, of a rectangle of length and width.
    
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


function [weight] = amu (atom_info)
% Receive a matrix, atom_info = ['Element Name', Element Weight (amu),
% Quantity], as a parameter and return the weight of the compound for that
% element.

    weight = 0;
    
    for i = 1:size(atom_info)
        weight = weight + ( double(atom_info(i,2)) * double(atom_info(i,3)) );
    end
    
    if ( ~isa(atom_info(1), 'string' ) || ~isa(atom_info(2:3), 'numeric') )
        warning("Array atom_info should be in the form [String, Number, Number]\n");
    end
end

function volume = volHollowSphere (r0, r1)
    volume = (4*pi / 3) * (r1^3 - r0^3);
end

function [loading] = wingLoading ()
    % Returns wing loading, loading, of airplane with weight in kg, and
    % wingArea in m^2
    % Data is user inputted, and unchecked for error.
    
    % Prompt user for airplane weight in kg
    weight = input("Enter the airplane weight in kg: ");
    wingArea = input("Enter the area of the wing in m^2: ");
    
    try
        loading = weight / wingArea;
    catch
        loading = 0;
        warning("Must enter weight [kg], wingArea [m^2]. Returning 0;");
    end
    % Matlab stores values to full machine precision, meaning x.yzq000000000000000000...
    % Any display of simply x.yzq is just a display preference, and not the
    % actual stored value.
end

function [convertedFlowRate] = flowConversion (flowRate)
% Converts flow rate from meters cubed per second to feet cubed per second
    convertedFlowRate = flowRate / .0028;

    fprintf("The flow rate is %.2f m^3/s\n", flowRate);
    fprintf("A flow rate of %.2f m^3 / s is equal to %.2f ft^3 / s\n\n", flowRate, convertedFlowRate);
end

function foodCost ()
    income = input ("Enter your annual income in USD: ");

    fprintf("With an annual income of $%.2f, you should be spending between $%.2f and $%.2f on food each year.\n", income, income*.08, income*.1);
    fprintf("That translates to a monthly food expense between $%.2f and $%.2f\n\n", income*.08 / 12, income*.1 / 12);
end

function resultTemp = convertTemp ()
    resultTemp = 0;

    tempC = input("Enter a temperature in Celcius: ");
    if isnumeric(tempC) ~= true
       tempC = 0;
    end
    
    conversion = input("Convert to Kelvin or Fahrenheit? K/F [F]: ", 's');
    
    switch conversion
        case 'F'
            resultTemp = (9/5) * tempC + 32;
            fprintf("%.1f C is %.1f F\n", tempC, resultTemp);
        case 'K'
            resultTemp = tempC + 273.15;
            fprintf("%.1f C is %.1f K\n", tempC, resultTemp);
        otherwise
            warning("Unknown input. Defaulting to fahrenheit.");
            
            resultTemp = (9/5) * tempC + 32;
            fprintf("%.1f C is %.1f F\n", tempC, resultTemp);
    end
end

