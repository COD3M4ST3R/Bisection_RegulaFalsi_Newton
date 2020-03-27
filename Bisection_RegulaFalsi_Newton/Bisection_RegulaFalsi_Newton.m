
                              

                              % BISECTION %

y = @(x) 5*x^2 - 3*x + 8;

x1 = input("Enter the value of x1: ");
x2 = input("Enter the value of x2: ");

error = input("Enter the tolerance value: ");

if y(x1) * y(x2) > 0
  fprintf("There are no root available inside the interval");
  return
end

if y(x1) == 0
  fprintf("x1 is one of the roots\n");
  return
elseif y(x2) == 0
  fprintf("x2 is one of the roots\n");
  return
end

for i = 1:100
  xn = (x1 + x2) / 2;
  if y(x1) * y(xh) < 0
    x2 = xn;
  else
    x1 = xn;
  end
  if abs(y(x1)) < error
    break
  end
end

fprintf("The root: %f\n The number of bisections: %d\n", x1, i);



                         % REGULA FALSI METHOD %

                         
y = @(x) 5*x^2 - 3*x + 8;

x1 = input("Enter the value of x1: ");
x2 = input("Enter the value of x2: ");

error = input("Enter the tolerance value: ");

if y(x1) * y(x2) > 0
  fprintf("There are no root available inside the interval");
  return
end

if y(x1) == 0
  fprintf("x1 is one of the roots\n");
  return
elseif y(x2) == 0
  fprintf("x2 is one of the roots\n");
  return
end

for i = 1:100

  if((y(x1) * y(x2)) < 0)
    x2 = x2 - ((y(x1) * (x2 - x1)) / (y(x2) - x1)) 
    
  elseif((y(x1) * y(x2)) > 0)
    x1 = x2 - ((y(x1) * (x2 - x1)) / (y(x2) - x1)) 
    
  else
    fprintf("The root : %f\n The number of iteration: %d\n", x2, i);
  end
  
  if(abs(y(x2))< error)
   break
   end
end



                                  % NEWTON' s METHOD %
                                  

y = @(x) 5*x^2 - 3*x + 8;

point_start = input("Enter the starting point: ");

error = input("Enter the tolerance value: ");

if y(x1) * y(x2) > 0
  fprintf("There are no root available inside the interval");
  return
end

if y(x1) == 0
  fprintf("x1 is one of the roots\n");
  return
elseif y(x2) == 0
  fprintf("x2 is one of the roots\n");
  return
end

xp = point_start;
 
for i = 1:100

xn = xp - (y(xp) / diff(y(xp)))
xp = xn;


  if(abs(y(xn)) < error)
    break
  end
end

fprintf("The root: %f\n The number of iteration: %d\n", xn, i);

 
 
 
 
 
 
 
 
 