% Lab1. Linear Regression Analysis: Graphical Object Analysis
% Выполнить визуальное исследование объекта, для чего провести над объектом n экспериментов. 
% Значения входных переменных моделировать в узлах равномерной сетки с шагом l в интервале (a,b) = (1,3). 
% Вывести трехмерную графическую иллюстрацию в виде поля рассеивания. 
% В результате визуального исследования выбрать математическую модель объекта (гипотетическую функцию регрессии) в виде некоторого полинома.

clc
clear

a=1;
b=3;
l=0.5;

x1 = a:l:b;
x2 = a:l:b;
x3 = a:l:b;

nx1 = length(x1);
nx2 = length(x2);
nx3 = length(x3);

for i1 = 1:nx1
    for i2 = 1:nx2
        for i3 = 1:1
            arg = [x1(i1), x2(i2), x3(i3)];
            y12(i2, i1) = model10(arg);
        end
    end
end

[xx1, xx2] = meshgrid(x1, x2)
figure
mesh(xx1, xx2, y12)
xlabel('x1');
ylabel('x2');
zlabel('y');

for i1 = 1:nx1
   for i2 = 1:1
       for i3 = 1:nx3
           arg = [x1(i1), x2(i2), x3(i3)]
          y13(i3, i1) = model10(arg)
       end
   end
end

[xx1, xx3] = meshgrid(x1, x3)
figure
mesh(xx1, xx3, y13)
xlabel('x1');
ylabel('x3');
zlabel('y');


for i1 = 1:1
   for i2 = 1:nx2
       for i3 = 1:nx3
           arg = [x1(i1), x2(i2), x3(i3)];
          y14(i3, i2) = model10(arg);
       end
   end
end

[xx2, xx3] = meshgrid(x2, x3)
figure
mesh(xx2, xx3, y14)
xlabel('x2');
ylabel('x3');
zlabel('y');