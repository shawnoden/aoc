<cfscript>
    //https://adventofcode.com/2020/day/1
    if(url?.test==true) {
        expreport = new cfc.day01("day01_test.txt",2020) ;
    } else {
        expreport = new cfc.day01("day01_part1.txt",2020) ;
    }
    //writedump(expreport.getDayInput());

    local.day1a = expreport.parse2() ;
    local.day1b = expreport.parse3() ;

    // ANSWERS
    writeoutput( 
        "Day 1 - Part 1 Answer: " & local.day1a[1] & " for " & local.day1a[2] & "<br>"
        & 
        "Day 1 - Part 2 Answer: " & local.day1b[1] & " for " & local.day1b[2] & "<br>"
    ) ;

// Part 1
// Your puzzle answer was 444019.  Correct answer.
// Part 2
// Your puzzle answer was 29212176.  Correct answer.
</cfscript>


