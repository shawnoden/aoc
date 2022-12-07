<cfscript>
<<<<<<< HEAD
    //d3_input = fileRead(expandPath("inputs/day03.txt")) ; //.mid(5001,50000);
    //d3_input = "^v" ;
    //d3_input = "^>v<" ;
    d3_input = "^v^v^v^v^v" ;
=======
    //inp = fileRead(expandPath("inputs/day03.txt")) ; //.mid(5001,50000);
    //inp = "^v" ;
    //inp = "^>v<" ;
    inp = "^v^v^v^v^v" ;
    
    dirInput = new cfc.Input(inp) ;
    dirs = dirInput.makeMovementArrays(dirInput.getD3Input(),1) ;
    writeDump( d3_directions );
    
    
>>>>>>> e77654d6937f845e3812ac4e44c1fb1522772ad3
    c = new cfc.ElfCaller() ;
    c.directActors(d3_input);

    writeDump(c.getFinalReport());

</cfscript>

<!---


/*

<cfscript>

    santa = new cfc.Actor(1) ;
      theHood.addVisit(santa) ;
    robosanta = new cfc.Actor(2) ;
      theHood.addVisit(robosanta) ;

    actors1 = [ santa ] ;  // 2081
    actors2 = [ santa,robosanta ] ;


    function deliverPresents( required Array whodat , required Neighborhood th, required String directions, Numeric mstart ) {
        local.theNeighborhood = duplicate(arguments.th) ;
        local.directions = arguments.directions ;
        local.theActors = duplicate(arguments.whodat) ;
        local.actorCount = arguments.whodat.len() ;

        local.midstart = arguments.midstart ?: 1 ;

        //// Initialize actors
        ////local.theActors.each( function (a) { theHood.addVisit(a) ; } ) ;
        // Set the directions
        //local.directionArray = local.directions.mid(midstart,10).listToArray("") ;
        local.directionArray = local.directions.listToArray("") ;

        // Parse directions to actors, taking turns, if required
        local.directionArray.each(
            function(r, index) {
                //writeDump( {"r":r,"i":(index%2)==0?theActors[2]:theActors[1]}) ;
                thisActor = (actorCount==2) ? (theActors[(index%2)==0?2:1]) : theActors[1] ;
                writeDump(thisActor);
                thisActor.move(r) ;
                theNeighborhood.addVisit(thisActor) ;
            }
        ) ;

        local.vg  = local.theNeighborhood.getvisited_grid() ;
        local.rvc = local.vg.filter( function (item) { return item.beenVisited==true;} ).len() ;
        local.rvc = local.vg.filter( function (item) { return item.beenVisited==true;} ) ;

        local.retval = {
            "visitedGrid" : local.vg ,
            //"uniquevisit" : (local.vg.len()-1)-local.rvc ,
            "revisitCnt"  : local.rvc,
            "dirs"        : local.directions
        } ;

        return local.retval ;
    }

    allvisits = deliverPresents(actors2,theHood,d3_directions); //.visitedGrid ;

    writeDump(var=allvisits.visitedGrid, label="visitedGrid");
    //uniquevisits = allvisits.filter( function (i) { return i.beenVisited==false; } ) ;

    //writedump( allvisits.visitedGrid.filter( function (item) { return item.beenVisited==false;} ).len()  );
    //writeoutput(allvisits.dirs.len() & "<br>");
    //writeoutput(allvisits.revisitCnt & "<br>");
    //writeoutput(allvisits.dirs.len()+1 - allvisits.revisitCnt & "<br>");

    //writedump(allvisits);
    // ???? wrong
    // ???? wrong
    // ???? wrong
    // 5651 wrong
    // 2230 wrong
    // 2231 wrong

</cfscript>

*/

--->