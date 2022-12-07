<cfscript>
component accessors="true" {
    property Array visited_grid ;   /// This is all of the grid positions visited. [ { {grid_pos}, [visitor] } ]
    property Numeric revisits ;  // ???

    function init ( ) {
        variables.visited_grid = [] ;
        variables.revisits = 0 ;
        return this;
    }

    private Boolean function hasBeenVisited( required Struct thisLoc ) {
        for (var r IN variables.visited_grid) {
            if ( ( r.grid_pos.x == arguments.thisLoc.x && r.grid_pos.y == arguments.thisLoc.y ) ){ return true; }  
        }
        return false ;
    }

   public Void function addVisit(Any a) {
       local.visited = (arguments.a.getVisits() > 0) ? hasBeenVisited( arguments.a.getCurr_Pos() ) : false ;
       variables.visited_grid.append( 
            {
                "grid_pos":arguments.a.getCurr_Pos(),
                "visitor":arguments.a.getActorID(), 
                "beenVisited":local.visited 
            }
        ) ;
       variables.revisits +=  val(local.visited) ;
   }
}
</cfscript>