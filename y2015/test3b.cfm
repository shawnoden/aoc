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
    //d3_input = "^v^v^v^v^v" ;
    d3_input = "^v^v^v^v^v<<<<<>>>>>" ;
    d3 = new cfc2.Input(d3_input) ;
    d3_directions = d3.makeMovementArrays(d3.getD3Input(),1) ;
    writeDump( d3_directions );
    
    
    
    
    
    
    
    
    
</cfscript>