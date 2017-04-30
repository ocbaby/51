function y = seir( t, x )

pai=[0 0 0];theta=[0 0.5 0.2];
alpha=[0.3];beta=[0.5];
p=[0.6];

y=[
    pai(1)-alpha*x(1)*x(3)/(x(1)+x(2)+x(3))-theta(1)*x(1)
    pai(2)+(1-p)*alpha*x(1)*x(3)/(x(1)+x(2)+x(3))-beta*x(2)*x(3)/(x(1)+x(2)+x(3))-theta(2)*x(2)
    pai(3)+p*alpha*x(1)*x(3)/(x(1)+x(2)+x(3))+beta*x(2)*x(3)/(x(1)+x(2)+x(3))-theta(3)*x(3)
    theta(2)*x(2)+theta(3)*x(3)
];

end

