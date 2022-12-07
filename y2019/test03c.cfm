<cfscript>
a1=gettickcount();
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
    //writedump(wire2);
    
    dg.addCoords( wire1 ) ;
    dg.addCoords( wire2 ) ;

    //writeDump(dg.getIntersects());
    //writeDump(dg.getIntersects());
    //z = dg.getVisited_Grid().filter(function(el){return el.visitor.len() > 1 ;}) ;
    //z = dg.getVisited_Grid().each(function(el){ writedump(el) ;}) ;

    //writeDump(z);
a2=getTickCount();
writeoutput(a2-a1);
    
</cfscript>