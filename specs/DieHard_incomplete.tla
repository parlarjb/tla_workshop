\* This code originally comes from Leslie Lamport's video series
\* http://lamport.azurewebsites.net/video/videos.html
------------------------------ MODULE DieHard ------------------------------
EXTENDS Integers

VARIABLES small, big   
          
TypeOK == /\ small \in 0..3 
          /\ big   \in 0..5

Init == /\ big   = 0 
        /\ small = 0

FillSmall == /\ small' = 3 
             /\ big'   = big

FillBig == 

EmptySmall == /\ small' = 0 
              /\ big'   = big

EmptyBig == 

SmallToBig == IF big + small =< 5
               THEN /\ big'   = big + small
                    /\ small' = 0
               ELSE /\ big'   = 5
                    /\ small' = small - (5 - big)

BigToSmall == 

Next == \/ FillSmall 
        \/ FillBig    
        \/ EmptySmall 
        \/ EmptyBig    
        \/ SmallToBig    
        \/ BigToSmall   

=============================================================================
\* Modification History
\* Last modified Thu Sep 14 14:06:27 EDT 2017 by jay1512
\* Created Thu Sep 14 14:05:46 EDT 2017 by jay1512
