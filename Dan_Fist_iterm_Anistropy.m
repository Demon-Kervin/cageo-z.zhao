clc;
clear all;
close all;

%%%%%%%%%%%%%%%%%%%%%%% spatial anistropy %%%%%%%%%%%%
I=imread('E:\Papers\EDISK\1PHD\Paper\liuyang\3Newdata\1-1-2\100.bmp');
% I=imresize(I,[61,191]);
I=double(im2bw(I));
[m,n]=size(I);
xc=ceil(m/2);
yc=ceil(n/2);
B=[];
C=[];
% angle=atan((j-96)./(i-31))*180/pi;
for i=1:m
    for j=1:n
        angle=acos((j-yc)/sqrt((i-xc)^2+(j-yc)^2))*180/pi;
        if 0<=angle && angle<10 && i<=xc && j>=yc
            x1=i;
            y1=j;
            B=[B;x1];
            C=[C;y1];
        end
    end
end
Data=[B,C];
for k=1:length(B)
    crack(k)=I(B(k),C(k));
end
num=length(find(crack==1));

B1=[];
C1=[];
for i=1:m
    for j=1:n
        angle=acos((j-yc)/sqrt((i-xc)^2+(j-yc)^2))*180/pi;
        if 10<=angle && angle<20 && i<=xc && j>=yc
            x2=i;
            y2=j;
            B1=[B1;x2];
            C1=[C1;y2];
        end
    end
end
Data1=[B1,C1];
for k1=1:length(B1)
    crack1(k1)=I(B1(k1),C1(k1));
end
num1=length(find(crack1==1));

B2=[];
C2=[];
for i=1:m
    for j=1:n
        angle=acos((j-yc)/sqrt((i-xc)^2+(j-yc)^2))*180/pi;
        if 20<=angle && angle<30 && i<=xc && j>=yc
            x3=i;
            y3=j;
            B2=[B2;x3];
            C2=[C2;y3];
        end
    end
end
Data2=[B2,C2];
for k2=1:length(B2)
    crack2(k2)=I(B2(k2),C2(k2));
end
num2=length(find(crack2==1));

B3=[];
C3=[];
for i=1:m
    for j=1:n
        angle=acos((j-yc)/sqrt((i-xc)^2+(j-yc)^2))*180/pi;
        if 30<=angle && angle<40 && i<=xc && j>=yc
            x4=i;
            y4=j;
            B3=[B3;x4];
            C3=[C3;y4];
        end
    end
end
Data3=[B3,C3];
for k3=1:length(B3)
    crack3(k3)=I(B3(k3),C3(k3));
end
num3=length(find(crack3==1));

B4=[];
C4=[];
for i=1:m
    for j=1:n
        angle=acos((j-yc)/sqrt((i-xc)^2+(j-yc)^2))*180/pi;
        if 40<=angle && angle<50 && i<=xc && j>=yc
            x5=i;
            y5=j;
            B4=[B4;x5];
            C4=[C4;y5];
        end
    end
end
Data4=[B4,C4];
for k4=1:length(B4)
    crack4(k4)=I(B4(k4),C4(k4));
end
num4=length(find(crack4==1));

B5=[];
C5=[];
for i=1:m
    for j=1:n
        angle=acos((j-yc)/sqrt((i-xc)^2+(j-yc)^2))*180/pi;
        if 50<=angle && angle<60 && i<=xc && j>=yc
            x6=i;
            y6=j;
            B5=[B5;x6];
            C5=[C5;y6];
        end
    end
end
Data5=[B5,C5];
for k5=1:length(B5)
    crack5(k5)=I(B5(k5),C5(k5));
end
num5=length(find(crack5==1));

B6=[];
C6=[];
for i=1:m
    for j=1:n
        angle=acos((j-yc)/sqrt((i-xc)^2+(j-yc)^2))*180/pi;
        if 60<=angle && angle<70 && i<=xc && j>=yc
            x7=i;
            y7=j;
            B6=[B6;x7];
            C6=[C6;y7];
        end
    end
end
Data6=[B6,C6];
for k6=1:length(B6)
    crack6(k6)=I(B6(k6),C6(k6));
end
num6=length(find(crack6==1));

B7=[];
C7=[];
for i=1:m
    for j=1:n
        angle=acos((j-yc)/sqrt((i-xc)^2+(j-yc)^2))*180/pi;
        if 70<=angle && angle<80 && i<=xc && j>=yc
            x8=i;
            y8=j;
            B7=[B7;x8];
            C7=[C7;y8];
        end
    end
end
Data7=[B7,C7];
for k7=1:length(B7)
    crack7(k7)=I(B7(k7),C7(k7));
end
num7=length(find(crack7==1));

B8=[];
C8=[];
for i=1:m
    for j=1:n
        angle=acos((j-yc)/sqrt((i-xc)^2+(j-yc)^2))*180/pi;
        if 80<=angle && angle<90 && i<=xc && j>=yc
            x9=i;
            y9=j;
            B8=[B8;x9];
            C8=[C8;y9];
        end
    end
end
Data8=[B8,C8];
for k8=1:length(B8)
    crack8(k8)=I(B8(k8),C8(k8));
end
num8=length(find(crack8==1));
