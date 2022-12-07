<cfscript>
    /**************** PARSE INPUT *********************/
    inp=[];
    inFile = fileRead("C:\dev\aoc_nof\2021\day09_input.txt").listToArray(chr(13)&chr(10));
    inFile.map( (el) => inp.append(el.listToArray("")) ) ;
    
    ////writedump(inp)

   /****************** SOLUTIONS *********************/

    ////writeDump(solvePart1(inp))
    writeoutput("<br>")
    writeoutput(solvePart2(inp))
    writeoutput("<br>")
    
    function solvePart1( inp ) {
        var retval = 0 ;
        retval = findLowPoints(inp).reduce((prev,nxt)=>{ return prev.append(nxt[3]+1)},[] ).sum();
        return retval
       //// ANSWER : 436 Correct
    }
    
    function solvePart2( inp ) {
        var retval = 0 ;
        var lps = findLowPoints(inp).reduce((prev,nxt)=>{ return prev.append(nxt) },[] ) 
        var basinSizes = [] ;
        for (var r IN lps) {
            //writedump(r)
            findBasinSize( r, inp)
        }
        
        
        return retval
        //// ANSWER : 
    }

    /******************* UTILITIES *********************/
    function makeBlockedMap( inputMap ) {
        /// Block in area to ease calcs.
        // Add row of 9s
        var inp = inputMap.map( (el)=>el.prepend(9).append(9) )
        var rowLen = inp[1].len() ;
        var toAdd = []; toAdd.set(1,rowLen,9)
          inp.prepend( toAdd )
          inp.append( toAdd )
        return inp ;
    }


    function findLowPoints( inputMap ) {
        inp = makeBlockedMap(inputMap);
////        writedump(inp)
        ///////////////////////////////////////////////////

        var lowpoints = [] ;    
        
        for (var rownum=2;rownum<inp.len();rownum++) {
            var rlen = inp[rownum].len() ;
            for ( var colnum=2; colnum<rlen; colnum++) {
                var thisSpot = inp[rownum][colnum] ;
                var lspot = (inp[rownum][colnum-1])>thisSpot ;
                var rspot = (inp[rownum][colnum+1])>thisSpot ;
                var tspot = (inp[rownum-1][colnum])>thisSpot ;
                var uspot = (inp[rownum+1][colnum])>thisSpot ;
                //writedump([thisSpot,lspot,rspot,tspot,uspot])
                if(lspot && tspot && rspot && uspot) { lowpoints.append([colnum-1,rownum-1,thisSpot]) }
            }            
        }
        //lowpoints.append(inp)
        return lowpoints ;
    }

    function findBasinSize( lowpoint, inputMap ) {
        var retval = 0 ;

        var lpX = arguments.lowpoint[2]+1 ;
        var lpY = arguments.lowpoint[1]+1 ;
        var lpV = arguments.lowpoint[3]+1 ;

        var iM = makeBlockedMap(arguments.inputMap) ;


////writedump([lpx,lpy,lpv,iM])

        var toTheLeft = 0 ;
        var toTheRight = 0 ;
        var toTheUp = 0 ;
        var toTheDown = 0 ;

        var thisRow = iM[lpX] ;
        var thisRowStart = lpy ;
        var thisCol = iM.reduce((prev,nxt)=>{return prev.append(nxt[lpY])},[] ) ;
        var thisColStart = lpX ;

        //writedump([thisRowStart,thisRow]) ;
        //writedump([thisColStart,thisCol]) ;

        tll = thisRow.filter( (el,idx)=>idx>thisRowStart  ); 
        writeoutput(lpv-1)
        writedump(var=tll, label="tll")

    }
</cfscript>
