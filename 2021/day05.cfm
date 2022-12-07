<cfscript>
    /************** PARSE INPUT *********************/
    crlf = chr(13)&chr(10);
    crlf2 = chr(13)&chr(10)&chr(13)&chr(10);

    inFile = fileRead("C:\dev\aoc_nof\2021\day05_input.txt").listToArray(crlf);
    inp = inFile
        .reduce( 
            (prev,nxt) => { 
                return prev.append( 
                    nxt
                        .listToArray(crlf)
                        .map( 
                            (itm) => itm
                                .listToArray(" -> ",false,true)
                                .map( (itm2) => itm2.listToArray(","))
                        ) 
                        
                )   
            }, [] 
        )

    ///writedump(inp)

    /**************************************************/    
//// TODO: My grid creation is slow. Need to find a faster solution.

    //writeoutput(solvePart1(inp))
    writeoutput("<br>")
    writeoutput(solvePart2(inp))
    writeoutput("<br>")
    
    function solvePart1( inp ) {
        /// Filter for Horizontal and Vertical lines.
        hvlines = inp.filter( (el)=>el[1][1][1]==el[1][2][1] || el[1][1][2]==el[1][2][2] )
        //writedump(hvlines)
        

        grid = makeGrid(1000) ;
        ////writedump(grid)

        //// update grid with lines
        for (hv IN hvlines){
            grid = populateGridFromLines(hv[1],grid)
        }

        //writedump(grid)
        overlaps = grid.reduce( (prev,nxt) => { return prev + nxt.filter((el)=>el>1).len() }, 0 )
        
        return overlaps
        //// 5585
    }
    
    function solvePart2( inp ) {
        alllines = inp
        grid = makeGrid(1000) ;
        
        //// update grid with lines 
        for (ln IN alllines){
            //writedump(ln[1])
            grid = populateGridFromLines(ln[1],grid)
            /*
            writeoutput("<b>" & ln[1][1].tolist() & "|" & ln[1][2].tolist() & "</b><br>")
            for (r IN grid) {
                writeoutput(r.tolist() & "<br>")
            }
            writeoutput("<hr>")
            */
        }
        

//writedump(grid)

        overlaps = grid.reduce( (prev,nxt) => { return prev + nxt.filter((el)=>el>1).len() }, 0 )
        
        return overlaps
       //// 17193
    }
    

    /******************* UTILITIES *********************/
    function makeGrid(size=10) {
        gridsize=size ; 
        gr = [];
        gr.set(1,gridsize,0) ;
        grid = [] ;
        grid.set(1,gridsize,gr);

        return grid ;
    }

    function populateGridFromLines(line,grid) {
        if( line[1][1]==line[2][1] ) { 
            //// vertical line
            var basePos  = line[1][1]+1 ;
            var startPos = min(line[1][2],line[2][2])+1;
            var endPos   = max(line[1][2],line[2][2])+1;
            
            //writedump([basePos,startPos,endPos])

            for ( var m=startPos;m<=endPos;m++) {
                grid[m][basePos] +=1
            }
        } else if ( line[1][2]==line[2][2] ) {
            //// horizontal line
            var basePos  = line[1][2]+1 ;
            var startPos = min(line[1][1],line[2][1])+1;
            var endPos   = max(line[1][1],line[2][1])+1;
            //writedump([basePos,startPos,endPos])
            for ( var m=startPos;m<=endPos;m++) {
                grid[basePos][m] +=1
            }
        } else {
            //9,7 -> 7,9 = 9,7 ; 8,8 ;
            //// diagonal line
            var startPosX = line[1][1]+1;  // 9,7 == 7
            var endPosX   = line[2][1]+1;
            var startPosY = line[1][2]+1;  
            var endPosY   = line[2][2]+1;

            var stepX = (startPosX <= endPosX)?1:-1 ;
            var stepY = (startPosY <= endPosY)?1:-1 ;
            var steps = abs(startPosX-endPosX)+1 ;

            var x = startPosX
            var y = startPosY

            for (var s = 1; s<=steps; s++ ) {
                //// My points are backwards. TODO: Figure out where my calcs are off. 
                grid[y][x] += 1
                //writeoutput( x & "," & y & "<br>")
                x += stepX ;
                y += stepY ;
                /*
                writeoutput("<b>" & ln[1][1].tolist() & "|" & ln[1][2].tolist() & "</b><br>")
                for (r IN grid) {
                    writeoutput(r.tolist() & "<br>")
                }
                writeoutput("<hr>")
                */
            }
        }
        return grid
    }
    /*
    for (r IN grid) {
        writeoutput(r.tolist() & "<br>")
    }
    */
</cfscript>