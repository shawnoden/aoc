<cfscript>
component accessors="true" {
    
    property String inp ;
    property Struct Orbits ;
    
    variables.BaseOrbit = "" ;
    
    function init ( required String inp, String BaseOrbit = "COM" ) {
        variables.inp = arguments.inp ;
        variables.BaseOrbit = arguments.BaseOrbit ;
        variables.Orbits = { #variables.BaseOrbit# : [] } ; // COM is the base Center Of Mass
        return this ;
    }


    function convertOrbitsToArray() {
        var crlf = chr(13)&chr(10) ;
        var initialArray = variables.inp.listToArray("#crlf#");
        
        var orbitsArray = initialArray.map( 
          function( v ){ 
              var a = v.listToArray(")") ;
              return [ a[1],[a[2]] ] ; 
            } 
        );
        
        return orbitsArray ;
    }


    function convertOrbitsToStruct() {
        var crlf = chr(13)&chr(10) ;
        var initialArray = variables.inp.listToArray("#crlf#");
        
        var orbitsStruct = initialArray.map( function( el ){ 
            return { "#ListFirst(el,")")#" : [ ListRest(el,")") ] } ;
        } );

        return orbitsStruct ;
    }






/* REDUCE 
The current value
The previous value
The current index
The array you called reduce on
*/

}
</cfscript>