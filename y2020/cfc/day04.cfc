component {

    variables.puzzleIn = [] ;
    //variables.checkFields = "" ;

    function init ( required String inp ) {
        var dayin = new cfc.Passport(arguments.inp) ;
        variables.puzzleIn = dayin.getDayInput() ;
        return this ;
    }

    public Array function getPuzzleInput(){ return variables.puzzleIn ; }

    public Any function showMe_pt1( required Array checkFields, fullResults = false ) {
        var resultsArr = [] ;
        //// Execute the local function to parse the puzzle and checkfields.
        var processInput = parseInput_pt1( arguments.checkFields ) ;
        
            resultsArr = processInput ;
        
        if(fullResults == true) { writeDump(label="fullresults", var=resultsArr) ; }
        
        return resultsArr.sum() ; //.filter( (el) => {el.pValid==true} ) ;
    }

    private Any function parseInput_pt1 ( required Array checkMe ) {
        /// Receives array of values to verify in the passport array of structs.
        var puzzIn = variables.puzzleIn.duplicate() ;
        var retval = [] ;
        //////////////////////////////////////////////////////////////
        /// Check each row of passports.
        for ( var pp IN puzzIn ) {
            var amIValid = checkValidPassport_pt1( pp,arguments.checkMe )
            retval.append( amIValid ) ;
        }
        /////////////////////////////////////////////////////////////
        //writeDump( lable="parseInput_pt1.retval", var=retval )
        return retval ;
    }

    private Boolean function checkValidPassport_pt1( required Struct pp, required Array cf ) {
        var lenPassport = structCount(pp) ;
        var lenCheckFields = arrayLen(cf)?:0 ;

        /// If lenCheckFields is less than length of passport fields, invalid.
        if ( lenPassport < lenCheckFields ) { 
                //writeOutput("neq"); 
                return false ; 
            }
        /// Check keys in checkfields.
        for ( var k IN arguments.cf ) {
            if(!structKeyExists(pp,k)){ 
                //writeDump("nf"); 
                return false ;
            };
        }
        
        return true ;
    }

    public Any function showMe_pt2( required Array checkFields, fullResults = true ) {
        var resultsArr = [] ;
        //// Execute the local function to parse the puzzle and checkfields.
        try {
        var processInput = parseInput_pt2( arguments.checkFields ) ;
        } 
        catch (any E) { writeDump(e)}
            resultsArr = processInput ;
        
        //if(fullResults == true) { writeDump(label="fullresults", var=resultsArr) ; }
        
        return resultsArr.sum() ; //.filter( (el) => {el.pValid==true} ) ;
    }

    private Any function parseInput_pt2 ( required Array checkMe ) {
        /// Receives array of values to verify in the passport array of structs.
        var puzzIn = variables.puzzleIn.duplicate() ;
        var retval = [] ;
        //////////////////////////////////////////////////////////////
        /// Check each row of passports.
        for ( var pp IN puzzIn ) {
            var amIValid = checkValidPassport_pt2( pp,arguments.checkMe )
            retval.append( amIValid ) ;
        }
        /////////////////////////////////////////////////////////////
        //writeDump( lable="parseInput_pt1.retval", var=retval )
        return retval ;
    }
    
    private Boolean function checkValidPassport_pt2( required Struct pp, required Array cf ) {
        var lenPassport = structCount(pp) ;
        var lenCheckFields = arrayLen(cf)?:0 ;
        var validFields = 0 ;
        /// If lenCheckFields is less than length of passport fields, invalid.
        if ( lenPassport < lenCheckFields ) { 
                //writeOutput("neq"); 
                return false ; 
            }
        /// Check keys in checkfields.
        for ( var k IN arguments.cf ) {
            //writeDump( [k, pp[k[1]], structKeyExists(pp,k[1]), compare(REMatchNoCase(k[2],pp[k[1]])[1]?:"", pp[k[1]]) ] )
            if(!structKeyExists(pp,k[1])){ 
                return false ;
            };
            //writeDump( [ k[2],pp[k[1]], reMatchNoCase(k[2],pp[k[1]])[1]==pp[k[1]]])
            if( compare(REMatchNoCase(k[2],pp[k[1]])[1]?:"", pp[k[1]]) == 0 ) { 
                validFields++ ;
            } 
        }
        
        return validFields == lenCheckFields ;
    }

}
