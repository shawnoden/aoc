component {
    variables.puzzleIn = [] ;

    function init ( required String inp ) {
        var dayin = new cfc.Input(arguments.inp) ;
        variables.puzzleIn = dayin.getDayInput() ;
        return this ;
    }

    public Array function getPuzzleInput(){ return variables.puzzleIn ; }

    public Any function showMe_pt1( fullResults = false ) {
        var resultsArr = [] ;
        //// Execute the local function to parse the puzzle and inArgs.
        var processInput = parseInput_pt1( ) ;
            resultsArr = processInput ;
            //writeDump(processInput)
        return resultsArr ;
    }

    private Any function parseInput_pt1 ( ) {
        var puzzIn = variables.puzzleIn.duplicate() ;
        var retval = [] ;
        var rsVal =[] ;


        for (var r1 IN variables.puzzleIn ) {
            ////writeOutput(r1 & " >>>> ")

            /// Much better to just use simple binary replacement. Duh.
            var theRowCode  = r1.left(7).replaceNoCase("F",0,"ALL").replaceNoCase("B",1,"ALL").inputBaseN(2) ;
            var theSeatCode = r1.mid(8,3).replaceNoCase("L",0,"ALL").replaceNoCase("R",1,"ALL").inputBaseN(2) ;
            var seatID = theRowCode * 8 + theSeatCode ;
            
            //writeDump(theRowCode)
            //writeDump(theSeatCode)
            //writeOutput("ROW: " & theRowCode & " SEAT: " & theSeatCode & " >> SeatID: " & seatID & "<br>");
            
            rsval.append(seatID)
        }

        retval = rsval?.max()?:0 ;
        
        return retval ;
    }

    public Any function showMe_pt2( fullResults = false ) {
        var resultsArr = [] ;
        //// Execute the local function to parse the puzzle and inArgs.
        var processInput = parseInput_pt2( ) ;
            resultsArr = processInput ;
            //writeDump(processInput)
        return resultsArr ;
    }

    private Any function parseInput_pt2 ( ) {
        var puzzIn = variables.puzzleIn.duplicate() ;
        var retval = [] ;
        var rsVal =[] ;

        for (var r1 IN variables.puzzleIn ) {
            ////writeOutput(r1 & " >>>> ")

            /// Much better to just use simple binary replacement. Duh.
            var theRowCode  = r1.left(7).replaceNoCase("F",0,"ALL").replaceNoCase("B",1,"ALL").inputBaseN(2) ;
            var theSeatCode = r1.mid(8,3).replaceNoCase("L",0,"ALL").replaceNoCase("R",1,"ALL").inputBaseN(2) ;
            var seatID = theRowCode * 8 + theSeatCode ;
            
            //writeDump(theRowCode)
            //writeDump(theSeatCode)
            //writeOutput("ROW: " & theRowCode & " SEAT: " & theSeatCode & " >> SeatID: " & seatID & "<br>");
            
            rsval.append(seatID)
        }

        //writeDump(rsval)

        var aircraftConfig = [rsval?.min()?:0, rsval?.max()?:0]
        //writeDump(aircraftConfig)

        rsval.sort("Numeric")
        //writeDump(rsval);
        r2 = rsval.filter( function(itm,idx,arr) {
            if (idx+1 < arr.len()) { 
                ////writeDump( [idx,itm,arr[idx+1]-arr[idx]] )
                i1 = idx+1
                i2 = idx
                return (arr[i1]-arr[i2] > 1) ;
                } else { 
                    return false ;
                }
            } 
        ) ;
        //writeDUmp(r2)
        // r2 is the seat number that has a skip after it. So r2+1 = return value. 

        retval = r2[1]+1 ;

        return retval ;
    }

/*
    private Any function interpretRowGroup ( required String interpreter, required Array chk ) {
        //writeDump(chk)
        /// receiving an array of instructions and an array of [startrow, endrow].
        switch ( arguments.interpreter ) {
            case "F":
                var pickSet = 1 ;
                break ;
            case "B":
                var pickSet = 2 ;
                break ;
            case "L":
                var pickSet = 1 ;
                break ;
            case "R":
                var pickSet = 2 ;
                break ;
            default:
                return false ;
        }
        
        var retval = [] ;
        
        var inHalf = (chk[2]-chk[1])\2?:0 ; 

        var checkVals = [ [ chk[1],chk[1]+inHalf],[chk[1]+inHalf+1,chk[2]] ]
        if( arguments.interpreter == "L" || arguments.interpreter == "R" ) {
                writeDump([checkVals,checkVals[pickset],arguments.interpreter, inHalf])
        }
        
        return checkVals[pickset] ;
    }
*/

}
