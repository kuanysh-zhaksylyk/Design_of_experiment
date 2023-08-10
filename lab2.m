% Lab2. Linear Regression Analysis: Point Parameter Estimates
% Получить точечные оценки параметров и дисперсионную матрицу вектора оценок гипотетической функции регрессии, выбранной в работе № 1.
 
n_e = 0;
for i1 = 1:nx1
    for i2 = 1:nx2
        for i3 = 1:nx3
            arg = [x1(i1), x2(i2), x3(i3)];
            n_e = n_e + 1;
            yo(n_e) = model10(arg);
            F(n_e, :) = [1, x1(i1), x2(i2), x3(i3), x1(i1) * x2(i2),  x1(i1) * x3(i3), x2(i2) * x3(i3),  x1(i1) * x3(i3) * x2(i2)]; 
        end
    end
end
n_e

A = (F' * F)
A1 = A^-1
teta_shlyapa = A1 * (F' * yo')

sigma_sqrt_shlyapa = 1/n_e * (yo' - F * teta_shlyapa)' * (yo' - F * teta_shlyapa)

R = sigma_sqrt_shlyapa * A^-1
