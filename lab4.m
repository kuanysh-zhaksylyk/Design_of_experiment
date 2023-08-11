% Линейный регрессионный анализ: проверка гипотез
% Lab 4. Проверить гипотезы о значимости параметров гипотетической функции регрессиию 
% Выполнить дополнительно k экспериментов в некоторой одной точке (при некоторых фиксированных значениях входных переменных) и проверить гипотезу о адекватности математической модели

alpha = 0.05; % уровень значимости 
k = m - 1;
n_e-m
tet_0 = [0; 0;0 ; 0; 0; 0; 0;0;];
for i = 1:m
        x4=tinv(1 - alpha / 2, n_e - i);%процентное отклонение   распределения Стьюдента с   степенями свободы
        F=finv(1 - alpha, n_e - i, k-1); %процентное отклонение   распределения Фишера с   степенями свободы
        t_j(i) = (teta_shlyapa(i)- tet_0(i) / sqrt(sigma_0_shlyapa * A1(i, i)) );
        if x4 < abs(t_j(i))
            disp('Параметр t %d значим')
            i
        else 
            disp('Параметр t %d не значим')
            i
        end
end

k_e = 15;

x1 = 2;
x2 = 2;
x3 = 2;

row1 = 1;
y_k_emp_avg = 0;
for i=1:k_e    
    X_vectK(row1,:)= [x1,x2,x3];
    y_k_exp(row1) = model10(X_vectK(row1,:,:));
    
    y_k_emp_avg =  y_k_emp_avg + y_k_exp(row1);
    row1 = row1 + 1;
end
y_k_emp_avg = y_k_emp_avg/k_e;

sigmaD_2 = 0;
for i=1:k_e
    sigmaD_2 = sigmaD_2 + (y_k_exp(i) - y_k_emp_avg)^2;    
end
sigmaD_2 = sigmaD_2/(k_e - 1);

F_emp =  sigma_0_shlyapa / sigmaD_2;

F_fisher = finv(1-alpha,n_e-m,k_e-1);

if F_emp <= F_fisher 
    fprintf('Гипотеза об Адекватности модели при %d доп.экспериментах в точке (%d,%d,%d) Принимается.\n', k_e, x1,x2,x3);
else
    fprintf('Гипотеза об Адекватности модели при %d доп.экспериментах в точке (%d,%d,%d) Отклоняется.\n', k_e, x1,x2,x3);
end
