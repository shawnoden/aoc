<cfscript>
    if(url?.test==true) {
        try {
            local.dayInp = new cfc.day09("day09_test.txt") ;
        }
        catch(Any e) {
            writeOutput("<br><br>ERROR:") ;
            writeDump(e);
        }
    } else {
        local.dayInp = new cfc.day09("day09_part1.txt") ;
    }
    //writedump(local.dayInp.getPuzzleInput());
    
    local.day09a = local.dayInp.showMe_pt1(true) ;
    
    //local.input_p2 = day09a ;

    local.day09b = local.dayInp.showMe_pt2(false) ;

    ////////////////////// 
    ////YOUR CODE HERE////
    //////////////////////

    // ANSWERS
    writeoutput( 
        "Day 09 - Part 1 Answer: " & local.day09a & "<br>"
        & 
        "Day 09 - Part 2 Answer: " & local.day09b & "<br>"
    ) ;
</cfscript>
