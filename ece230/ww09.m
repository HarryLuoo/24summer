%% ECE 230 WW09
%% Harry Luo
%% We have derived that v = (Vs - z1* I0) * ( R2 * zC)/(R2 * zC + z1 * ( R2 + zC))

% setting constants
R1 = 40;
zL = 20j;
zC = -30j;
R2 = 50;
I0 = p2r(6,30);
Vs = p2r(150, -9);
z1 = R1 + zL; %substution for better readability

% using formula to find v
v = (Vs - z1* I0) * ( R2 * zC)/(R2 * zC + z1 * ( R2 + zC));
disp(r2p(v))