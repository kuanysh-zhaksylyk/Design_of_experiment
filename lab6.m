% Lab 6. Полный факторный план для полилинейной модели: пересчет оценок и их характеристик
% Пересчитать по формулам (7.1)–(7.3) оценки параметров, полученные для нормированной модели в работе № 5, 
% в оценки параметров исходной модели, и сравнить результат пересчета с оценками, полученными непосредственно для модели с натуральными факторами.

tetZX(8) = tet_(8)/(alpha(1)*alpha(2)*alpha(3));
tetZX(7) = tet_(7)/(alpha(2)*alpha(3))-tetZX(8)*betta(1);
tetZX(6) = tet_(6)/(alpha(1)*alpha(3))-tetZX(8)*betta(2);
tetZX(5) = tet_(5)/(alpha(1)*alpha(2))-tetZX(8)*betta(3);
tetZX(4) = tet_(4)/(alpha(3))-tetZX(6)*betta(1)-tetZX(7)*betta(2)-tetZX(8)*betta(1)*betta(2);
tetZX(3) = tet_(3)/(alpha(2))-tetZX(5)*betta(1)-tetZX(7)*betta(3)-tetZX(8)*betta(1)*betta(3);
tetZX(2) = tet_(2)/(alpha(1))-tetZX(5)*betta(2)-tetZX(6)*betta(3)-tetZX(8)*betta(2)*betta(3);
tetZX(1) = tet_(1) - tetZX(2)*betta(1) - tetZX(3)*betta(2) - tetZX(4)*betta(3) - tetZX(5)*betta(1)*betta(2) - tetZX(6)*betta(1)*betta(3) - tetZX(7)*betta(2)*betta(3) - tetZX(8)*betta(1)*betta(2)*betta(3);

disp('Пересчитанные оценки вектора параметров для исходной модели из нормированной');
tetZX

