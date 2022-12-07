<cfscript>
    if(url?.test==true) {
        try {
            local.dayInp = new cfc.day23("day23_test.txt") ;
        }
        catch(Any e) {
            writeOutput("<br><br>ERROR:") ;
            writeDump(e);
        }
    } else {
        local.dayInp = new cfc.day23("day23_part1.txt") ;
    }
    //writedump(local.dayInp.getPuzzleInput());
    
    local.day23a = local.dayInp.showMe_pt1(true) ;
    
    //local.input_p2 = day23a ;

    local.day23b = local.dayInp.showMe_pt2(false) ;

    ////////////////////// 
    ////YOUR CODE HERE////
    //////////////////////

    // ANSWERS
    writeoutput( 
        "Day 23 - Part 1 Answer: " & local.day23a & "<br>"
        & 
        "Day 23 - Part 2 Answer: " & local.day23b & "<br>"
    ) ;
</cfscript>
