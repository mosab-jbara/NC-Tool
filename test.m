step=0.1;
t=0:step:100;
A=affine(10,200,t);
input=affine(7,150,t);
%S=random_curve(0,5,t);
S=rate_latency(10,20,t);
D=find_output(input,S);
D2=mp_conv(A,S);
B=input-D;
B2=backlog_limit(A,S);

W=find_delay(input,D)*step;
W2=delay_limit(A,S)*step;

%%%
subplot(3,1,[1 2])
plot(t,A,'r','LineWidth',2)
hold on
plot(t,input,'r--','LineWidth',2)
plot(t,S,'g','LineWidth',2)
plot(t,D,'b','LineWidth',2)
plot(t,D2,'b:')

plot(t,B,'k','LineWidth',2)
plot(t,B2,'k:')

xlabel('time(sec)');
ylabel('comulative data (bits)');
legend('Arrival','input','Service','Deprature','Deprature min limit','Backlog','Backlog max limit');


subplot(3,1,3)

plot(t,W,'y','LineWidth',2)
hold on
plot(t,W2,'r:')

xlabel('time(sec)');
ylabel('delay(sec)');
legend('Delay','Delay max limit');

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% t=0:0.1:100;
% A=affine(5,100,t);
% B=rate_latency(10,10,t);
% C=mp_conv(A,B);
% D=mp_deconv(C,A);
% plot(t,D)
% hold on
% plot(t,A)
% plot(t,C,'r')

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
