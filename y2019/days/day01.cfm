<cfscript>
    testme = url.test?:false ;
    //https://adventofcode.com/2019/day/1
    if ( testme ) {
        fuel = new cfc.Fuel("test.txt") ;
    } else {
        fuel = new cfc.Fuel("day01.txt") ;
    }
   
    writeOutput( "Total Module Fuel Requirement: " & fuel.getModuleFuel() & "<br>" ) ;
    writeoutput( "Total Mass Fuel Requirement: " & fuel.getTotalFuel() & "<br>" ) ;

/* // ANSWERS */
// Part 1
// Your puzzle answer was 3394032. Correct answer.
// Part 2
// 3394032 That's not the right answer; your answer is too low.
// 5088140 That's not the right answer; your answer is too low.
// 5088176 That's the right answer! You are one gold star closer to rescuing Santa.

</cfscript>


