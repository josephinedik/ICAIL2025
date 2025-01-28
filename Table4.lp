parent(a;b).                                                                                          %(1)                         
points(P,X,J) :- X=#sum{Z: values(Y,Z,J), hasProp(P,Y,J)}, parent(P), judge(J).                       %(2)
obl(choose(P),J) :- X>Y, points(P,X,J), points(Q,Y,J), not obl(-choose(P),J).                         %(3)               
obl(-choose(P),J) :- obl(choose(Q),J), P!=Q, parent(P), parent(Q).                                    %(4)        
perm(choose(P),J) :- X=Y, points(P,X,J), points(Q,Y,J), P!=Q.                                         %(5)                         
obl(-choose(neither),J) :- perm(choose(a),J), perm(choose(b),J).                                      %(6)                  
obl(choose(neither),J) :- obl(-choose(a),J), obl(-choose(b),J).                                       %(7)                             
obl(choose(P),J) :- obl(-choose(Q),J), not obl(-choose(P),J), P!=Q, parent(P), parent(Q).             %(8)                               

viol(obl(choose(P,J)),I) :- obl(choose(P),J), not choose(P,J), high(J,I).                             %(9)     

