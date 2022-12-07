<cfscript>
component accessors="true" {

    property String instructions ;
    property Numeric drunk ;
    property Neighborhood theHood ;
    property Array actors ;
    
    
    function init (  ) {
        variables.drunk = 10 ;
       
        variables.theHood = new Neighborhood() ;
        
        d3 = new cfc.Input("") ;
        variables.instructions = d3.getD3Input() ;
        
        variables.actors[1] = new cfc.Actor(1) ;
        variables.actors[2] = new cfc.Actor(2) ;
        
        //// Initialize actors
        ////variables.theActors.each( function (a) { theHood.addVisit(a) ; } ) ;
        // Initialize actors
        theHood.addVisit(variables.actors[1]);
        theHood.addVisit(variables.actors[2]);
        
        return this;
    }
    
    public Void function takeADrink() {
        variables.drunk++ ;
    }

    function directActors ( required String instr ) {
        // Set the directions
        //local.directionArray = local.directions.mid(midstart,10).listToArray("") ;
<<<<<<< HEAD
        variables.instructions = d3.init(arguments.instr).getd3_input() ;
        local.directionArray = variables.instructions.listToArray("") ;

        // Parse directions to actors, taking turns, if required
        local.directionArray.each(
=======
        variables.instructions = d3.init(arguments.instr).getd3input() ;
        local.directionArray = variables.instructions.listToArray("") ;
        
        // Parse directions to actors, taking turns, if required
        local.directionArray.each( 
>>>>>>> e77654d6937f845e3812ac4e44c1fb1522772ad3
            function(r, index) {
                //thisActor = (variables.actors.len()==2) ? (variables.actors[(index%2)==0?2:1]) : variables.actors[1] ;
                //writeDump(actors);
                thisActor = actors[(index%2)==0?2:1] ;
                //writeDump(var=[thisActor,r],label="directing");
                writeDump(thisActor.move(r)) ;
<<<<<<< HEAD
                theHood.addVisit(thisActor) ;
                writeDump(theHood);
            }
        ) ;

        local.vg  = theHood.getvisited_grid() ;

        local.rvc = local.vg.filter( function (item) { return item.beenVisited==true;} ).len() ;
        local.rvc = local.vg.filter( function (item) { return item.beenVisited==true;} ) ;

        local.retval = {
=======
                theHood.addVisit(thisActor) ; 
                writeDump(theHood);
            }
        ) ;
        
        local.vg  = theHood.getvisited_grid() ;
        
        local.rvc = local.vg.filter( function (item) { return item.beenVisited==true;} ).len() ;
        local.rvc = local.vg.filter( function (item) { return item.beenVisited==true;} ) ;
        
        local.retval = { 
>>>>>>> e77654d6937f845e3812ac4e44c1fb1522772ad3
            "visitedGrid" : local.vg ,
            //"uniquevisit" : (local.vg.len()-1)-local.rvc ,
            "revisitCnt"  : local.rvc,
            "dirs"        : arguments.instr
        } ;
<<<<<<< HEAD

        return local.retval ;


        takeADrink() ;
    }

    function getFinalReport() {

=======
        
        return local.retval ;
        
        
        takeADrink() ;
    }
    
    function getFinalReport() {
    
>>>>>>> e77654d6937f845e3812ac4e44c1fb1522772ad3
    }
}
</cfscript>
