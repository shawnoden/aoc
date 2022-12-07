<cfscript>
    if(url?.test==true) {
        try {
            local.dayInp = new cfc.day01("day01_test.txt") ;
        }
        catch(Any e) {
            writeOutput("<br><br>ERROR:") ;
            writeDump(e);
        }
    } else {
        local.dayInp = new cfc.day01("day01_part1.txt") ;
    }
    //writedump(local.dayInp.getPuzzleInput());
    
    local.day01a = local.dayInp.showMe_pt1(true) ;
    
    //local.input_p2 = day01a ;

    local.day01b = local.dayInp.showMe_pt2(false) ;

    ////////////////////// 
    ////YOUR CODE HERE////
    //////////////////////

    // ANSWERS
    writeoutput( 
        "Day 01 - Part 1 Answer: " & local.day01a & "<br>"
        & 
        "Day 01 - Part 2 Answer: " & local.day01b & "<br>"
    ) ;
</cfscript>
