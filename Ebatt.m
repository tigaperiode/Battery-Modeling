%% Specification
DoD = 0:0.001:0.99; % depth of discharge
Nc = 6; %% number of cells
Nc1 = 1; %% number of cells (per cell)

bp.C_Ah = 93.6; % battery capacity
bp.SOC_x_pct = [10 12 15 20 25 85 92 95 98 100]; % battery state of charge axis
bp.U_y_V = [350 370 385 393 395 405 409 415 430 450]; % battery voltage map
bp.UDC_V = 400; % battery nominal voltage
bp.SOC0_pct = 100; % battery initial state of charge

% Electrical current generator (sinus)
I0_A = 150; % current amplitude
omega_radps = 0.001; % current frequency
simTime_s = 2*pi/omega_radps; % simulation time
%% Per Cell Equation
a1 = (2.15-(2.15-2.00)*DoD)*Nc1; % lead acid
b1 = (-8.2816*DoD.^7+23.5749*DoD.^6-30*DoD.^5+23.7053*DoD.^4-12.5877*DoD.^3+4.1315*DoD.^2-0.8658.*DoD+1.37)*Nc1;
%% 6 Cell Equation
a = (2.15-(2.15-2.00)*DoD)*Nc; % lead acid
b = (-8.2816*DoD.^7+23.5749*DoD.^6-30*DoD.^5+23.7053*DoD.^4-12.5877*DoD.^3+4.1315*DoD.^2-0.8658.*DoD+1.37)*Nc;