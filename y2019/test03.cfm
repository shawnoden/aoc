<cfscript>

t1 = getTickCount() ;
    d3_input = fileRead(expandPath("inputs/day03.txt")) ;
    //d3_input = fileRead(expandPath("inputs/test.txt")) ;
t2 = getTickCount();     
    //dg = new cfc.Grid() ;
    //writeDump(dg);
    
    wire1 = new cfc.Actor( 1 ) ;
    wire2 = new cfc.Actor( 2 ) ;
t3 = getTickCount();
    //writeDump(da);
    crlf=chr(13)&chr(10);
    m1 = d3_input.listToArray(crlf);
t4 = getTickCount();
    wire1.move( m1[1] );
t5 = getTickCount();
    wire2.move( m1[2] );
t6 = getTickCount();
    //writeDump([wire1.getplacement(),m1[1]]);
    //writeDump([wire2.getPlacement(),m1[2]]);
    
    // Verify shortest in arrays
    /*
    w1 = wire1.getPlacement().duplicate().filter( function(item){ return item.x==155 && item.y==4 ; } );
    writeDump(w1);
    
    w2 = wire2.getPlacement().duplicate().filter( function(item){ return item.x==155 && item.y==4 ; } );
    writeDump(w2);
    */

    arrs = new cfc.Array() ;

    //wireIntersections = arrs.intersect(wire1.getPlacement(),wire2.getPlacement());
t7=getTickCount()    
    //writeDump(wireIntersections) ;
    //writeDump( arrs.getSmallest(wireIntersections) );
  
    //shortest = arrs.getSmallest(wireIntersections) ;
    shortest = arrs.go( wire1.getPlacement(),wire2.getPlacement() ) ;
    //writeDump(shortest);
t8=getTickCount();
    writeOutput("<br> Shortest Manhattan Distance : " & shortest & "<br>");
t9=getTickCount();

writeoutput(
    "<br><hr><br>" &
    "block1:" & t2-t1 & "<br>" &
    "block2:" & t3-t2 & "<br>" &
    "block3:" & t4-t3 & "<br>" &
    "block4:" & t5-t4 & "<br>" &
    "block5:" & t6-t5 & "<br>" &
    "block6:" & t7-t6 & "<br>" &
    "block7:" & t8-t7 & "<br>" &
    "block8:" & t9-t8 & "<br>" &
    "Total:" & t9-t1 & "<br>"
)  ;
  

/* Part 1 CORRECT
Shortest Manhattan Distance : 3229
block1:1
block2:0
block3:1
block4:300
block5:110
block6:0
block7:3959496
block8:0
Total:3959908
*/
</cfscript>