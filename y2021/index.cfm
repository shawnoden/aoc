<h3>Advent of Code - 2021</h3>

    <cfscript>

        whichday = url.day?:0 ;
        totest = (url?.test == true ? " - TEST " : "") ;
        writeOutput("<br><hr><br>");
        writeOutput("<h3>DAY " & whichday & totest & "</h3><br>") ;

        switch (whichday) {

        case 1 : {
            //// DAY 1 ////
            filename = "days/day01" & (url?.test == true ? "_TEST" : "") & ".cfm" ;
            try { include filename } catch(any e) { writeOutput("No file yet.") } ;
            ///////////////
            break ;
        }

        case 2 : {
            //// DAY 2 ////
            filename = "days/day02" & (url?.test == true ? "_TEST" : "") & ".cfm" ;
            try { include filename } catch(any e) { writeOutput("No file yet.") } ;
            ///////////////
            break ;
        }

        case 3 : {
            //// DAY 3 ////
            filename = "days/day03" & (url?.test == true ? "_TEST" : "") & ".cfm" ;
            try { include filename } catch(any e) { writeOutput("No file yet.") } ;
            ///////////////
            break ;
        }

        case 4 : {
            //// DAY 4 ////
            filename = "days/day04" & (url?.test == true ? "_TEST" : "") & ".cfm" ;
            try { include filename } catch(any e) { writeOutput("No file yet.") } ;
            ///////////////
            break ;
        }

        case 5 : {
            //// DAY 5 ////
            filename = "days/day05" & (url?.test == true ? "_TEST" : "") & ".cfm" ;
            try { include filename } catch(any e) { writeOutput("No file yet.") } ;
            ///////////////
            break ;
        }

        case 6 : {
            //// DAY 6 ////
            filename = "days/day06" & (url?.test == true ? "_TEST" : "") & ".cfm" ;
            try { include filename } catch(any e) { writeOutput("No file yet.") } ;
            ///////////////
            break ;
        }

        case 7 : {
            //// DAY 7 ////
            filename = "days/day07" & (url?.test == true ? "_TEST" : "") & ".cfm" ;
            try { include filename } catch(any e) { writeOutput("No file yet.") } ;
            ///////////////
            break ;
        }

        case 8 : {
            //// DAY 8 ////
            filename = "days/day08" & (url?.test == true ? "_TEST" : "") & ".cfm" ;
            try { include filename } catch(any e) { writeOutput("No file yet.") } ;
            ///////////////
            break ;
        }

        case 9 : {
            //// DAY 9 ////
            filename = "days/day09" & (url?.test == true ? "_TEST" : "") & ".cfm" ;
            try { include filename } catch(any e) { writeOutput("No file yet.") } ;
            ///////////////
            break ;
        }

        case 10 : {
            //// DAY 10 ////
            filename = "days/day10" & (url?.test == true ? "_TEST" : "") & ".cfm" ;
            try { include filename } catch(any e) { writeOutput("No file yet.") } ;
            ///////////////
            break ;
        }

        case 11 : {
            //// DAY 11 ////
            filename = "days/day11" & (url?.test == true ? "_TEST" : "") & ".cfm" ;
            try { include filename } catch(any e) { writeOutput("No file yet.") } ;
            ///////////////
            break ;
        }

        case 12 : {
            //// DAY 12 ////
            filename = "days/day12" & (url?.test == true ? "_TEST" : "") & ".cfm" ;
            try { include filename } catch(any e) { writeOutput("No file yet.") } ;
            ///////////////
            break ;
        }

        case 13 : {
            //// DAY 13 ////
            filename = "days/day13" & (url?.test == true ? "_TEST" : "") & ".cfm" ;
            try { include filename } catch(any e) { writeOutput("No file yet.") } ;
            ///////////////
            break ;
        }

        case 14 : {
            //// DAY 14 ////
            filename = "days/day14" & (url?.test == true ? "_TEST" : "") & ".cfm" ;
            try { include filename } catch(any e) { writeOutput("No file yet.") } ;
            ///////////////
            break ;
        }

        case 15 : {
            //// DAY 15 ////
            filename = "days/day15" & (url?.test == true ? "_TEST" : "") & ".cfm" ;
            try { include filename } catch(any e) { writeOutput("No file yet.") } ;
            ///////////////
            break ;
        }

        case 16 : {
            //// DAY 16 ////
            filename = "days/day16" & (url?.test == true ? "_TEST" : "") & ".cfm" ;
            try { include filename } catch(any e) { writeOutput("No file yet.") } ;
            ///////////////
            break ;
        }

        case 17 : {
            //// DAY 17 ////
            filename = "days/day17" & (url?.test == true ? "_TEST" : "") & ".cfm" ;
            try { include filename } catch(any e) { writeOutput("No file yet.") } ;
            ///////////////
            break ;
        }

        case 18 : {
            //// DAY 18 ////
            filename = "days/day18" & (url?.test == true ? "_TEST" : "") & ".cfm" ;
            try { include filename } catch(any e) { writeOutput("No file yet.") } ;
            ///////////////
            break ;
        }

        case 19 : {
            //// DAY 19 ////
            filename = "days/day19" & (url?.test == true ? "_TEST" : "") & ".cfm" ;
            try { include filename } catch(any e) { writeOutput("No file yet.") } ;
            ///////////////
            break ;
        }

        case 20 : {
            //// DAY 20 ////
            filename = "days/day20" & (url?.test == true ? "_TEST" : "") & ".cfm" ;
            try { include filename } catch(any e) { writeOutput("No file yet.") } ;
            ///////////////
            break ;
        }

        case 21 : {
            //// DAY 21 ////
            filename = "days/day21" & (url?.test == true ? "_TEST" : "") & ".cfm" ;
            try { include filename } catch(any e) { writeOutput("No file yet.") } ;
            ///////////////
            break ;
        }

        case 22 : {
            //// DAY 22 ////
            filename = "days/day22" & (url?.test == true ? "_TEST" : "") & ".cfm" ;
            try { include filename } catch(any e) { writeOutput("No file yet.") } ;
            ///////////////
            break ;
        }

        case 23 : {
            //// DAY 23 ////
            filename = "days/day23" & (url?.test == true ? "_TEST" : "") & ".cfm" ;
            try { include filename } catch(any e) { writeOutput("No file yet.") } ;
            ///////////////
            break ;
        }

        case 24 : {
            //// DAY 24 ////
            filename = "days/day24" & (url?.test == true ? "_TEST" : "") & ".cfm" ;
            try { include filename } catch(any e) { writeOutput("No file yet.") } ;
            ///////////////
            break ;
        }

        case 25 : {
            //// DAY 25 ////
            filename = "days/day25" & (url?.test == true ? "_TEST" : "") & ".cfm" ;
            try { include filename } catch(any e) { writeOutput("No file yet.") } ;
            ///////////////
            break ;
        }

        default : {
            writeoutput("No output yet.");
        }
    }

    writeOutput("<br><hr><br>");
</cfscript>

<cfinclude template="default.cfm">


