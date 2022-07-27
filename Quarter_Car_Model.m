%% ME465 HW 5-1
clear all
clc
%% PROBLEM 1
% Write a plotting script that generates Figures VI-12 and VI-13...
...on Page VI-22 of the Ride Chapter lecture notes, namely...
    ...the suspension deflection frequency response function...
    ...and the tire deflection frequency response function (frf)...
    ...Play with the sprung mass, unsprung mass, tire stiffness,...
    ...suspension spring stiffness, suspension damping coefficient,...
    ...the same way as was done for the sprung mass acceleration frf...
    ...in the lecture notes, and comment on the results...
    ...You can use the correspponding suspension parameters...
    ...in that example.
%% Solution
%Variables
M=320:100:720; %kg %i
m=46:10:86; %kg %j
ks=15000:10000:55000; %N/m %k
cs=980:500:2980; %Ns/m %l
kt=145000:100000:545000; %N/m %s
i=1;
j=1;
k=1;
l=1;
s=1;
p=1;
%% Sprung-Mass Acc. Graph
while i>=1 && i<=5 && p>=1 &&p<=5
num1 =[kt(s)*cs(l) kt(s)*ks(k) 0];
den1 =[M(i)*m(j) (M(i)*cs(l)+m(j)*cs(l)) (M(i)*kt(s)+M(i)*ks(k)+m(j)*ks(k)) (cs(l)*kt(s)) kt(s)*ks(k)];
sys1(p)=tf(num1,den1);
i = i+1;
p = p+1;
end

 i=1;
 while j>=1 && j<=5 && p>=6 &&p<=10
 num1 =[kt(s)*cs(l) kt(s)*ks(k) 0];
 den1 =[M(i)*m(j) (M(i)*cs(l)+m(j)*cs(l)) (M(i)*kt(s)+M(i)*ks(k)+m(j)*ks(k)) (cs(l)*kt(s)) kt(s)*ks(k)];
 sys1(p)=tf(num1,den1);
 j = j+1;
 p = p+1;
 end

j=1;
 while k>=1 && k<=5 && p>=11 &&p<=15
 num1 =[kt(s)*cs(l) kt(s)*ks(k) 0];
 den1 =[M(i)*m(j) (M(i)*cs(l)+m(j)*cs(l)) (M(i)*kt(s)+M(i)*ks(k)+m(j)*ks(k)) (cs(l)*kt(s)) kt(s)*ks(k)];
 sys1(p)=tf(num1,den1);
 k = k+1;
 p = p+1;
 end
 
 k=1;
  while l>=1 && l<=5 && p>=16 &&p<=20
 num1 =[kt(s)*cs(l) kt(s)*ks(k) 0];
 den1 =[M(i)*m(j) (M(i)*cs(l)+m(j)*cs(l)) (M(i)*kt(s)+M(i)*ks(k)+m(j)*ks(k)) (cs(l)*kt(s)) kt(s)*ks(k)];
 sys1(p)=tf(num1,den1);
 l = l+1;
 p = p+1;
 end
 
 l=1;
   while s>=1 && s<=5 && p>=21 &&p<=25
 num1 =[kt(s)*cs(l) kt(s)*ks(k) 0];
 den1 =[M(i)*m(j) (M(i)*cs(l)+m(j)*cs(l)) (M(i)*kt(s)+M(i)*ks(k)+m(j)*ks(k)) (cs(l)*kt(s)) kt(s)*ks(k)];
 sys1(p)=tf(num1,den1);
 s = s+1;
 p = p+1;
   end
%% Suspension Travel Graph
s=1;
p=1;
while i>=1 && i<=5 && p>=1 && p<=5
num2=[kt(s)*M(i) 0 0];
den2=[M(i)*m(j) (M(i)*cs(l)+m(j)*cs(l)) (M(i)*kt(s)+M(i)*ks(k)+m(j)*ks(k)) (cs(l)*kt(s)) kt(s)*ks(k) 0];
sys2(p)=tf(num2,den2);
i=i+1;
p=p+1;
end

i=1;
while j>=1 && j<=5 && p>=6 && p<=10
num2=[kt(s)*M(i) 0 0];
den2=[M(i)*m(j) (M(i)*cs(l)+m(j)*cs(l)) (M(i)*kt(s)+M(i)*ks(k)+m(j)*ks(k)) (cs(l)*kt(s)) kt(s)*ks(k) 0];
sys2(p)=tf(num2,den2);
j=j+1;
p=p+1;
end

j=1;
while k>=1 && k<=5 && p>=11 && p<=15
num2=[kt(s)*M(i) 0 0];
den2=[M(i)*m(j) (M(i)*cs(l)+m(j)*cs(l)) (M(i)*kt(s)+M(i)*ks(k)+m(j)*ks(k)) (cs(l)*kt(s)) kt(s)*ks(k) 0];
sys2(p)=tf(num2,den2);
k=k+1;
p=p+1;
end

k=1;
while l>=1 && l<=5 && p>=16 && p<=20
num2=[kt(s)*M(i) 0 0];
den2=[M(i)*m(j) (M(i)*cs(l)+m(j)*cs(l)) (M(i)*kt(s)+M(i)*ks(k)+m(j)*ks(k)) (cs(l)*kt(s)) kt(s)*ks(k) 0];
sys2(p)=tf(num2,den2);
l=l+1;
p=p+1;
end

l=1;
while s>=1 && s<=5 && p>=21 && p<=25
num2=[kt(s)*M(i) 0 0];
den2=[M(i)*m(j) (M(i)*cs(l)+m(j)*cs(l)) (M(i)*kt(s)+M(i)*ks(k)+m(j)*ks(k)) (cs(l)*kt(s)) kt(s)*ks(k) 0];
sys2(p)=tf(num2,den2);
s=s+1;
p=p+1;
end
%% Tire Deflection Graph
s=1;
p=1;
while i>=1 && i<=5 && p>=1 && p<=5
num3=[-M(i)*m(j) -(m(j)*cs(l)+M(i)*cs(l)) -(m(j)*ks(k)+M(i)*ks(k)) 0 0];
den3=[M(i)*m(j) (M(i)*cs(l)+m(j)*cs(l)) (M(i)*kt(s)+M(i)*ks(k)+m(j)*ks(k)) (cs(l)*kt(s)) kt(s)*ks(k) 0];
sys3(p)=tf(num3,den3) ;
i=i+1;
p=p+1;
end

i=1;
while j>=1 && j<=5 && p>=6 && p<=10
num3=[-M(i)*m(j) -(m(j)*cs(l)+M(i)*cs(l)) -(m(j)*ks(k)+M(i)*ks(k)) 0 0];
den3=[M(i)*m(j) (M(i)*cs(l)+m(j)*cs(l)) (M(i)*kt(s)+M(i)*ks(k)+m(j)*ks(k)) (cs(l)*kt(s)) kt(s)*ks(k) 0];
sys3(p)=tf(num3,den3) ;
j=j+1;
p=p+1;
end

j=1;
while k>=1 && k<=5 && p>=11 && p<=15
num3=[-M(i)*m(j) -(m(j)*cs(l)+M(i)*cs(l)) -(m(j)*ks(k)+M(i)*ks(k)) 0 0];
den3=[M(i)*m(j) (M(i)*cs(l)+m(j)*cs(l)) (M(i)*kt(s)+M(i)*ks(k)+m(j)*ks(k)) (cs(l)*kt(s)) kt(s)*ks(k) 0];
sys3(p)=tf(num3,den3) ;
k=k+1;
p=p+1;
end

k=1;
while l>=1 && l<=5 && p>=16 && p<=20
num3=[-M(i)*m(j) -(m(j)*cs(l)+M(i)*cs(l)) -(m(j)*ks(k)+M(i)*ks(k)) 0 0];
den3=[M(i)*m(j) (M(i)*cs(l)+m(j)*cs(l)) (M(i)*kt(s)+M(i)*ks(k)+m(j)*ks(k)) (cs(l)*kt(s)) kt(s)*ks(k) 0];
sys3(p)=tf(num3,den3) ;
l=l+1;
p=p+1;
end

l=1;
while s>=1 && s<=5 && p>=21 && p<=25
num3=[-M(i)*m(j) -(m(j)*cs(l)+M(i)*cs(l)) -(m(j)*ks(k)+M(i)*ks(k)) 0 0];
den3=[M(i)*m(j) (M(i)*cs(l)+m(j)*cs(l)) (M(i)*kt(s)+M(i)*ks(k)+m(j)*ks(k)) (cs(l)*kt(s)) kt(s)*ks(k) 0];
sys3(p)=tf(num3,den3) ;
s=s+1;
p=p+1;
end
%% PLOTTING
figure('units','normalized','outerposition',[0 0 1 1]) 
%Arranging figure to be fullscreen
title('ALL BLUE LINES THE LOWEST ONE OTHERS ARE,GREEN LINES ARE THE BIGGEST ONE (ex:M=320kg blue,M=720kg green)')
subplot(5,3,1)
bode(sys1(1),sys1(2),sys1(3),sys1(4),sys1(5))
grid on
title('Sprung Mass Acceleration -- Change in Sprung Mass')
legend('M=320kg','M=420kg','M=520kg','M=620kg','M=720kg')
text(0,0,'ALL BLUE LINES THE LOWEST ONE OTHERS ARE,GREEN LINES ARE THE BIGGEST ONE (ex:M=320kg blue,M=720kg green)')

subplot(5,3,4)
bode(sys1(6),sys1(7),sys1(8),sys1(9),sys1(10))
grid on
title('Sprung Mass Acceleration -- Change in Unsprung Mass')

subplot(5,3,7)
bode(sys1(11),sys1(12),sys1(13),sys1(14),sys1(15))
grid on
title('Sprung Mass Acceleration -- Change in Suspension Spring Stiffness')

subplot(5,3,10)
bode(sys1(16),sys1(17),sys1(18),sys1(19),sys1(20))
grid on
title('Sprung Mass Acceleration -- Change in Suspension Damping Coefficient')

subplot(5,3,13)
bode(sys1(21),sys1(22),sys1(23),sys1(24),sys1(25))
grid on
title('Sprung Mass Acceleration -- Change in Tire Stiffness')

subplot(5,3,2)
bode(sys2(1),sys2(2),sys2(3),sys2(4),sys2(5))
grid on
title('Suspension Travel -- Change in Sprung Mass')

subplot(5,3,5)
bode(sys2(6),sys2(7),sys2(8),sys2(9),sys2(10))
grid on
title('Suspension Travel -- Change in Unsprung Mass')

subplot(5,3,8)
bode(sys2(11),sys2(12),sys2(13),sys2(14),sys2(15))
grid on
title('Suspension Travel -- Change in Suspension Spring Stiffness')

subplot(5,3,11)
bode(sys2(16),sys2(17),sys2(18),sys2(19),sys2(20))
grid on
title('Suspension Travel -- Change in Change in Suspension Damping Coefficient')

subplot(5,3,14)
bode(sys2(21),sys2(22),sys2(23),sys2(24),sys2(25))
grid on
title('Suspension Travel -- Change in Tire Stiffness')

subplot(5,3,3)
bode(sys3(1),sys3(2),sys3(3),sys3(4),sys3(5))
grid on
title('Tire Deflection -- Change in Sprung Mass')

subplot(5,3,6)
bode(sys3(6),sys3(7),sys3(8),sys3(9),sys3(10))
grid on
title('Tire Deflection -- Change in Unsprung Mass')

subplot(5,3,9)
bode(sys3(11),sys3(12),sys3(13),sys3(14),sys3(15))
grid on
title('Tire Deflection -- Change in Suspension Spring Stiffness')

subplot(5,3,12)
bode(sys3(16),sys3(17),sys3(18),sys3(19),sys3(20))
grid on
title('Tire Deflection -- Change in Suspension Damping Coefficient')

subplot(5,3,15)
bode(sys3(21),sys3(22),sys3(23),sys3(24),sys3(25))
grid on
title('Tire Deflection -- Change in Tire Stiffness')