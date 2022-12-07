<cfscript>
    /************** PARSE INPUT *********************/
        crlf = chr(13)&chr(10);
        inFile = fileRead("C:\dev\aoc_nof\2021\day02_input.txt").listToArray(crlf,false,true);
        inp = inFile.reduce( (prev,nxt) => { return prev.append( nxt.listToArray(" ") ) }, [] )
        ////writedump(inp)
    /**************************************************/    
    
    writeoutput(solvePart1(inp))
    writeoutput("<br>")
    writeoutput(solvePart2(inp))
    
    function solvePart1( inp ) {
        var moves = [0,0] ;
        for (var itm IN inp) {
            m = moves.duplicate();
            //writeDump(itm)
            switch (itm[1]) {
                case "forward":
                    moves = [m[1]+itm[2],m[2]];
                    break;
                case "backward":
                    moves = [momves[1]-itm[2],m[2]];
                    break;
                case "up":
                    moves = [m[1],m[2]-itm[2]];
                    break;
                case "down":
                    moves = [m[1],m[2]+itm[2]];
                    break;
            }
        }
        //writedump(moves)
        return moves[1]*moves[2] ;
        //////////////////////           

    }
    
    function solvePart2( inp ) {
        ////////////////////// 
        //writedump(puzzin)
        var moves = [0,0,0] ;
        for (var itm IN inp) {
            m = moves.duplicate();
            //writeDump(itm)
            switch (itm[1]) {
                case "forward":
                    moves = [m[1]+itm[2],m[2]+(itm[2]*m[3]),m[3]];
                    break;
                case "backward":
                    moves = [momves[1]-itm[2],m[2]-(itm[2]*m[3]),m[3]];
                    break;
                case "up":
                    moves = [m[1],m[2],m[3]-itm[2]];
                    break;
                case "down":
                    moves = [m[1],m[2],m[3]+itm[2]];
                    break;
            }
        }
        ////writedump(moves)
        return moves[1]*moves[2] ;
        //////////////////////       
    }
    
    
</cfscript>