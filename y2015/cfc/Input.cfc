<cfscript>
component accessors="true" {    
    //https://adventofcode.com/2015/day/3

    property String d3Input ; /// given directions

    function init ( required String inp ) {
        variables.d3Input = makeSafeInput( arguments.inp.lcase() );
        return this ;
    }
    
    private String function makeSafeInput ( required String inp ) {
        local.parsedInput = arguments.inp.replaceNoCase("^","n","ALL") 
            .replaceNoCase("v","s","ALL") 
            .replaceNoCase("<","w","ALL") 
            .replaceNoCase(">","e","ALL") ;
        return local.parsedInput ;
    }
/*    
    public Struct function makeSafeMovementArrays ( required String inp, required Numeric numSantas ) {
        local.parsedInput = listToArray(makeSafeInput(arguments.inp),"") ;
        
        local.retVal = {} ;
        
        for ( var nS=1; ns<=arguments.numSantas; nS++ ) {
            var s = {"s#nS#":[]} ;
            local.retVal.append(s);
        }
        
        var n = 1;
        for (var a IN local.parsedInput) {
            var ap = (n%arguments.numSantas ?: arguments.numSantas) ;
            local.retval["s#ap#"].append(a) ;
            n++;
        }
        
        return local.retval ;
    }
*/
}
</cfscript>