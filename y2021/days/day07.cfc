<cfscript>
    if(url?.test==true) {
        try {
            local.dayInp = new cfc.day07("day07_test.txt") ;
        }
        catch(Any e) {
            writeOutput("<br><br>ERROR:") ;
            writeDump(e);
        }
    } else {
        local.dayInp = new cfc.day07("day07_part1.txt") ;
    }
    //writedump(local.dayInp.getPuzzleInput());
    
    local.day07a = local.dayInp.showMe_pt1(true) ;
    
    //local.input_p2 = day07a ;

    local.day07b = local.dayInp.showMe_pt2(false) ;

    ////////////////////// 
    ////YOUR CODE HERE////
    //////////////////////

    // ANSWERS
    writeoutput( 
        "Day 07 - Part 1 Answer: " & local.day07a & "<br>"
        & 
        "Day 07 - Part 2 Answer: " & local.day07b & "<br>"
    ) ;
</cfscript>
