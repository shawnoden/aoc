<cfscript>
component accessors="true" {

    property Numeric actorID ;
    //property Struct curr_pos ;
    property Array curr_pos ;
    property Array placement ;

    variables.steps = 0 ;

    //function init ( required Numeric actorID, Struct startPos = { "x":0,"y":0 } ) {
    function init ( required Numeric actorID, Array startPos = [0,0] ) {
        variables.actorID = arguments.actorID ;
        variables.curr_pos = arguments.startPos ;
        ////variables.placement = [ (variables.curr_pos.append({"s":variables.steps})?:arguments.startPos).append({"s":variables.steps}) ] ;
        //variables.placement = [ variables.curr_pos.append({"s":variables.steps})?:arguments.startPos.append({"s":variables.steps}) ] ;
        variables.placement = [ variables.curr_pos.duplicate().append(0) ] ;
        return this;
    }

    public Array function move( required Array movement ) {

        local.moves = arguments.movement ; //.listToArray(",") ;

        local.moves.map(
            function( el ){
                var themove = [el.left(1),el.mid(2,el.len())] ;
                var thisGrid = processMovement( themove ) ;
                variables.curr_pos = [thisGrid[1],thisGrid[2]] ;
            }
        ) ;

        return variables.curr_pos ;
    }

<<<<<<< HEAD
    private Struct function processMovement ( required Struct theMove ) {
        local.thisGrid = duplicate(variables.curr_pos) ;
            var x      = local.thisGrid.x ;
            var y      = local.thisGrid.y ;
        local.dir      = arguments.theMove.dir ;
        local.dist     = arguments.theMove.dist ;

        switch ( local.dir )  {
            case "u" : // ^
                local.thisGrid.y += local.dist ;
                for ( var i=0; i<local.dist; i++ ) { variables.placement.append( { "x":x , "y":++y } ) ; }
                break ;
            case "r" : // >
                local.thisGrid.x += local.dist ;
                for ( var i=0; i<local.dist; i++ ) { variables.placement.append( { "x":++x , "y":y } ) ; }
                break ;
            case "d" : // v
                local.thisGrid.y -= local.dist ;
                for ( var i=0; i<local.dist; i++ ) { variables.placement.append( { "x":x , "y":--y } ) ; }
                break ;
            case "l" :  // <
                local.thisGrid.x -= local.dist ;
                for ( var i=0; i<local.dist; i++ ) { variables.placement.append( { "x":--x , "y":y } ) ; }
=======
    private Array function processMovement ( required Array theMove ) {
        local.thisGrid = duplicate(variables.curr_pos)?:[0,0] ;
            var x      = local.thisGrid[1] ;
            var y      = local.thisGrid[2] ;
            var s      = variables.steps ;

        local.dir      = arguments.theMove[1] ;
        local.dist     = arguments.theMove[2] ;

        switch ( local.dir )  {
            case "u" : // ^
                local.thisGrid[2] += local.dist ;
                for ( var i=0; i<local.dist; i++ ) {
                    variables.steps ++ ;
                    variables.placement.append( [x , ++y, variables.steps ] ) ;
                }
                break ;
            case "r" : // >
                local.thisGrid[1] += local.dist ;
                for ( var i=0; i<local.dist; i++ ) {
                    variables.steps ++ ;
                    variables.placement.append( [++x , y, variables.steps ] ) ;
                }
                break ;
            case "d" : // v
                local.thisGrid[2] -= local.dist ;
                for ( var i=0; i<local.dist; i++ ) {
                    variables.steps ++ ;
                    variables.placement.append( [ x , --y, variables.steps ] ) ;
                }
                break ;
            case "l" :  // <
                local.thisGrid[1] -= local.dist ;
                for ( var i=0; i<local.dist; i++ ) {
                    variables.steps ++ ;
                    variables.placement.append( [ --x , y, variables.steps ] ) ;
                }
>>>>>>> e77654d6937f845e3812ac4e44c1fb1522772ad3
                break ;
            default:
                writeDump("FRAK!");
        }

<<<<<<< HEAD
        //variables.placement.append([local.thisGrid[1]]) ;

        return {"x":x,"y":y} ;

=======
        return [x,y,variables.steps] ;
>>>>>>> e77654d6937f845e3812ac4e44c1fb1522772ad3
    }

}
</cfscript>