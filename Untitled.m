hold on;
A=[0:0.000001:1];
B=exp(5)/(exp(5) - 1) - (exp(-5*A)*exp(5))/(exp(5) - 1);
plot(A,B)
B=exp(1)/(exp(1) - 1) - (exp(-A)*exp(1))/(exp(1) - 1);
plot(A,B)
B=A;
plot(A,B)
B=exp(A)/(exp(1) - 1) - 1/(exp(1) - 1);
plot(A,B)
B=exp(5*A)/(exp(5) - 1) - 1/(exp(5) - 1);
plot(A,B)
