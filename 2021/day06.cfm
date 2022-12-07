<cfscript>
    /**************** PARSE INPUT *********************/
    crlf = chr(13)&chr(10);
    crlf2 = chr(13)&chr(10)&chr(13)&chr(10);

    inFile = fileRead("C:\dev\aoc_nof\2021\day06_input.txt").listToArray();
    inp = inFile

    ////writedump(inp)

    /****************** SOLUTIONS *********************/

    writeDump(solvePart1(inp,80))
    writeoutput("<br>")
    writeoutput(solvePart2(inp,256))
    writeoutput("<br>")
    
    function solvePart1( inp,days=1 ) {
        var retval = 0 ;
        
        var accum = [ 0,0,0,0,0,0,0,0,0 ] ;  /// Holds number of fish at each day.

        inp.map( ( el ) => { accum[el+1] += 1 } ) ; /// Map the input to the accumulator.

        //writedump(accum) ;
        
        for (var d=1; d<=days; d++) {
            newFish = accum.shift() ; /// Removes first array element ( Day 0 fish )
            accum[7] += newFish ;     /// Adds those former Day 0 fish to Day 6
            accum.append(newFish) ;   /// Since those former Day 8 fish are now moved to 7, replace Day 8 with Day 0 New Fish
            //writedump(accum);
        }
        
        ///retval = accum.sum() ;
        retval = accum.reduce( (prev,nxt) => { return precisionEvaluate(prev+nxt) },0).int() ;
        return retval
       //// ANSWER : 373378 
    }
    
    function solvePart2( inp, days=1 ) {
        return solvePart1(inp,days)
       //// ANSWER :  150307958118 << Too low.
       ////          1682576647495 << Correct
    }

    /******************* UTILITIES *********************/

</cfscript>
