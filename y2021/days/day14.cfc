<cfscript>
    if(url?.test==true) {
        try {
            local.dayInp = new cfc.day14("day14_test.txt") ;
        }
        catch(Any e) {
            writeOutput("<br><br>ERROR:") ;
            writeDump(e);
        }
    } else {
        local.dayInp = new cfc.day14("day14_part1.txt") ;
    }
    //writedump(local.dayInp.getPuzzleInput());
    
    local.day14a = local.dayInp.showMe_pt1(true) ;
    
    //local.input_p2 = day14a ;

    local.day14b = local.dayInp.showMe_pt2(false) ;

    ////////////////////// 
    ////YOUR CODE HERE////
    //////////////////////

    // ANSWERS
    writeoutput( 
        "Day 14 - Part 1 Answer: " & local.day14a & "<br>"
        & 
        "Day 14 - Part 2 Answer: " & local.day14b & "<br>"
    ) ;
</cfscript>
