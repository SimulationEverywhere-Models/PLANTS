[top]
components : plants

[plants]
type : cell
dim : (20,20)
delay : transport
defaultDelayTime  : 100
border : nowrapped 
neighbors : plants(-1,-1) plants(-1,0) plants(-1,1) 
neighbors : plants(0,-1)  plants(0,0)  plants(0,1)
neighbors : plants(1,-1)  plants(1,0)  plants(1,1)
initialvalue : 0
initialrow : 0	   2 2 2 2 2 2 2 2 2 2 0 2 2 2 0 2 2 0 2 0
initialrow : 1     2 0 2 2 0 0 2 0 2 0 2 2 2 0 2 0 2 2 2 2
initialrow : 4     0 0 0 0 0 0 0 0 0 2 0 0 0 2 0 0 2 0 2 0
initialrow : 5	   2 0 2 0 0 2 0 2 0 0 0 0 0 2 0 0 0 2 0 2
initialrow : 18    1 0 1 1 0 1 1 1 0 1 0 0 0 1 0 0 0 1 0 0
initialrow : 19	   0 1 1 0 0 1 0 1 0 1 0 0 1 0 1 0 1 0 1 1
localtransition : wet-rule

[wet-rule]
rule : 1          1000 { StateCount(1) >= 1 and (0,0) = 0 }
rule : 0	  1000 { (0,0) = 2 and randInt(10) < 5 }
rule : 2          1000 { (0,0) = 2 and randInt(10) >= 5 }
rule : 0          1000 { stateCount(1) < 1 and (0,0) = 0 }
rule : {(0,0)} 	  1000 { t } 

% 1 means L, 2 means S %