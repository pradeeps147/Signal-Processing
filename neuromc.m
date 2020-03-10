

prompt='enter the weight of person(kg): ';
M=input(prompt);

prompt='enter the height of person(cm): ';
H=input(prompt);

prompt='enter extra weight(kg): ';
W2=input(prompt);


D1=0.100*H ;
D2= 0.254*H;
W1= (0.006+0.16)*M;
%For varying insertion points
INSP=0.03:0.001:D1;

Fmy=((W1*D1+W2*D2)./(INSP*0.01));
Fmy=((Fjy*0.73*H+W2*0.838*H)./(0.73*H-INSP));


theta=atan((0.186*H)./INSP);
Fm=Fmy./sin(theta);
Fmx=Fm .*cos(theta);
Fjx=Fmx;
plot(Fjy,W2)