function [J] = obj(phi, fb, constants)

% Assign constants
[q, ~, vp, a, b] = constants{:};

% fp
fp = vp * phi;

% fs
fs = 1*(fb + fp);   %instead of 1 use 202.6 for example (1)

% Delay function l
l = a .* fs + b;

% Social cost J1
J1 = fs .* l;
J1 = sum(J1,2);

% Expected social cost J
J = (q * J1);