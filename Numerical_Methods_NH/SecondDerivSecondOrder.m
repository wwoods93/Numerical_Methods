function [new_x, dfdx] = SecondDerivSecondOrder(f, xmin, xmax, n) 
   h = (xmax-xmin)/(n+1); %Calculate the step size
   new_x = linspace(xmin,xmax,n+2); %Produce a list of x values
   dfdx = zeros(1,n+2); %Preallocate the list of dx values
   for k = ???
       dfdx(k) = ???;
   end
   new_x = new_x(???:???);
   dfdx = dfdx(???:???);
end