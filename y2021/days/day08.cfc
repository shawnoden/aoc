<cfscript>
    if(url?.test==true) {
        try {
            local.dayInp = new cfc.day08("day08_test.txt") ;
        }
        catch(Any e) {
            writeOutput("<br><br>ERROR:") ;
            writeDump(e);
        }
    } else {
        local.dayInp = new cfc.day08("day08_part1.txt") ;
    }
    //writedump(local.dayInp.getPuzzleInput());
    
    local.day08a = local.dayInp.showMe_pt1(true) ;
    
    //local.input_p2 = day08a ;

    local.day08b = local.dayInp.showMe_pt2(false) ;

    ////////////////////// 
    ////YOUR CODE HERE////
    //////////////////////

    // ANSWERS
    writeoutput( 
        "Day 08 - Part 1 Answer: " & local.day08a & "<br>"
        & 
        "Day 08 - Part 2 Answer: " & local.day08b & "<br>"
    ) ;
</cfscript>
