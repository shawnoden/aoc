<cfscript>
    if(url?.test==true) {
        try {
            local.dayInp = new cfc.day18("day18_test.txt") ;
        }
        catch(Any e) {
            writeOutput("<br><br>ERROR:") ;
            writeDump(e);
        }
    } else {
        local.dayInp = new cfc.day18("day18_part1.txt") ;
    }
    //writedump(local.dayInp.getPuzzleInput());
    
    local.day18a = local.dayInp.showMe_pt1(true) ;
    
    //local.input_p2 = day18a ;

    local.day18b = local.dayInp.showMe_pt2(false) ;

    ////////////////////// 
    ////YOUR CODE HERE////
    //////////////////////

    // ANSWERS
    writeoutput( 
        "Day 18 - Part 1 Answer: " & local.day18a & "<br>"
        & 
        "Day 18 - Part 2 Answer: " & local.day18b & "<br>"
    ) ;
</cfscript>
