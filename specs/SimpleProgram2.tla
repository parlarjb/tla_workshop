\* This code originally comes from Leslie Lamport's video series
\* http://lamport.azurewebsites.net/video/videos.html
--------------------------- MODULE SimpleProgram2 ---------------------------
EXTENDS Integers
VARIABLES i, pc

Init == (pc="start") /\ (i=0)

Pick ==
   /\ pc = "start"
   /\ i' \in 1..1000
   /\ pc' = "middle" 

Add ==
   /\ pc = "middle"
   /\ i' = i + 1
   /\ pc' = "done"

Next == Pick \/ Add

=============================================================================
\* Modification History
\* Last modified Thu Sep 14 13:32:00 EDT 2017 by jay1512
\* Created Thu Sep 14 13:08:37 EDT 2017 by jay1512
