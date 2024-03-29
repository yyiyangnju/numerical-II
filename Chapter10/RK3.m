function [y] =RK3(f,T,h,y0)
%RK3法
%传出误差，时间节点的近似值
n=T/h;
t=zeros(1,2);
y=zeros(2,2);  %记录近似值
t(1)=0;
y(:,1)=y0;
for i=1:n
    t(i+1)=i*h;
end
for j=1:n
    k1=f(t(j),y(:,j));
    k2=f(t(j)+1/2*h,y(:,j)+1/2*h*k1);
    k3=f(t(j)+3/4*h,y(:,j)+3/4*h*k2);
    y(:,j+1)=y(:,j)+h/9*(2*k1+3*k2+4*k3);
end

%syms v(x);
% s1=dsolve(diff(v)==f(x,v),'v(0)=y0','x');  %解真值
% s=subs(s1,'y0',y0);
% y1=subs(s,t); %将t作为自变量带入求值
% e=abs(y1-y);  %误差
%figure
%ezplot(s,t)
 
 
 %hold on
 %plot(t,y,'*')
 
 %legend('real','梯形法')
 
 %figure
 %plot(e,'*-')



end

