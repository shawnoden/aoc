<cfscript>
    //https://adventofcode.com/2020/day/7
    if(url?.test==true) {
        try {
            local.dayInp = new cfc.day07("day07_test.txt") ;
        }
        catch(Any e) {
            writeOutput("<br><br>ERROR:") ;
            writeDump(e);
        }
    } else {
        local.dayInp = new cfc.day07("day07_part1.txt") ;
    }
    //writedump(local.dayInp.getPuzzleInput());
    local.day7a = local.dayInp.showMe_pt1(true) ;
    local.day7b = local.dayInp.showMe_pt2(false) ;

    // ANSWERS
    writeoutput(
        "Day 7 - Part 1 Answer: " & local.day7a & "<br>"
        &
        "Day 7 - Part 2 Answer: " & local.day7b & "<br>"
    ) ;

// Part 1
// Your puzzle answer was 
// Part 2
// Your puzzle answer was
</cfscript>