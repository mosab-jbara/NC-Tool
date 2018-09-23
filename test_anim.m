t=0:0.5:100;
in=50*staircase(10,5,t);
%in=100*staircase(10,5,t);
A=affine(10,50,t);
is_arrival(in,A,t)

%%%%%%%%%%%%%%%%%%%

