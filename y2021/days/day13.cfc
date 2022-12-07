<cfscript>
    if(url?.test==true) {
        try {
            local.dayInp = new cfc.day13("day13_test.txt") ;
        }
        catch(Any e) {
            writeOutput("<br><br>ERROR:") ;
            writeDump(e);
        }
    } else {
        local.dayInp = new cfc.day13("day13_part1.txt") ;
    }
    //writedump(local.dayInp.getPuzzleInput());
    
    local.day13a = local.dayInp.showMe_pt1(true) ;
    
    //local.input_p2 = day13a ;

    local.day13b = local.dayInp.showMe_pt2(false) ;

    ////////////////////// 
    ////YOUR CODE HERE////
    //////////////////////

    // ANSWERS
    writeoutput( 
        "Day 13 - Part 1 Answer: " & local.day13a & "<br>"
        & 
        "Day 13 - Part 2 Answer: " & local.day13b & "<br>"
    ) ;
</cfscript>
