<cfscript>
    if(url?.test==true) {
        try {
            local.dayInp = new cfc.day20("day20_test.txt") ;
        }
        catch(Any e) {
            writeOutput("<br><br>ERROR:") ;
            writeDump(e);
        }
    } else {
        local.dayInp = new cfc.day20("day20_part1.txt") ;
    }
    //writedump(local.dayInp.getPuzzleInput());
    
    local.day20a = local.dayInp.showMe_pt1(true) ;
    
    //local.input_p2 = day20a ;

    local.day20b = local.dayInp.showMe_pt2(false) ;

    ////////////////////// 
    ////YOUR CODE HERE////
    //////////////////////

    // ANSWERS
    writeoutput( 
        "Day 20 - Part 1 Answer: " & local.day20a & "<br>"
        & 
        "Day 20 - Part 2 Answer: " & local.day20b & "<br>"
    ) ;
</cfscript>
