%ODF Lecture 8 Exercise 1
%min f(x1,x2) = (x1^2 +x2 ?11)^2 +(x1 +x2^2 ?7)^2    %(x1 ,x2 )?R
% s.t. 
%       c1(x1,x2)=(x1 +2)^2 ?x2 ?0 
%       c2(x1,x2)=?4x1 +10x2 ?0
% 1. Make a contour plot of this constrained optimization problem
% 2. Solve the problem for different starting guesses, x0, using fmincon

%Make a contour plot of the function (the same as in A1_Q2)
x_1 = -5:0.005:5; 
x_2 = -5:0.005:5;
[x1,x2] = meshgrid(x_1,x_2);
f = (x1.^2 + x2 - 11).^2 + (x1 + x2.^2 - 7).^2;
figure(1)
v = [0:2:10 10:10:100 100:20:200];
[c,h]=contour(x1,x2,f,v,'linewidth',2);
colorbar
axis image
xlabel('x1','Fontsize',14)
ylabel('x2','Fontsize',14)
hold on

%Define the constraints
x2_c1 = (x_1+2).^2;
x2_c2 = (4*x_1)/10;

%plot the constraints
fill(x_1,x2_c1,[0.7 0.7 0.7], 'facealpha',0.2)
fill([x_1 x_1(end) x_1(1)], [x2_c2 -5 -5], [0.7 0.7 0.7], 'facealpha',0.2)
xlim([-5 5])
ylim([-5 5])

%Define our function
fun = @L8fun

%Choose a starting point
x0 = [2 4]
A = [4,-10]
b = 0
Aeq = []
beq = []
lb = []
ub = []
nonlcon = @skorda
fmincon(fun,x0,A,b,Aeq,beq,lb,ub,nonlcon)



