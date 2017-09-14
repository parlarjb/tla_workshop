--------------------------- MODULE SimpleProgram ---------------------------
EXTENDS Integers
VARIABLES i, pc

Init == (pc="start") /\ (i=0)

Next ==
      \/ /\ pc = "start"
         /\ i' \in 1..1000 
         /\ pc' = "middle" 
      \/ /\ pc = "middle"
         /\ i' = i + 1
         /\ pc' = "done"


=============================================================================
\* Modification History
\* Last modified Thu Sep 14 13:08:41 EDT 2017 by jay1512
\* Created Thu Sep 14 13:08:37 EDT 2017 by jay1512
