<cfscript>
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
    
    local.day05a = local.dayInp.showMe_pt1(true) ;
    
    //local.input_p2 = day05a ;

    local.day05b = local.dayInp.showMe_pt2(false) ;

    ////////////////////// 
    ////YOUR CODE HERE////
    //////////////////////

    // ANSWERS
    writeoutput( 
        "Day 05 - Part 1 Answer: " & local.day05a & "<br>"
        & 
        "Day 05 - Part 2 Answer: " & local.day05b & "<br>"
    ) ;
</cfscript>
