
props(waitedVisit;movedChild;capable).

hasProp(a,capable,j1). hasProp(a,waitedVisit,j1). %(I)
hasProp(b,capable,j1). hasProp(b,movedChild,j1).  %(II)

perm(waitedVisit,j1). perm(movedChild,j1).        %(III)  
obl(capable,j1).                                  %(IV)

goodness(movedChild,j1). badness(waitedVisit,j1).   %(V)  
weight(waitedVisit,3,j1). weight(movedChild,3,j1).  %(VI)

choose(a,j1).                                       %(VII)            

judge(j2).                                           %(I)      
hasProp(a,capable,j2). hasProp(a,waitedVisit,j2).    %(II)
hasProp(b,capable,j2). hasProp(b,movedChild,j2).     %(III)
badness(movedChild,j2).  goodness(waitedVisit,j2).   %(IV)
weight(waitedVisit,3,j2). weight(movedChild,3,j2).   %(V)
choose(a,j2).                                        %(VI)

#show points/3.




