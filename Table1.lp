%% Properties of the norms
obl(X,J)   :- -perm(-X,J).      %(1)
-perm(-X,J) :- obl(X,J).        %(2)
perm(X,J)  :- -obl(-X,J).       %(3)
-obl(-X,J)  :- perm(X,J).       %(4)
perm(-X,J) :- -obl(X,J).        %(5)
-obl(X,J)   :- perm(-X,J).      %(6)
:- obl(X,J), obl(-X,J).         %(7)
perm(X,J) :- obl(X,J).          %(8)

-good(X,J) :- bad(X,J).         %(9)
-bad(X,J) :- good(X,J).         %(10)


permPlus(X,J) :- good(X,J), props(X), perm(X,J).       %(11)
permMin(X,J)  :- bad(X,J), props(X), perm(X,J).        %(12)
permZero(X,J) :- not permMin(X,J), not permPlus(X,J), props(X), perm(X,J).  %(13)

obl(-choose(P),J) :- obl(-Y,J), hasProp(P,Y,J).     %(14)
obl(-choose(P),J) :- obl(Y,J), -hasProp(P,Y,J).     %(15)

weight(X,0,J) :- permZero(X,J).                                %(16)
values(X,0,J) :- weight(X,0,J).                                %(17) 
values(X,Y,J)  :- weight(X,Y,J), permPlus(X,J).                %(18)
values(X,-Y,J) :- weight(X,Y,J), permMin(X,J).                 %(19)


ord(X,Y,J) :- weight(X,N,J), weight(Y,M,J), N>M, X!=Y, M>0.   %(20)

