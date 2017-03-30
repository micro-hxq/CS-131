% homework1 #4
% part(a)

x = -10:0.01:10;
y = gaussian2thd(x);
plot([-10 10],[0 0], 'b--');
hold on
plot(x, y, 'r:');

% part(b)
for k = 1.2 : 0.2 : 2
    y1 = partb(k, x);
    plot(x, y1);
end
legend('show')
hold off

function v = partb(k, x)
    for i = 1:size(x, 2)
        v(i) = parta(k, x(i)) / (k - 1);
    end
end

function val = parta(sigma, x)
    coeff = 1 / sqrt(2 * pi * sigma);
    val = coeff * exp(-x * x / (2 * sigma * sigma));
end

function vec = gaussian2thd(x)
    coeff = 1 / sqrt(2 * pi);
    for i = 1 : size(x, 2)
        val = x(i);
        vec(i) = coeff * (val * val - 1) * exp(-val * val / 2);
    end
end