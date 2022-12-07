<cfscript>
    /////// DAY 1
    d1_input = fileRead(expandPath("inputs/day01.txt"));

    d1 = new cfc.day01(d1_input) ;

    finalFloor = d1.toFloor(0,"(",")" ) ;
    writeOutput( "Day 1a: Final Floor = " & finalFloor & "<br>" );

    firstBasementStep = d1.findFirstBasement(0,"(",")" ) ;
    writeOutput( "Day 1b: First Basement Step = " & firstBasementStep & "<br>" );
</cfscript>