%6.23
%��ȷ��Ϊ2��3
tol=1e-6;
x0=9;
x1=1;
for i=1:100
    x1=x0-f1(x0)/df1(x0);
    df1(x0)
    if abs(x0-x1)<tol         %�����������
        break
    end
    %l(i)=abs(x1+3)/abs(x0+3)^2;
    x0=x1;
    e(i)=abs(2-x1);
    
end

figure
semilogy(e,'*-');
xlabel('��������')
ylabel('���');
title('ţ�ٷ�����½�����')

%figure
%plot(l,'*')
%title('���������ж�ͼ:-3')

if i<20000
    x1
else
    error('not convergent')
end

%��������ȫ������
%Ϊʲôֻ������2

%��ֵȡ�ò�ͬ����������ͬ�ĸ�
%��-3�Ľ���ֵʱ����l(i)�����޸ģ��ɷ����ǳ�������������l(i)��ĸ���޸ģ�������0.4��Ϊ��������
%��2�Ľ���ֵʱ����l(i)�����޸ģ�������1���ɷ�����һ������
%ͨ�����������������Է��֣���-3ʱҪ��Ķ�