<cfscript>
    if(url?.test==true) {
        try {
            local.dayInp = new cfc.day04("day04_test.txt") ;
        }
        catch(Any e) {
            writeOutput("<br><br>ERROR:") ;
            writeDump(e);
        }
    } else {
        local.dayInp = new cfc.day04("day04_part1.txt") ;
    }
    //writedump(local.dayInp.getPuzzleInput());
    
    local.day04a = local.dayInp.showMe_pt1(true) ;
    
    //local.input_p2 = day04a ;

    local.day04b = local.dayInp.showMe_pt2(false) ;

    ////////////////////// 
    ////YOUR CODE HERE////
    //////////////////////

    // ANSWERS
    writeoutput( 
        "Day 04 - Part 1 Answer: " & local.day04a & "<br>"
        & 
        "Day 04 - Part 2 Answer: " & local.day04b & "<br>"
    ) ;
</cfscript>
