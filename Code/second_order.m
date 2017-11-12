L=[ 2 -1 0 -1 0 0 0 0; -1 2 -1 0 0 0 0 0; 0 -1 2 -1 0 0 0 0; -1 0 -1 2 0 0 0 0
      0 0 0 0 2 -1 -1 0; 0 0 0 0 -1 3 -1 -1; 0 0 0 0 -1 -1 2 0; 0 0 0 0 0 -1 0 1];
N=length(L);  alfa=1.5; beta=2;  
h=0.01;K=1000;t=0:h:K*h;
X=[];  X0=[20.5; 5.8; 10.3; 2.4; 17.6; 12.9; 8.5; 15]; X=[X X0];
V=[];  V0=[20; 5; 10; 2; 17; 12; 8; 15]; V=[V V0];
for k=1:K-1
  X(:,k+1)=X(:,k)+h*V(:,k);
  V(:,k+1)=V(:,k)-h*alfa*L*X(:,k)-h*beta*L*V(:,k);
end
co=rand(N,3);
figure(1)
hold on;
for i=1:N
plot(t(1:K),X(i,1:K),'color',co(i,:),'LineWidth',2);
end
hold off; title('x(t)')
figure(2)
hold on;
for i=1:N
plot(t(1:K),V(i,1:K),'color',co(i,:),'LineWidth',2);
end
hold off; title('v(t)')
