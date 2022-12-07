<cfscript>
component accessors="false" {
    
    property Numeric StartDigit ;
    property Numeric EndDigit ;
    
    function init ( required Array inp ) {
        variables.StartDigit = arguments.inp[1];
        variables.EndDigit = arguments.inp[2];
        return this ;
    }
    
    public Array function buildDigits () {
        var start = variables.StartDigit ;
        var end   = variables.EndDigit ;
    }
    
    public Any function checkDigitCompliance( required Numeric inDigit ) {
        local.theDigit = arguments.inDigit ;
        // 6 digits
        if ( local.theDigit.len() != 6 ) { return false ; }
        
        // In range
        if ( local.theDigit lt variables.StartDigit || local.theDigit gt variables.EndDigit ) { return false ; }
        
        // Has Adjacent Same Digits
        var adjDigits local.theDigit.listToArray("").reduce( function(prev,item) {return prev==item ;},false ) ;
        
        
        return true ;
    }
}
</cfscript>
