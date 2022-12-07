<cfscript>
    //https://adventofcode.com/2020/day/5
    if(url?.test==true) {
        try {
            local.dayInp = new cfc.day05("day05_test.txt") ;
        }
        catch(Any e) {
            writeOutput("<br><br>ERROR:") ;
            writeDump(e);
        }
    } else {
        local.dayInp = new cfc.day05("day05_part1.txt") ;
    }
    //writedump(local.dayInp.getPuzzleInput());
    
    local.day5a = local.dayInp.showMe_pt1(true) ;
    
    //local.input_p2 = day5a ;

    local.day5b = local.dayInp.showMe_pt2(false) ;

    // ANSWERS
    writeoutput( 
        "Day 5 - Part 1 Answer: " & local.day5a & "<br>"
        & 
        "Day 5 - Part 2 Answer: " & local.day5b & "<br>"
    ) ;
    
// Part 1
// Your puzzle answer was 835. That's the right answer! You are one gold star closer to saving your vacation. [Continue to Part Two]
// Part 2
// Your puzzle answer was 647. That's not the right answer; your answer is too low. 
// Your puzzle answer was 649. That's the right answer! You are one gold star closer to saving your vacation. /// Think off-by-one error. Need to fix this code. 
</cfscript>