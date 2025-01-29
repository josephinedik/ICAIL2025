props(1..100). perm(1..100,j1).                 %(I)
judge(j1;j2;j3).                                %(II)


hasProp(a,1..50,j1).                            %(III)
hasProp(a,1..50,j2). hasProp(a,1..50,j3).

hasProp(b,51..100,j1).                          %(IV)
hasProp(b,51..100,j2). hasProp(b,51..100,j3).
-good(1..20,j1). -bad(1..20,j1).                %(IV)
good(21..80,j1). bad(81..100,j1).               %(V)

weight(X,X,j1) :- props(X), X>20.               %(VI)
choose(a,j1).                                   %(VII)

bad(1..20,j2). weight(X,X,j2) :- props(X).      %(VIII)
                         
good(21..80,j2). 
bad(81..100,j2). 
choose(a,j2).                                   %(IX)

bad(1..20,j3). -bad(81..100,j3).                %(X)
good(21..80,j3). 
-good(81..100,j3). weight(X,X,j3) :- props(X), X<81. %(XI)
choose(b,j3).                                        %(XII)   


#show points/3.
