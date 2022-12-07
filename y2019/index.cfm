<h3>Advent of Code - 2019</h3>

<cfscript>

    whichday = url.day?:0 ;
    writeOutput("<br><hr><br>");
    writeOutput("<h3>DAY " & whichday & "</h3><br>") ;

    switch (whichday) {
        case 1 : {
            //// DAY 1 ////
            include "days/day01.cfm" ;    
            ///////////////
            break ;    
        }
        case 2 : {
            //// DAY 2 ////
            include "days/day02.cfm" ;    
            writeoutput( 
                  "What value is left at position 0 after the program halts? " & local.day2a & "<br>"
                & "Find the input noun and verb that cause the program to produce the output 19690720. What is 100 * noun + verb? " & local.day2b & "<br>"
            ) ;
            ///////////////
            break;
        }
         case 3 : {
            //// DAY 3 ////
            include "days/day03.cfm" ;    
            writeoutput( 
                  "??? " & local.day3a & "<br>"
                & "??? " & local.day3b & "<br>"
            ) ;
            ///////////////
            break;
        }
        default : {
            writeoutput("No output yet.");
        }
            
    }
    
    writeOutput("<br><hr><br>");
</cfscript>

<cfinclude template="default.cfm">

