component {

    variables.puzzleIn = [] ;

    //variables.validPasswords = [] ;

    function init ( required String inp ) {
        var dayin = new cfc.Input(arguments.inp,false) ;
        variables.puzzleIn = dayin.getDayInput() ;
        return this ;
    }

    private Array function splitPWInput ( required Array inp ) {
        var retval = [] ;
        
        inp.map( (el) => {
            elarr = listToArray(el," ") ;
            rng = elarr[1].listToArray("-") ;
            ltr = left(elarr[2],elarr[2].len()-1) ;
            pw  = elarr[3] ;

            retval.append( [rng[1],rng[2],ltr,pw,0] ) ;
        } )

        return retval ;
    }

    private Array function parseRules_pt1( ) {
        var retval = []
        local.splitRules = splitPWInput(variables.puzzleIn) ;
        local.splitRules.each( (el) => { 
            el[5] = len( el[4].REreplace("[^#el[3]#]","","ALL") ) ;
            el[6] = el[5] >= el[1] && el[5] <= el[2] ;
            //if(el[6]==true) {retval.append( el )} ;
            retval.append( el ) ;
        } ) ;

        return retval ;
    }

    private Array function parseRules_pt2( ) {
        var retval = []
        local.splitRules = splitPWInput(variables.puzzleIn) ;
        local.splitRules.each( (el) => { 
            el[5] = 0 ; //len( el[4].REreplace("[^#el[3]#]","","ALL") ) ;
                el1 = el[3] == el[4][el[1]] ;
                el2 = el[3] == el[4][el[2]] ;
            el[6] = bitXOR( el1,el2 ) ;
            
            //if(el[6]==true) {retval.append( el )} ;
            retval.append( el ) ;
        } ) ;

        return retval ;
    }

    public Any function showMe_pt1( fullResults = false ) {
        if(fullResults == true) {
            var pwarr = parseRules_pt1() ;
            return pwarr ;
        } else {
            var pwarr = parseRules_pt1().filter( (el) => el[6] == true ) ;
            return pwarr.len() ;
        }
    }

    public Any function showMe_pt2( fullResults = false ) {
        if(fullResults == true) {
            var pwarr = parseRules_pt2() ;
            return pwarr ;
        } else {
            var pwarr = parseRules_pt2().filter( (el) => el[6] == true ) ;
            return pwarr.len() ;
        }
    }
}       
