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
        
        ////////////////////// 
        ////YOUR CODE HERE////
        //////////////////////               

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

        ////////////////////// 
        ////YOUR CODE HERE////
        //////////////////////               

        return retval ;
    }

