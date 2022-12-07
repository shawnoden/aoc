<cfscript>
    if(url?.test==true) {
        try {
            local.dayInp = new cfc.day06("day06_test.txt") ;
        }
        catch(Any e) {
            writeOutput("<br><br>ERROR:") ;
            writeDump(e);
        }
    } else {
        local.dayInp = new cfc.day06("day06_part1.txt") ;
    }
    //writedump(local.dayInp.getPuzzleInput());
    
    local.day06a = local.dayInp.showMe_pt1(true) ;
    
    //local.input_p2 = day06a ;

    local.day06b = local.dayInp.showMe_pt2(false) ;

    ////////////////////// 
    ////YOUR CODE HERE////
    //////////////////////

    // ANSWERS
    writeoutput( 
        "Day 06 - Part 1 Answer: " & local.day06a & "<br>"
        & 
        "Day 06 - Part 2 Answer: " & local.day06b & "<br>"
    ) ;
</cfscript>
