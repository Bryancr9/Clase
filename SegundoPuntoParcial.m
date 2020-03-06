%Estudinte: Bryan Castro Rua-- CC: 1035863162
%Ejercicio 2 Parcial 1

clear all;
clear vars;
clf; 
clc;
Ts = 0.01;
t = -5:Ts:5;

y1 = ustep(0.33*t,0.33*-0.5);
y2 = 3*ustep(-t , 3);
y3 = 5*ustep(-0.2*3*t,-0.12);
y4 = 7*ustep(6*t,12);

subplot(5,1,1);
plot(t,y1,'k'); axis([-3 8 -3 6]); 
title('u(1/3(t-0.5)');
axis tight;
xlabel('t')
ylabel('y(t)')

subplot(5,1,2);
plot(t,y2,'k'); axis([-10 8 -3 10]);
title('3u(3-t)');
axis tight;
xlabel('t')
ylabel('y(t)')

subplot(5,1,3);
plot(t,y3,'k'); axis([-10 8 -3 10]);
title('5u(-1/5(3t+3/5))');
axis tight;
xlabel('t')
ylabel('y(t)')

subplot(5,1,4);
plot(t,y4,'k'); axis([-10 8 -3 10]);
title('7u(6t+12)');
axis tight;
xlabel('t')
ylabel('y(t)')

grid on;
a=12;

function y = ustep(t,ad)
                                                                            
                                                                                                                                                   % ad : retardo (negativo), avance (positivo)
                                                                            
N= length(t);
y = zeros(1,N);
    for i = 1:N,
        if t(i)>= -ad,
            y(i) = 1;
        end
    end
end