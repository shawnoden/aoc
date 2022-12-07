<cfscript>
    if(url?.test==true) {
        try {
            local.dayInp = new cfc.day25("day25_test.txt") ;
        }
        catch(Any e) {
            writeOutput("<br><br>ERROR:") ;
            writeDump(e);
        }
    } else {
        local.dayInp = new cfc.day25("day25_part1.txt") ;
    }
    //writedump(local.dayInp.getPuzzleInput());
    
    local.day25a = local.dayInp.showMe_pt1(true) ;
    
    //local.input_p2 = day25a ;

    local.day25b = local.dayInp.showMe_pt2(false) ;

    ////////////////////// 
    ////YOUR CODE HERE////
    //////////////////////

    // ANSWERS
    writeoutput( 
        "Day 25 - Part 1 Answer: " & local.day25a & "<br>"
        & 
        "Day 25 - Part 2 Answer: " & local.day25b & "<br>"
    ) ;
</cfscript>
