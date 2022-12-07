<cfscript>
    if(url?.test==true) {
        try {
            local.dayInp = new cfc.day21("day21_test.txt") ;
        }
        catch(Any e) {
            writeOutput("<br><br>ERROR:") ;
            writeDump(e);
        }
    } else {
        local.dayInp = new cfc.day21("day21_part1.txt") ;
    }
    //writedump(local.dayInp.getPuzzleInput());
    
    local.day21a = local.dayInp.showMe_pt1(true) ;
    
    //local.input_p2 = day21a ;

    local.day21b = local.dayInp.showMe_pt2(false) ;

    ////////////////////// 
    ////YOUR CODE HERE////
    //////////////////////

    // ANSWERS
    writeoutput( 
        "Day 21 - Part 1 Answer: " & local.day21a & "<br>"
        & 
        "Day 21 - Part 2 Answer: " & local.day21b & "<br>"
    ) ;
</cfscript>
