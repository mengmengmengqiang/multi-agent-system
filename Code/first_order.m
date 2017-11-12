L = [ 
    0 0 0 0 0 0; 
    -1 1 0 0 0 0;
    -1 -1 3 -1 0 0; 
    0 0 -1 2 0 -1;
     0 0 0 -1 1 0; 
     0 0 0 0 -1 1
     ];
 
c = 5.5;
h = 0.01;
K = 1000;
t = 0:h:K*h;

X = [];

X0 = [
    20.5; 
    5.8; 
    10.3; 
    2.4; 
    17.6; 
    12.9
    ];

X = [X X0];

for k = 1:K-1
  X(:,k+1) = X(:,k)-h*c*L*X(:,k);
end

plot(t(1:K),X(1,1:K),'b','LineWidth',2);
hold on;
plot(t(1:K),X(2,1:K),'r','LineWidth',2);
plot(t(1:K),X(3,1:K),'g','LineWidth',2);
plot(t(1:K),X(4,1:K),'c','LineWidth',2);
plot(t(1:K),X(5,1:K),'m','LineWidth',2);
plot(t(1:K),X(5,1:K),'k','LineWidth',2);
hold off;