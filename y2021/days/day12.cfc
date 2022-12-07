<cfscript>
    if(url?.test==true) {
        try {
            local.dayInp = new cfc.day12("day12_test.txt") ;
        }
        catch(Any e) {
            writeOutput("<br><br>ERROR:") ;
            writeDump(e);
        }
    } else {
        local.dayInp = new cfc.day12("day12_part1.txt") ;
    }
    //writedump(local.dayInp.getPuzzleInput());
    
    local.day12a = local.dayInp.showMe_pt1(true) ;
    
    //local.input_p2 = day12a ;

    local.day12b = local.dayInp.showMe_pt2(false) ;

    ////////////////////// 
    ////YOUR CODE HERE////
    //////////////////////

    // ANSWERS
    writeoutput( 
        "Day 12 - Part 1 Answer: " & local.day12a & "<br>"
        & 
        "Day 12 - Part 2 Answer: " & local.day12b & "<br>"
    ) ;
</cfscript>
