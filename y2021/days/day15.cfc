<cfscript>
    if(url?.test==true) {
        try {
            local.dayInp = new cfc.day15("day15_test.txt") ;
        }
        catch(Any e) {
            writeOutput("<br><br>ERROR:") ;
            writeDump(e);
        }
    } else {
        local.dayInp = new cfc.day15("day15_part1.txt") ;
    }
    //writedump(local.dayInp.getPuzzleInput());
    
    local.day15a = local.dayInp.showMe_pt1(true) ;
    
    //local.input_p2 = day15a ;

    local.day15b = local.dayInp.showMe_pt2(false) ;

    ////////////////////// 
    ////YOUR CODE HERE////
    //////////////////////

    // ANSWERS
    writeoutput( 
        "Day 15 - Part 1 Answer: " & local.day15a & "<br>"
        & 
        "Day 15 - Part 2 Answer: " & local.day15b & "<br>"
    ) ;
</cfscript>
