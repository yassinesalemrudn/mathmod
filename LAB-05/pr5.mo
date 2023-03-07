model pr5
Real x(start=4);
Real y(start=10);

parameter Real a = 0.24;
parameter Real b = 0.044;
parameter Real c = 0.44;
parameter Real d = 0.024;

equation
  der(x) = -a*x + b*x*y;
  der(y) = c*y - d*x*y;
end pr5;
