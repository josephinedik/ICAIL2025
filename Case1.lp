props(childWants;moveChild;money;badRel;capable). 


% Judge 1
hasProp(a,childWants,j1). hasProp(a,moveChild,j1).   %(I)
hasProp(a,money,j1).   hasProp(a,capable,j1).        %(II)

hasProp(b,capable,j1).  hasProp(b,money,j1).         %(III)
hasProp(b,badRel,j1).                                %(IV)

bad(moveChild,j1). bad(badRel,j1).                   %(V)
good(money,j1).  good(childWants,j1).                %(VI)

perm(childWants,j1). perm(money,j1). 
perm(moveChild,j1). perm(badRel,j1).
obl(capable,j1).

weight(childWants, 10,j1). weight(moveChild, 3,j1).
weight(badRel, 5,j1). weight(money,15,j1).
choose(a, j1).


% Perspective of Judge 2
judge(j2).
hasProp(a,childWants,j2).  hasProp(a,moveChild,j2). 
hasProp(a,money,j2).  hasProp(a,capable,j1). 
hasProp(b,money,j2). -hasProp(b,badRel,j2). 
hasProp(b,capable,j1). 

bad(moveChild,j2). good(money,j2).  
-good(childWants,j2). -bad(childWants,j2).
bad(badRel,j2). 

weight(moveChild,8,j2). weight(money,15,j2).
choose(b, j2).

%Judge 3 Supreme Court
judge(j3).
hasProp(a,childWants,j3).  hasProp(a,moveChild,j3). 
hasProp(a,money,j3).

hasProp(b,money,j3). hasProp(b,badRel,j3). 

bad(moveChild,j3). bad(badRel,j3). 
good(money,j3). good(childWants,j3). 

weight(badRel,5,j3). weight(childWants,10,j3).
weight(moveChild,5,j3).weight(money,15,j3).

