<cfscript>
    //inp = new cfc.Input("day03.txt",true).getWeekInput() ; //isMultiline
    //inp = new cfc.Input("day03_test.txt",true).getWeekInput() ; //isMultiline
    inp = new cfc.Input("day03_test2.txt",true).getWeekInput() ; //isMultiline
    //writeDump(inp);

    dg = new cfc.Grid() ;
    //writeDump(dg);
    
    wire1 = new cfc.Actor( 1 ) ;
    wire2 = new cfc.Actor( 2 ) ;
    wire1.move(inp[1]);
    wire2.move(inp[2]);
    
    i = dg.getIntersections( [wire1,wire2] ) ;
    
    //md = getMinimumManhattanDistance(i) ;
    
    writeDump(i);
    
</cfscript>