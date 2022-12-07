<cfscript>
    if(url?.test==true) {
        try {
            local.dayInp = new cfc.day22("day22_test.txt") ;
        }
        catch(Any e) {
            writeOutput("<br><br>ERROR:") ;
            writeDump(e);
        }
    } else {
        local.dayInp = new cfc.day22("day22_part1.txt") ;
    }
    //writedump(local.dayInp.getPuzzleInput());
    
    local.day22a = local.dayInp.showMe_pt1(true) ;
    
    //local.input_p2 = day22a ;

    local.day22b = local.dayInp.showMe_pt2(false) ;

    ////////////////////// 
    ////YOUR CODE HERE////
    //////////////////////

    // ANSWERS
    writeoutput( 
        "Day 22 - Part 1 Answer: " & local.day22a & "<br>"
        & 
        "Day 22 - Part 2 Answer: " & local.day22b & "<br>"
    ) ;
</cfscript>
