<cfscript>
component accessors="true" {
    property Array visited_grid ;   /// This is all of the grid positions visited. [ { {grid_pos}, [visitor], [steps] } ]
    property Array intersects ;
    
    //property Array ManhattanDistance ;
    
    variables.startPos = [0,0] ;
    
    variables.steps = 0 ;
    
    function init ( Array startpos = [0,0] ) {
        variables.visited_grid = [] ;
        //variables.visited_grid.append( arguments.startpos ) ;
        variables.intersects = [] ;
        variables.startPos = arguments.startpos ;
        return this;
    }

    public Void function addCoords( required Actor actor ) {
        /*
        {
            actorID numeric
            curr_pos array [ x,y ]
            placement array [ [x,y,s],[x,y,s]... ]
        }
        */
        
        var coords = arguments.actor.getPlacement().duplicate() ;
        var actorID = arguments.actor.getActorID() ;
        
        coords.each( function(c) {
        //for ( var c IN coords ) {
        
            //var z = variables.visited_grid.findAll( function(el) {
            //    return el[2] != actorID && el.[1][1] == c[1] && el[1][2] == c[2] ;
            //} ) ;
            
            var z = variables.visited_grid.filter ( 
              function(el) {
                return el[2] != actorID && el[1][1] == c[1] && el[1][2] == c[2] ;    
              } 
            );
//writeDump(z);
            if (z.len() == 0 ) { 
                var xyzs = [ [ c[1],c[2] ],actorID,c[3] ] ;
                variables.visited_grid.append(xyzs) ;    
            } else {
                z.each(
                    function(zel) { 
                      zel[2] = ListAppend(zel[2],actorID);
                      variables.intersects.append( zel ) ;
                    } 
                ) ;
            }
            //writeDump(var=c,label="c");
        } );
        
    }

    private Void function calcManhattanDistanceOfInters( required Array intersections ) {
        var start  = variables.startPos.duplicate();
        var inters = arguments.intersections.duplicate();
        
        var startPoint = start.x+start.y ;
        
        var intersWithMD = inters.map( 
            function(itm,idx,ar,sp=startPoint){ 
                itm.grid_pos = itm.grid_pos;
                itm.visitor = itm.visitor ;
                itm.md = (abs(itm.grid_pos.x)+abs(itm.grid_pos.y))-startPoint ; 
                return itm;
            } 
        );
        
        //var manLen = inters.map( function(itm,idx,ar,sp=startPoint){ return ( (itm-sp) ) ; } );
        //writeDump(intersWithMD);
        variables.ManhattanDistance = intersWithMD ;
        //return manLen.min() ; 
    }

    public Any function getMinimumManhattanDistance( required Array intersections ) {
        calcManhattanDistanceOfInters(arguments.intersections) ;
        
        var withoutStart = variables.ManhattanDistance.filter(function(el,idx){return idx > 1 ;}).duplicate() ;
        
        return withoutStart.map( function(el){  return el.md ; } ).min() ;
    }
    
    public Any function getMinimumStepsToInters() {
        var withoutStart = variables.intersects.filter(function(el,idx){return idx > 1 ;}).duplicate() ;
        return withoutStart.map( function(el){ return el.s ;} ).min()  ;
    }
}
</cfscript>