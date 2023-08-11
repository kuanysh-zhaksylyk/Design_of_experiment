% �������� ������������� ������: ������������ ������ ����������.
% �������� 95-���������� ������������ ������ ���������� � ������� ������� �������������� ������� ���������. 
% ������������ ������ ���������� ������� � ���� ������. 

gamma = 0.95 
p=1-(1-gamma)/2 % ������ �������

m = length(teta_shlyapa)
r =n_e -  m % ������� �������
x=tinv(p, r)
x=chi2inv(p, r) 

sigma_0_shlyapa = 1/(m- n_e) * (yo' - F * teta_shlyapa)' * (yo' - F * teta_shlyapa)


x1 = tinv(1-(1-gamma)/2,n_e-m)
x2 = chi2inv(1-(1-gamma)/2,n_e-m)% ������������� ��-������� �   ��������� �������
x3 = chi2inv(1-(1+gamma)/2,n_e-m)

a = [];
for i = 1:m
    
       left = teta_shlyapa(i) - sqrt(sigma_sqrt_shlyapa * A1(i, i)) * x1;
       right = teta_shlyapa(i) + sqrt(sigma_sqrt_shlyapa * A1(i, i)) * x1;
       c(i, :) = [left, right];
end;
disp ('������������ ������ ����������')
c
x1

disp ('������������� �������� ��� ���������:')
interval = [(n_e-m)*sigma_0_shlyapa ^ 2 / x2, (n_e-m)*sigma_0_shlyapa ^ 2 / x3 ]
