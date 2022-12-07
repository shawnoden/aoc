<cfscript>
    if(url?.test==true) {
        try {
            local.dayInp = new cfc.day10("day10_test.txt") ;
        }
        catch(Any e) {
            writeOutput("<br><br>ERROR:") ;
            writeDump(e);
        }
    } else {
        local.dayInp = new cfc.day10("day10_part1.txt") ;
    }
    //writedump(local.dayInp.getPuzzleInput());
    
    local.day10a = local.dayInp.showMe_pt1(true) ;
    
    //local.input_p2 = day10a ;

    local.day10b = local.dayInp.showMe_pt2(false) ;

    ////////////////////// 
    ////YOUR CODE HERE////
    //////////////////////

    // ANSWERS
    writeoutput( 
        "Day 10 - Part 1 Answer: " & local.day10a & "<br>"
        & 
        "Day 10 - Part 2 Answer: " & local.day10b & "<br>"
    ) ;
</cfscript>
