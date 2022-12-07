<cfscript>
    //////// DAY 3
    //test4= "^v" ; // delivers presents to 3 houses, because Santa goes north, and then Robo-Santa goes south.
    //test5= "^>v<" ; //now delivers presents to 3 houses, and Santa and Robo-Santa end up back where they started.
    //test6 = "^v^v^v^v^v" ;//now delivers presents to 11 houses, with Santa going one direction and Robo-Santa going the other.

    d3_input = fileRead(expandPath("inputs/day03.txt"));
    //d3 = new cfc.day03b(d3_input) ;
    d3_t1 = getTickCount() ;
    d3a = new cfc.day03c(d3_input) ;
    d3_t2 = getTickCount() ;
    //pd = d3a.deliverPresents() ;
    d3_t3 = getTickCount() ;
    //writeOutput( "Day 3a: Total Unique Visits = " & pd.visits.Len() - pd.revisits & " ("& d3_t3-d3_t2 & ")<br>" );
    d3_t4 = getTickCount() ;
    d3b = d3a.init(d3_input) ;
    d3_t5 = getTickCount() ;
    rs = d3b.deliverPresentsWithRoboSanta() ;
    d3_t6 = getTickCount() ;
    //writeDump(rs);
    //writeOutput( "Day 3b: Total Unique Visits (with Robo- Santa) =  " & rs.visits.Len() - rs.revisits & " ("& d3_t6-d3_t5 & ")<br>" );
    writeOutput( "Day 3b: Visits =  " & rs.visits.Len() & " ("& d3_t6-d3_t5 & ")<br>" );
    writeOutput( "Day 3b: Revisits =  " & rs.revisits & " ("& d3_t6-d3_t5 & ")<br>" );

</cfscript>