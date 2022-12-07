<cfscript>
    //////// DAY 3
    /*
    ^v delivers presents to 3 houses, because Santa goes north, and then Robo-Santa goes south.
    ^>v< now delivers presents to 3 houses, and Santa and Robo-Santa end up back where they started.
    ^v^v^v^v^v now delivers presents to 11 houses, with Santa going one direction and Robo-Santa going the other.
     */
    //d3_input = fileRead(expandPath("inputs/day03.txt")) ; //.mid(5001,50000);
    //d3_input = "^v" ;
    //d3_input = "^>v<" ;
    d3_input = "^v^v^v^v^v" ;
    d3 = new cfc.Input(d3_input) ;
<<<<<<< HEAD
    d3_directions = d3.getD3_Input() ;

=======
    //d3_directions = d3.getD3Input() ;
    d3_directions = d3.getD3Input()
>>>>>>> e77654d6937f845e3812ac4e44c1fb1522772ad3
    writeDump(d3_directions);

    d3_visits = [] ;


<<<<<<< HEAD


=======
>>>>>>> e77654d6937f845e3812ac4e44c1fb1522772ad3
    function checkmove( Required Numeric actorID, Required string direction ) {
        // Make real Santa be 1 and Robo-Santa be 2. If more, REFACTOR //
        local.themove = ( (arguments.actorID%2==0) ) ? -1 : 1 ;
        local.thisGrid = {"x":0,"y":0} ;

        switch ( arguments.direction )  {
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
            default :
                return variables.curr_pos.grid_pos ; //writeOutput("FAIL!!!");
        }
    }


</cfscript>