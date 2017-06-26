%% Pranav Karra, 06/13/17, ENGR 108, Project
%% Matlab for Engineers, 4th Edition
clear, clc, format short, format compact
%% Electrical Engineering: DC circuit analysis
 
resistor_values = [1450,0, -200,-500;
        0, 2000, 1000,500;
        -200, 1000, 1450,0;
        -500,+500,0,1100];
voltage = [9;9;0;0];
I = (resistor_values\voltage)

%% Including a 5th loop that is the outermost to check answer
resistor_values = [1450,0, -200,-500,0;
        0, 2000, 1000,500,0;
        -200, 1000, 1450,0,0;
        -500,+500,0,1100,0;
        0,0,0,0,1600];
voltage = [9;9;0;0;0];
I5 = (resistor_values\voltage)
%% 
resistor_values = [1450,0,-200,-500;
    0,2000,-1000,-500;
    -200,-1000,1450,0;
    -500,-500,0,1100];
voltage = [-9;9;0;0];
I = (resistor_values\voltage)
%% Including a 5th loop that is the outermost loop to check the above answer
resistor_values = [1450,0,-200,-500,0;
    0,2000,-1000,-500,0;
    -200,-1000,1450,0,0;
    -500,-500,0,1100,0
    0,0,0,0,1600];
voltage = [-9;9;0;0;0];
I = (resistor_values\voltage)
