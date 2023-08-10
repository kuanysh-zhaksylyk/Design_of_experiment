function y=model10(x)
% Regression function model for lab. works 2-4sigma=0.02;
n=3;
 tet0= 0;
 y=tet0;
 teti=[7     2     5];
 
 for i=1:1:n
  y=y+teti(i)*x(i);
 end
 tetij=[0    -7     8
        0     0     0
        0     0     0];
 for i=1:1:n
  for j=1:1:n
   y=y+tetij(i,j)*x(i)*x(j);
  end%for j
 end%for i
 
   tetijk=0;
 for i=1:1:n
  for j=i+1:1:n
   for k=j+1:1:n
    y=y+tetijk*x(i)*x(j)*x(k);
   end%for j
  end%for j
 end%for i

y=y+normrnd(0,sigma);
