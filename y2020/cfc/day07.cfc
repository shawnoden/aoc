component {
    variables.puzzleIn = [] ;

    function init ( required String inp ) {
        var dayin = new cfc.Bag(arguments.inp) ;
        variables.puzzleIn = dayin.getDayInput() ;
        return this ;
    }

    public Array function getPuzzleInput(){ return variables.puzzleIn ; }

    public Any function showMe_pt1( fullResults = false ) {
        //writedump(getPuzzleInput());
        var retval = 0 ;
        //// Execute the local function to parse the puzzle and inArgs.
        var processInput = parseInput_pt1( ) ;
            retval = processInput.sum() ;
            //writeDump(retval)
        return retval ;
    }

    private Any function parseInput_pt1 (  ) {
        var puzzIn = variables.puzzleIn.duplicate() ;
        var retval = [] ;
        //writeDump(puzzIn)
        var crlf = chr(13)&chr(10);
        for (var r IN puzzIn) {
            out  = r.REreplace(crlf,"","ALL")
            out2 = arrayToList(listToArray(out,""),",").listRemoveDuplicates(",")
            retval.append(out2.listlen())
        }

        //writeDump(retval.sum())
        return retval ;
    }

    public Any function showMe_pt2( fullResults = false ) {
        var retval = 0 ;
        //// Execute the local function to parse the puzzle and inArgs.
        var processInput = parseInput_pt2( ) ;
            retval = processInput ;
            //writeDump(retval)
        return retval ;
    }

    private Any function parseInput_pt2 ( ) {
        var puzzIn = variables.puzzleIn.duplicate() ;
        var retval = [] ;
        //writeDump(puzzIn)

        //writeDump(retval.sum())
        return retval.max() ;
    }

}
