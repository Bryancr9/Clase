%Estudinte: Bryan Castro Rua-- CC: 1035863162
%Ejercicio 1 Parcial 1

clear all;
clear vars;
clf; 
clc;
Ts = 0.01;
t = -10:Ts:10;

y1 = -2* ustep(t,1);
y2 = ramp(t,2,1); 
y3 = ramp(t,-2,-1);
y4 = ustep(t,-2);
y5 = ramp(t,-1,-2);
y6 = ramp(t,1,-4);
y7 = ramp(t,-1,-5);
y8 = ramp(t,1,-7);
y9 = ustep(t,-7);

y = y1 + y2 + y3 + y4 + y5 + y6 + y7 + y8+ y9; 
plot(t,y,'k'); axis([-3 8 -3 6]); 
grid;
a=12;
xlabel('$t$','interpreter','latex','FontSize',a)
ylabel('$y(t)$','interpreter','latex','FontSize',a)

function y = ramp(t,m,ad)
                                                                            
                                                                           
                                                                            
                                                                            
                                                                            
N= length(t);
y = zeros(1,N);
    for i = 1:N,
        if t(i)>= -ad,
            y(i) =m* (t(i)+ad);
        end
    end
end

function y = ustep(t,ad)
                                                                            
                                                                                                                                                   
                                                                            
N= length(t);
y = zeros(1,N);
    for i = 1:N,
        if t(i)>= -ad,
            y(i) = 1;
        end
    end
end