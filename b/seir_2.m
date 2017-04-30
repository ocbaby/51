function y = seir_2( t, x )
% 消息各自传播属性
pai=[0 0 0;0 0 0];theta=[0 0.5 0.2;0 0.5 0.2];
alpha=[0.3;0.3];beta=[0.5;0.5];
p=[0.6;0.6];
% 消息间相互影响
ex_alpha=[4;1.5];
ex_beta=[0.5;2];
alpha=alpha.*ex_alpha;
beta=beta.*ex_beta;

y=[
    pai(1,1)-alpha(1)*x(1)*x(3)/(x(1)+x(2)+x(3))-theta(1,1)*x(1)
    pai(1,2)+(1-p(1))*alpha(1)*x(1)*x(3)/(x(1)+x(2)+x(3))-beta(1)*x(2)*x(3)/(x(1)+x(2)+x(3))-theta(1,2)*x(2)
    pai(1,3)+p(1)*alpha(1)*x(1)*x(3)/(x(1)+x(2)+x(3))+beta(1)*x(2)*x(3)/(x(1)+x(2)+x(3))-theta(1,3)*x(3)
    theta(1,2)*x(2)+theta(1,3)*x(3)
    pai(2,1)-alpha(2)*x(5)*x(7)/(x(1)+x(2)+x(3)+x(4)-x(8))-theta(2,1)*x(5)
    pai(2,2)+(1-p(2))*alpha(2)*x(5)*x(7)/(x(1)+x(2)+x(3)+x(4)-x(8))-beta(2)*x(6)*x(7)/(x(1)+x(2)+x(3)+x(4)-x(8))-theta(2,2)*x(6)
    pai(2,3)+p(2)*alpha(2)*x(5)*x(7)/(x(1)+x(2)+x(3)+x(4)-x(8))+beta(2)*x(6)*x(7)/(x(1)+x(2)+x(3)+x(4)-x(8))-theta(2,3)*x(7)
    theta(2,2)*x(6)+theta(2,3)*x(7)
];

end