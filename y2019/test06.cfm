<cfscript>
    //inp = new cfc.Input("day06.txt");
    variables.inp = new cfc.Input("test.txt");
    variables.orbs = new cfc.UniversalORbitMap(inp.getWeekInput(), "COM");
    //writeDump(variables.orbs);
    o2 = variables.orbs.convertOrbitsToArray();
    
    retOrbs = [] ;
    
    //o2 = variables.orbs.convertOrbitsToStruct();
    
    //ret = o2.filter( function( el,idx,arr ){ return arr[idx][1] == el[2] ; } );
    
    //x = structFindKey( o2[1], "B", "ALL" ) ;
    x=[];
    o2.each( function( el, idx, arr ) {
        if ( idx%4==2 ) { arr[idx][2].append( el[2] ); }
        x.append(arr);
    } ) ;

    //writeDump(q) ;
    writeDump(x) ;
    
    /*
    prev = ["",""] ;
    for ( el IN o2 ) {
        if (el[1] == prev[2]) { el[2] = prev[2].arrayappend(el[1]) ; } ;
        prev = el ;
    }
    */
    
    
   //writeDump(o2);
</cfscript>