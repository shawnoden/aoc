<cfscript>
    if(url?.test==true) {
        try {
            local.dayInp = new cfc.day24("day24_test.txt") ;
        }
        catch(Any e) {
            writeOutput("<br><br>ERROR:") ;
            writeDump(e);
        }
    } else {
        local.dayInp = new cfc.day24("day24_part1.txt") ;
    }
    //writedump(local.dayInp.getPuzzleInput());
    
    local.day24a = local.dayInp.showMe_pt1(true) ;
    
    //local.input_p2 = day24a ;

    local.day24b = local.dayInp.showMe_pt2(false) ;

    ////////////////////// 
    ////YOUR CODE HERE////
    //////////////////////

    // ANSWERS
    writeoutput( 
        "Day 24 - Part 1 Answer: " & local.day24a & "<br>"
        & 
        "Day 24 - Part 2 Answer: " & local.day24b & "<br>"
    ) ;
</cfscript>
