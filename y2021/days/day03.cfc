<cfscript>
    if(url?.test==true) {
        try {
            local.dayInp = new cfc.day03("day03_test.txt") ;
        }
        catch(Any e) {
            writeOutput("<br><br>ERROR:") ;
            writeDump(e);
        }
    } else {
        local.dayInp = new cfc.day03("day03_part1.txt") ;
    }
    //writedump(local.dayInp.getPuzzleInput());
    
    local.day03a = local.dayInp.showMe_pt1(true) ;
    
    //local.input_p2 = day03a ;

    local.day03b = local.dayInp.showMe_pt2(false) ;

    ////////////////////// 
    ////YOUR CODE HERE////
    //////////////////////

    // ANSWERS
    writeoutput( 
        "Day 03 - Part 1 Answer: " & local.day03a & "<br>"
        & 
        "Day 03 - Part 2 Answer: " & local.day03b & "<br>"
    ) ;
</cfscript>
