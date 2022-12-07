<cfscript>
    //https://adventofcode.com/2020/day/2
    if(url?.test==true) {
        pwInp = new cfc.day02("day02_test.txt") ;
    } else {
        pwInp = new cfc.day02("day02_part1.txt") ;
    }
    
    //writedump(pwInp.showMe());

    local.day2a = pwInp.showMe_pt1() ;
    local.day2b = pwInp.showMe_pt2() ;

    // ANSWERS
    writeoutput( 
        "Day 2 - Part 1 Answer: " & local.day2a & "<br>"
        & 
        "Day 2 - Part 2 Answer: " & local.day2b & "<br>"
    ) ;
    
// Part 1
// Your puzzle answer was 454.  Correct answer.
// Part 2
// Your puzzle answer was 177. That's not the right answer; your answer is too low.
// Your puzzle answer was 649. That's the right answer. // Used BitXOR (read requirements)
</cfscript>