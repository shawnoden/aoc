<cfscript>
    /************** PARSE INPUT *********************/
        crlf = chr(13)&chr(10);
        inFile = fileRead("C:\dev\aoc_nof\2021\day03_input.txt").listToArray(crlf,false,true);
        inp = inFile.reduce( (prev,nxt) => { return prev.append( nxt ) }, [] )
        ////writedump(inp)
    /**************************************************/    
    
    writeoutput(solvePart1(inp))
    writeoutput("<br>")
    writeoutput(solvePart2(inp))
    
    function solvePart1( inp ) {
        //// Can't find my solution for Part 1???
return false
    }
    
    function solvePart2( inp ) {
        ////////////////////// 
        di = inp ;

        rl = di.len() ;    // # of rows
        cw = di[1].len() ; // # of cols

        // lifeSupportRating = oxygenGeneratorRating * CO2ScrubberRating
        //ogr = most common ; csr = least common

        ir_og = di ; /// Default input array to the initial input array.
        ir_cs = di ; /// Default input array to the initial input array. 
        // Loop through number of values in each column to get 1 final value.
        for (i=1; i<=cw; i++) {
            ir_og = reduceInpArr(ir_og,i,1)
            ir_cs = reduceInpArr(ir_cs,i,0)
        }

        //writedump([ir_og[1],ir_cs[1]])
        ogDec = InputBaseN(ir_og[1],2)
        csDec = InputBaseN(ir_cs[1],2)
        //writeoutput(ogDec*csDec);
        ////////////////////// 
        return ogDec*csDec ;
        
    }

    
    Array function reduceInpArr(required Array inp, required Numeric pos, required Numeric type ) {
        /// Grrrr... magic number /// Type : 1 = O2 Generator, 0 = CO2 Scrubber
        inpR = inp.len() ; // Calc num rows
        if(inpR == 1){ return inp }
        // Calc most/least common significant digit
        os  = inp.reduce( (prev,nxt) => { return prev+nxt[pos] }, 0 )    // How many ones?
        zs  = inpR - os ; // How many zeros?
        gtr = (os >= zs)?type:abs(type-1)  /// 1:0 == O2 Gen; 0:1 == CO2 Scrub

        return inp.filter( (itm) => itm[i] == gtr );
    }

    
</cfscript>