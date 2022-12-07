<cfscript>
component accessors="true" {
    property Numeric actorID ;
    property Struct curr_pos ;
    property Numeric visits ;
    
    function init ( required Numeric actorID, Struct startPos ) {
        variables.actorID = arguments.actorID ;
        variables.curr_pos = {"x":0,"y":0} ;
        variables.visits = 0 ;
        return this;
    }
    
    public Struct function move( required String movement ) {
        // Make real Santa be 1 and Robo-Santa be 2. If more, REFACTOR //
        local.themove = ( variables.actorID%2==0 ) ? -1 : 1 ;
        local.thisGrid = duplicate(variables.curr_pos) ;
        
        switch ( arguments.movement )  {
            case "n" : // ^
                local.thisGrid.y += local.themove ;
                break ;
            case "e" : // >
                local.thisGrid.x += local.themove ;
                break ;
            case "s" : // v
                local.thisGrid.y -= local.themove ;
                break ;
            case "w" :  // <
                local.thisGrid.x -= local.themove ;
                break ;
            default:
                writeDump("FRAK!");
        }
<<<<<<< HEAD

=======
        
>>>>>>> e77654d6937f845e3812ac4e44c1fb1522772ad3
        variables.curr_pos = local.thisGrid ;
        variables.visits++ ;
        writedump(variables.curr_pos);
        return variables.curr_pos ;
    }
<<<<<<< HEAD


=======
    
    
>>>>>>> e77654d6937f845e3812ac4e44c1fb1522772ad3

}
</cfscript>