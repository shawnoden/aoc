<cfscript>
    if(url?.test==true) {
        try {
            local.dayInp = new cfc.day02("day02_test.txt") ;
        }
        catch(Any e) {
            writeOutput("<br><br>ERROR:") ;
            writeDump(e);
        }
    } else {
        local.dayInp = new cfc.day02("day02_part1.txt") ;
    }
    //writedump(local.dayInp.getPuzzleInput());
    
    local.day02a = local.dayInp.showMe_pt1(true) ;
    
    //local.input_p2 = day02a ;

    local.day02b = local.dayInp.showMe_pt2(false) ;

    ////////////////////// 
    ////YOUR CODE HERE////
    //////////////////////

    // ANSWERS
    writeoutput( 
        "Day 02 - Part 1 Answer: " & local.day02a & "<br>"
        & 
        "Day 02 - Part 2 Answer: " & local.day02b & "<br>"
    ) ;
</cfscript>
