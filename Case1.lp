props(childWants;moveChild;money;badRel;capable). 


% Judge 1
hasProp(a,childWants,j1). hasProp(a,moveChild,j1).   %(I)
hasProp(a,money,j1).   hasProp(a,capable,j1).        %(II)

hasProp(b,capable,j1).  hasProp(b,money,j1).         %(III)
hasProp(b,badRel,j1).                                %(IV)

badness(moveChild,j1). badness(badRel,j1).                   %(V)
goodness(money,j1).  goodness(childWants,j1).                %(VI)

perm(childWants,j1). perm(money,j1).                         %(VII)
perm(moveChild,j1). perm(badRel,j1).                         %(VIII)
obl(capable,j1).                                             %(IX)

weight(childWants, 10,j1). weight(moveChild, 3,j1).          %(X)
weight(badRel, 5,j1). weight(money,15,j1).                   %(XI)
choose(a, j1).                                               %(XII)   


% Judge 2
judge(j2).                                                  %(I)    
hasProp(a,childWants,j2).  hasProp(a,moveChild,j2).         %(II)    
hasProp(a,money,j2).  hasProp(a,capable,j2).                %(III)
hasProp(b,money,j2). -hasProp(b,badRel,j2).                 %(IV)
hasProp(b,capable,j2).                                      %(V)

badness(moveChild,j2). goodness(money,j2).                  %(VI)
-goodness(childWants,j2). -badness(childWants,j2).          %(VII)
badness(badRel,j2).                                         %(VIII)

weight(moveChild,8,j2). weight(money,15,j2).                %(IX)
choose(b, j2).                                              %(X)

%Judge 3 
judge(j3).                                                  %(I)
hasProp(a,childWants,j3).  hasProp(a,moveChild,j3).         %(II)
hasProp(a,money,j3).      hasProp(a,capable,j3)             %(III)            

hasProp(b,money,j3). hasProp(b,badRel,j3).                  %(IV)
hasProp(b,capable,j3)                                       %(V)

badness(moveChild,j3). badness(badRel,j3).                  %(VI)
goodness(money,j3). goodness(childWants,j3).                %(VII)

weight(badRel,5,j3). weight(childWants,10,j3).              %(VIII)
weight(moveChild,5,j3). weight(money,15,j3).                %(IX)

choose(a, j3).                                              %(X)
