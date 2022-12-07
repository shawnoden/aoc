<cfscript>
    if(url?.test==true) {
        try {
            local.dayInp = new cfc.day17("day17_test.txt") ;
        }
        catch(Any e) {
            writeOutput("<br><br>ERROR:") ;
            writeDump(e);
        }
    } else {
        local.dayInp = new cfc.day17("day17_part1.txt") ;
    }
    //writedump(local.dayInp.getPuzzleInput());
    
    local.day17a = local.dayInp.showMe_pt1(true) ;
    
    //local.input_p2 = day17a ;

    local.day17b = local.dayInp.showMe_pt2(false) ;

    ////////////////////// 
    ////YOUR CODE HERE////
    //////////////////////

    // ANSWERS
    writeoutput( 
        "Day 17 - Part 1 Answer: " & local.day17a & "<br>"
        & 
        "Day 17 - Part 2 Answer: " & local.day17b & "<br>"
    ) ;
</cfscript>
