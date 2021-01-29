TC=[-30:40];
RV = 461; %J*K^-1*kg^-1
e0 = 611; %Pa
T0 = 273; %K
Rd = 287; %J*K^-1*kg^-1
epsilon = 0.622; %kg_vapour*kg^-1_dryair
L = 2.5e6; %J*kg^-1
P = 90000; %Pa
[RH,TC]=meshgrid([10:20:90],[-30:40]);

TK = TC + 273.15; %K
es = e0.*exp((L/RV).*(1/T0-1./TK))
e = es.*RH/100
r = epsilon.*e./(P-e)
density = P./(Rd.*TK.*(1+0.61.*r))

subplot(2,1,1);
plot(TC,r)
xlabel('Temperature (^˚C)');
ylabel('Mixing ratio (g/g)');
title('Subplot 1: Temperature vs. Mixing Ratio');
axis([5 25 0 0.025]);
legend({'RH=10','RH=30','RH=50','RH=70','RH=90'},'Location','northwest');

subplot(2,1,2); 
plot(TC,density)
xlabel('Temperature (^˚C)');
ylabel('Density (Pa)');
title('Subplot 2: Temperature vs. Density');
axis([5 25 1.0 1.15]);
legend({'RH=10','RH=30','RH=50','RH=70','RH=90'},'Location','southwest');

partner.name = 'NG Yu Hin Christopher';
Time.spent=02;