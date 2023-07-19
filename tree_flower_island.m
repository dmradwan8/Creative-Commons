function y = myFunction(x)
%MYFUNCTION Summary of this function goes here
%   Detailed explanation goes here

y = x^2; %Assigning the value of the variable 'x' to the variable 'y'

n=2; %Defining the value of 'n'

for k = 0:n %Defining a loop for 'k'
    b  = b + y / (2*k+1); %Computes the value of 'b'
end

y_int = pi*b; %Finds the value of integral of 'y'

a = 0; %Defining the value of 'a'

h = (b-a)/n; %Finding the width of each sub-interval

sum=0; %Defining the value of 'sum'

for i=1:n %Defining a loop for 'i'
    x0 = (a + (i-1)*h); %Calculates the lower limit of the integration interval
    x1 = (a + i*h); %Calculates the upper limit of the integration interval
    sum = sum + (y_int(x0) + y_int(x1))*(h/2); %Calculates the value of 'sum'
end

y_approx = sum; %Stores the approximated value of the integral

end %End of the function MYFUNCTION