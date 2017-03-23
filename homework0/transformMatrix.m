% homework0 #4 part(d)

p0 = [7 0 1]';
T = [1 0 2; 0 1 0; 0 0 1];
R = [0 -1 0; 1 0 0; 0 0 1];

% p1 and p2
p1 = T * R * p0
p2 = R * T * p0