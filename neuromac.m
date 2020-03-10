
prompt='enter the height of person(m):';
H=input(prompt);
rompt='enter the mass of person(kg):';

M=input(prompt);
rompt='enter extra weight:';
W2=input(prompt);


D1=0.100*H ;
D2= 0.254*H;
W1= (0.006+0.16)*M;
%For varying insertion points
INSP=0.03:0.001:D1;

Fmy=(W1*D1+W2*D2)./INSP;
Fjx=
Fm=Fmy*INSP./(0.186*H);

theta=atan((0.186*H)./INSP);
Fm=Fmy./sin(theta);
Fmx=Fm.*cos(theta);
Fjx=Fmx;
plot(Fm,INSP)