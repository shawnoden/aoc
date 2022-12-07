<cfscript>
    inp = new cfc.Input("day03.txt",true).getWeekInput() ; //isMultiline
    //inp = new cfc.Input("day03_test.txt",true).getWeekInput() ; //isMultiline
    //writeDump(inp);
    dg = new cfc.Grid() ;
    //writeDump(dg);
    wire1 = new cfc.Actor( 1 ) ;
    wire2 = new cfc.Actor( 2 ) ;
    //writeDump(wire1);
    //writeDump(wire2);
    wire1.move(inp[1]);
    //writeDump(wire1);
    //writedump(wire1.getPlacement().len());
    wire2.move(inp[2]);
    //writedump(wire2.getPlacement().len());

    dg.addCoords( wire1 ) ;
    dg.addCoords( wire2 ) ;

//writeDump(dg.getIntersects()) ;

    z = dg.getVisited_Grid().filter(function(el){return el.visitor.len() > 1 ;}) ;

  md = dg.getMinimumManhattanDistance(z)  ;
    writeDump(md);

    //inters = [] ;
    //w1 = wire1.getPlacement() ;
    //w2 = wire2.getPlacement() ;
    //writeDump(w2);
    /*
    inters = dg.filter( function(el, idx, arr) {
        return w2.find(idx) > 0;
    });
    writeDump(inters);
    */



/*

    crlf=chr(13)&chr(10);
    m1 = d3_input.listToArray(crlf);
    wire1.move( m1[1] );
    wire2.move( m1[2] );
    //writeDump([wire1.getplacement(),m1[1]]);
    //writeDump([wire2.getPlacement(),m1[2]]);

    // Verify shortest in arrays
*
    w1 = wire1.getPlacement().duplicate().filter( function(item){ return item.x==155 && item.y==4 ; } );
    writeDump(w1);

    w2 = wire2.getPlacement().duplicate().filter( function(item){ return item.x==155 && item.y==4 ; } );
    writeDump(w2);
*

    arrs = new cfc.Array() ;

    //wireIntersections = arrs.intersect(wire1.getPlacement(),wire2.getPlacement());
    //writeDump(wireIntersections) ;
    //writeDump( arrs.getSmallest(wireIntersections) );

    //shortest = arrs.getSmallest(wireIntersections) ;
    shortest = arrs.go( wire1.getPlacement(),wire2.getPlacement() ) ;
    //writeDump(shortest);
    writeOutput("<br> Shortest Manhattan Distance : " & shortest & "<br>");
*/
/* Part 1 CORRECT
Shortest Manhattan Distance : 3229
*/
</cfscript>