<cfscript>
    if(url?.test==true) {
        try {
            local.dayInp = new cfc.day16("day16_test.txt") ;
        }
        catch(Any e) {
            writeOutput("<br><br>ERROR:") ;
            writeDump(e);
        }
    } else {
        local.dayInp = new cfc.day16("day16_part1.txt") ;
    }
    //writedump(local.dayInp.getPuzzleInput());
    
    local.day16a = local.dayInp.showMe_pt1(true) ;
    
    //local.input_p2 = day16a ;

    local.day16b = local.dayInp.showMe_pt2(false) ;

    ////////////////////// 
    ////YOUR CODE HERE////
    //////////////////////

    // ANSWERS
    writeoutput( 
        "Day 16 - Part 1 Answer: " & local.day16a & "<br>"
        & 
        "Day 16 - Part 2 Answer: " & local.day16b & "<br>"
    ) ;
</cfscript>
