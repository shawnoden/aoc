<cfscript>
component accessors="true" {
    property Struct visited_grid ;  /// This is all of the grid positions visited. [ { {grid_pos}, [visitor], [steps] } ]
    property Struct intersects ;

    variables.startPos = [0,0] ;

    variables.steps = 0 ;

    function init ( Array startpos = [0,0] ) {
        //variables.visited_grid = [] ;
        variables.visited_grid = {} ;
        //variables.visited_grid.append( arguments.startpos ) ;
        //variables.intersects = [] ;
        variables.iintersects = {} ;
        variables.startPos = arguments.startpos ;
        return this;
    }

<<<<<<< HEAD
    public Void function addCoords( required Actor actor ) {
        var coords = arguments.actor.getPlacement() ;
        var actorID = arguments.actor.getActorID() ;

        coords.each( function(c){
            //writeDump([c.x,c.y,actorID,variables.visited_Grid.contains(c)]);

            z = variables.visited_grid.findAll( function(el) {
                return el.visitor != actorID && el.grid_Pos.x == c.x && el.grid_Pos.y == c.y ;
            } ) ;

            if (z.len() == 0 ) {
                variables.visited_grid.append( { "grid_pos":c, "visitor":actorID  } ) ;
            } else {
                z.map(
                    function(el) {
                    variables.visited_grid[el].visitor = listAppend(variables.visited_grid[el].visitor,actorID)  ;
                    variables.intersects.append(c) ;
                    }
                ) ;
            }
        } ) ;
=======
    private Void function addCoords( required Actor inActor ) {
        /*
        {
            actorID Numeric
            curr_pos Array [ x,y ]
            placement Array [ [x,y,s],[x,y,s]... ]
        }
        */
<<<<<<< HEAD

        var coords  = arguments.inActor.getPlacement().duplicate() ;
        var actorID = arguments.inActor.getActorID() ;

        coords.each( function(c) {
            //writeDump(c);
            var k = "(" & c[1] & "," & c[2] & ")"  ;

            var currentActorList = variables.visited_grid["#k#"][1]?:"" ;
            var actorList = ( listFind(currentActorList,actorID) )? currentActorList : ListAppend(currentActorList,actorID ) ;

            variables.visited_grid["#k#"] = [ actorList, c[3] ] ;
        } ) ;
        //writeDump( variables.visited_grid ) ;
    }

    public Struct function getIntersections( required Array actors ) {
        arguments.actors.each( function(a) {
            addCoords( a ) ;
        } ) ;
        //writeDump(variables.visited_grid2);

        var retval =
            variables.visited_grid.filter(
                function (k,v) {
                    return v[1].len() > 1 ;
                }
            ) ;
        //writeDump(x);
        return retval ;

=======
        
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
        
>>>>>>> 0cd1325 (Checkin before 2020 adds.)
>>>>>>> e77654d6937f845e3812ac4e44c1fb1522772ad3
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
<<<<<<< HEAD
}
=======

    public Any function getMinimumStepsToInters() {
        var withoutStart = variables.intersects.filter(function(el,idx){return idx > 1 ;}).duplicate() ;
        return withoutStart.map( function(el){ return el.s ;} ).min()  ;
    }
}


/*

    public Void function addCoords( required Array arg_coords, required Numeric arg_actorID  ) {

        //{
        //    actorID numeric
        //    curr_pos array [ x,y ]
        //    placement array [ [x,y,s],[x,y,s]... ]
        //}

        var coords = arguments.arg_coords ;
        var actorID = arguments.arg_actorID ;

        for ( var c IN coords ) {
            //writeDump(c);
            var z = variables.visited_grid.filter (
              function(el) {
                writeOutput( "" & el[2] & "|" & el[1][1] & "|" & el[1][2] & "|" & c[1] & c[2]  );
                //return ( el[2] != arguments.actorID && el.[1][1] == c[1] && el.[1][2] == c[2] && true) ;
              }
            );

            if (z.len() == 0 ) {
                variables.visited_grid.append( [ [ c[1],c[2] ], arguments.arg_actorID, c[3] ] ) ;
            } else {
                z.map(
                    function(zel) {
                      //writeDump(zel);

                      variables.visited_grid[zel][2] = listAppend( variables.visited_grid[zel][2] ,actorID ) ;
                      variables.intersects.append( [ [ c[1],c[2] ], actorID, (c[3]+variables.visited_grid[zel][3]) ] ) ;
                    }
                ) ;
                //writeDump(var=variables.visited_grid,label="visits");
            }

        }
    }

*/


>>>>>>> e77654d6937f845e3812ac4e44c1fb1522772ad3
</cfscript>