clear
clc

choice = input ('Do you want to see a contour plot, mesh, or surface? [C/M/S]: ', 's');

x = linspace (-pi, pi, 20);
y = linspace (-10, 16, 30);

[XX, YY] = meshgrid (x, y);

ZZ = tan (sin (XX.^2) - cos (YY.^2));


switch choice
    case 'C'
        contour (XX, YY, ZZ);
    case 'M'
        mesh (XX, YY, ZZ);
    case 'S'
        surface (XX, YY, ZZ);
    otherwise
        warning ('No input received. Showing all 3');
        
        subplot (131);
        contour (XX, YY, ZZ);
        title ('Contour Plot');
        
        subplot (132);
        mesh (XX, YY, ZZ);
        title ('Mesh Plot');
        
        subplot (133);
        surface (XX, YY, ZZ);
        title ('Surface Plot');
end