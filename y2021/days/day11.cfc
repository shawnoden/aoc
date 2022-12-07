<cfscript>
    if(url?.test==true) {
        try {
            local.dayInp = new cfc.day11("day11_test.txt") ;
        }
        catch(Any e) {
            writeOutput("<br><br>ERROR:") ;
            writeDump(e);
        }
    } else {
        local.dayInp = new cfc.day11("day11_part1.txt") ;
    }
    //writedump(local.dayInp.getPuzzleInput());
    
    local.day11a = local.dayInp.showMe_pt1(true) ;
    
    //local.input_p2 = day11a ;

    local.day11b = local.dayInp.showMe_pt2(false) ;

    ////////////////////// 
    ////YOUR CODE HERE////
    //////////////////////

    // ANSWERS
    writeoutput( 
        "Day 11 - Part 1 Answer: " & local.day11a & "<br>"
        & 
        "Day 11 - Part 2 Answer: " & local.day11b & "<br>"
    ) ;
</cfscript>
