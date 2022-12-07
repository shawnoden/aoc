<cfscript>
    if(url?.test==true) {
        try {
            local.dayInp = new cfc.day19("day19_test.txt") ;
        }
        catch(Any e) {
            writeOutput("<br><br>ERROR:") ;
            writeDump(e);
        }
    } else {
        local.dayInp = new cfc.day19("day19_part1.txt") ;
    }
    //writedump(local.dayInp.getPuzzleInput());
    
    local.day19a = local.dayInp.showMe_pt1(true) ;
    
    //local.input_p2 = day19a ;

    local.day19b = local.dayInp.showMe_pt2(false) ;

    ////////////////////// 
    ////YOUR CODE HERE////
    //////////////////////

    // ANSWERS
    writeoutput( 
        "Day 19 - Part 1 Answer: " & local.day19a & "<br>"
        & 
        "Day 19 - Part 2 Answer: " & local.day19b & "<br>"
    ) ;
</cfscript>
