<cfscript>
component accessors="true" {
    function init() {
        return this ;
    }
    
    public Any function go(required Array arr1, required Array arr2) {
        return getSmallest( intersect( arguments.arr1, arguments.arr2) ) ;
        //return intersect( arguments.arr1, arguments.arr2) ;
    }
    
    public Struct function intersect(required Array arr1, required Array arr2) {
        var a1 = arguments.arr1.duplicate() ; //Dupe because original array will be mutated otherwise
        var a2 = arguments.arr2.duplicate() ; // .clone()
        
        var startPos = a1[1] ;

        var dd_a1 = arrayRemoveDuplicates(a1.deleteAt(1));
        var dd_a2 = arrayRemoveDuplicates(a2.deleteAt(1));

        //var dd_a1 = a1.deleteAt(1);
        //var dd_a2 = a2.deleteAt(1);

        //writeDump(dd_a1.len()) ;
        //writeDump(dd_a2.len()) ;
        
        dd_a1.addAll(dd_a2);

        //writeDump(dd_a1.len()) ;

        var dupesArray = arrayRemoveDuplicates( arrayKeepDuplicates(dd_a1) ) ;
        //var dupesArray = arrayKeepDuplicates(dd_a1) ;

        //writeDump(dupesArray) ;
        
        //// // JAVA to the rescue
        //// local.a1.retainAll(local.a2);
        // Back to CF
        
        //dupesArray.deleteAt(1);

        //var mapInters = dupesArray.map( function( itm, idx ) { return [ idx, itm, (itm.x-itm.y) ] } ) ;
        var mapInters = dupesArray.map( function( itm, idx ) { return (itm.x.abs()+itm.y.abs()) } ) ;
            
        writeDump(mapInters);
        writeDump(startPos);           
        
        return { "start":startPos, "inters": mapInters } ;
       
        //return {"start":local.a1[1], "inters": []} ;
    }
    
    public Any function getSmallest( required Struct intersections ) {
        //// https://en.wikipedia.org/wiki/Taxicab_geometry
        var startPos = arguments.intersections.start.x + arguments.intersections.start.y ;
        //writeDump(arguments.intersections.inters);
        
        //var inters   = arguments.intersections.inters.map( function(i){ return i.x.abs()+i.y.abs() ;} ) ;
        var inters   = arguments.intersections.inters ;
        
        // Manhattan distance from Start for each Intersection.
        var manLen   = inters.map( function(itm,idx,ar,sp=startPos){ return ( (itm-sp) ) ; } );
        
        return manLen.min() ; 
    }
    
    /////////// UTILITIES ///////////
    
    function arrayRemoveDuplicates(array){
        return array.reduce(function(deduped, el){
            return deduped.find(el) ? deduped : deduped.append(el);
        }, []);
    }
    
    function arrayKeepDuplicates(array){
        return array.filter( function( item, index, arr2){
            return ( arr2.findAll(item).len() > 1 ) ;
        });
    }
    
    /////////////////////////////////

    /* OLD INTERSECT    
        public Struct function intersect(required Array arr1, required Array arr2) {
        // JAVA to the rescue. Need intersection of arrays.
        local.a1 = arguments.arr1.clone() ; // Dupe because original array will be mutated otherwise
        local.a2 = arguments.arr2 ; //.clone() ;
        local.a1.retainAll(local.a2);
        // Back to CF
        val retInters = local.a1;
        val mapInters = local.a1.map( function( itm, idx ) { return [ idx, itm, (itm.x-itm.y) ] } ) ;
        
            retInters.deleteAt(1);
        
        return { "start":local.a1[1], "inters": retInters } ;
    }
*/
}
</cfscript>