[ T r a n s i e n t   A n a l y s i s ] 
 { 
       N p a n e s :   3 
       A c t i v e   P a n e :   1 
       { 
             t r a c e s :   3   { 3 4 6 0 3 0 1 0 , 0 , " I ( V 1 ) " }   { 3 4 6 0 3 0 1 1 , 0 , " I ( R 1 ) " }   { 3 4 6 0 3 0 1 2 , 0 , " I ( L 1 ) " } 
             X :   ( ' m ' , 1 , 0 , 0 . 0 0 0 5 , 0 . 0 0 5 ) 
             Y [ 0 ] :   ( ' m ' , 0 , - 0 . 0 2 , 0 . 0 0 4 , 0 . 0 2 ) 
             Y [ 1 ] :   ( ' _ ' , 0 , 1 e + 3 0 8 , 0 , - 1 e + 3 0 8 ) 
             A m p s :   ( ' m ' , 0 , 0 , 0 , - 0 . 0 1 8 , 0 . 0 0 3 , 0 . 0 1 8 ) 
             L o g :   0   0   0 
             G r i d S t y l e :   1 
       } , 
       { 
             t r a c e s :   3   { 5 2 4 2 9 3 , 0 , " V ( A , B ) " }   { 5 2 4 2 9 4 , 0 , " V ( B , C ) " }   { 2 6 8 9 5 9 7 5 1 , 0 , " V ( c ) " } 
             X :   ( ' m ' , 1 , 0 , 0 . 0 0 0 5 , 0 . 0 0 5 ) 
             Y [ 0 ] :   ( '   ' , 0 , - 9 , 3 , 1 8 ) 
             Y [ 1 ] :   ( ' _ ' , 0 , 1 e + 3 0 8 , 0 , - 1 e + 3 0 8 ) 
             V o l t s :   ( '   ' , 0 , 0 , 0 , - 8 , 2 , 1 8 ) 
             L o g :   0   0   0 
             G r i d S t y l e :   1 
       } , 
       { 
             t r a c e s :   4   { 5 2 4 2 9 6 , 0 , " V ( A ) * I ( V 1 ) " }   { 5 2 4 2 9 7 , 0 , " V ( C ) * I ( C 1 ) " }   { 5 2 4 2 9 8 , 0 , " V ( A , B ) * I ( L 1 ) " }   { 5 2 4 2 9 9 , 0 , " V ( C , B ) * I ( R 1 ) " } 
             X :   ( ' m ' , 1 , 0 , 0 . 0 0 0 5 , 0 . 0 0 5 ) 
             Y [ 0 ] :   ( ' m ' , 0 , - 0 . 2 , 0 . 0 4 , 0 . 2 ) 
             Y [ 1 ] :   ( ' _ ' , 0 , 1 e + 3 0 8 , 0 , - 1 e + 3 0 8 ) 
             U n i t s :   " W "   ( ' m ' , 0 , 0 , 0 , - 0 . 1 8 , 0 . 0 3 , 0 . 1 8 ) 
             L o g :   0   0   0 
             G r i d S t y l e :   1 
       } 
 } 
 [Transient Analysis]
{
   Npanes: 3
   {
      traces: 3 {34603010,0,"I(V1)"} {34603011,0,"I(R1)"} {34603012,0,"I(L1)"}
      X: ('m',1,0,0.0005,0.005)
      Y[0]: ('m',0,-0.02,0.004,0.02)
      Y[1]: ('_',0,1e+308,0,-1e+308)
      Amps: ('m',0,0,0,-0.018,0.003,0.018)
      Log: 0 0 0
      GridStyle: 1
   },
   {
      traces: 3 {524293,0,"V(A,B)"} {524294,0,"V(B,C)"} {268959751,0,"V(c)"}
      X: ('m',1,0,0.0005,0.005)
      Y[0]: (' ',0,-9,3,18)
      Y[1]: ('_',0,1e+308,0,-1e+308)
      Volts: (' ',0,0,0,-8,2,18)
      Log: 0 0 0
      GridStyle: 1
   },
   {
      traces: 4 {524296,0,"V(A)*I(V1)"} {524297,0,"V(C)*I(C1)"} {524298,0,"V(A,B)*I(L1)"} {524299,0,"V(C,B)*I(R1)"}
      X: ('m',1,0,0.0005,0.005)
      Y[0]: ('m',0,-0.2,0.04,0.2)
      Y[1]: ('_',0,1e+308,0,-1e+308)
      Units: "W" ('m',0,0,0,-0.18,0.03,0.18)
      Log: 0 0 0
      GridStyle: 1
   }
}

 