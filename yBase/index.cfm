<h3>Advent of Code - 20??</h3>

    <cfscript>

        whichday = url.day?:0 ;
        totest = (url?.test == true ? " - TEST " : "") ;
        writeOutput("<br><hr><br>");
        writeOutput("<h3>DAY " & whichday & totest & "</h3><br>") ;

        filename = "days/day" & right("0#whichday#",2) & ".cfm" ;
        
        try { include filename } catch(any e) { writeOutput("No file yet. <br> Error: (" & e.message & ")") } ;

    writeOutput("<br><hr><br>");
</cfscript>

<cfinclude template="default.cfm">

