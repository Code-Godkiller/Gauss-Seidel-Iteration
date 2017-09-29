%该程序用于求解线性方程组AX=B
T1=[];%缓存矩阵T1
T2=[];%缓存矩阵T2
T3=[];%缓存矩阵T3
n=99;%A矩阵阶数n
p1=0;p2=1;%参数p1，p2
PA=5;%确定参数A
step=0.01;%Δx=0.01
I1=PA*step+2;%y(i)前的参数
I2=PA*step+1;%y(i+1)前的参数


%初始化A、B矩阵
A=[];B=[];
for i = 1:(n-1)
    T1=[T1,-1];
    T2=[T2,I1];
    T3=[T3,-I2];
end
T2=[T2,2];
A=diag(T1,-1)+diag(T3,1)+diag(T2);%生成A矩阵
for i = 1:n
    B=[B;0];
end
B(1)=p1;
B(length(B))=p2;

%调用Gauss-Seidel迭代算法求解，结果保存至变量x中
%函数参数说明见gseid.m文件
x=gseid(A,B,B,1000000,0.000001);
x=[0;x;1];
disp(x);

%matlab矩阵除法求解，结果保存至变量y中
y=A\B;
disp(y);

%绘制图像
hold on;
plotx=0:0.01:1;
plot(plotx,x);



