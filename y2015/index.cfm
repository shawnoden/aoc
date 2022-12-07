<!---
    /// This needs to go into application mappings.
    //inputFolder = getDirectoryFromPath(getCurrentTemplatePath()) & "inputs" ;
--->

<cfparam name="url.theday" default="0">

Pick a day: <br>

<a href="index.cfm?theday=1">Day 1</a> <br>
<a href="index.cfm?theday=2">Day 2</a> <br>
<a href="index.cfm?theday=3">Day 3</a> <br>

<hr>

<br>

<cfscript>
    /// This needs to go into application mappings.
    //inputFolder = getDirectoryFromPath(getCurrentTemplatePath()) & "inputs" ;

switch ( url.theday ) {
    case 1:
        /////// DAY 1
        d1_input = fileRead(expandPath("inputs/day01.txt"));
        d1_t1 = getTickCount() ;
        d1 = new cfc.day01(d1_input) ;
        d1_t2 = getTickCount() ;
        finalFloor = d1.toFloor(0,"(",")" ) ;
        d1_t3 = getTickCount() ;
        writeOutput( "Day 1a: Final Floor = " & finalFloor & " ("& d1_t3-d1_t2 & ")<br>" );
        d1_t4 = getTickCount() ;
        firstBasementStep = d1.findFirstBasement(0,"(",")" ) ;
        d1_t5 = getTickCount() ;
        writeOutput( "Day 1b: First Basement Step = " & firstBasementStep & " ("& d1_t5-d1_t4 & ")<br>" );
        break;
    case 2:
        //////// DAY 2
        d2_input = fileRead(expandPath("inputs/day02.txt"));
        d2 = new cfc.day02(d2_input) ;
        d2_delim = chr(10) ; // Input only uses chr(10) as line delim.
        totalSqFtWrappingPaper = d2.calcTotalWrappingMats(d2_input,d2_delim).paper ;
        writeOutput( "Day 2a: Need Total Square Ft of Wrapping Paper = " & totalSqFtWrappingPaper & "<br>" );
        totalLengthRibbon = d2.calcTotalWrappingMats(d2_input,d2_delim).ribbon ;
        writeOutput( "Day 2b: Need Total Ft of Ribbon = " & totalLengthRibbon & "<br>" );
        break;
    case 3:
        //////// DAY 3
        //test4= "^v" ; // delivers presents to 3 houses, because Santa goes north, and then Robo-Santa goes south.
        //test5= "^>v<" ; //now delivers presents to 3 houses, and Santa and Robo-Santa end up back where they started.
        //test6 = "^v^v^v^v^v" ;//now delivers presents to 11 houses, with Santa going one direction and Robo-Santa going the other.
<<<<<<< HEAD

=======
    
>>>>>>> e77654d6937f845e3812ac4e44c1fb1522772ad3
        d3_input = fileRead(expandPath("inputs/day03.txt"));
        //d3 = new cfc.day03b(d3_input) ;
        d3_t1 = getTickCount() ;
        d3a = new cfc.day03c(d3_input) ;
        d3_t2 = getTickCount() ;
        //pd = d3a.deliverPresents() ;
        d3_t3 = getTickCount() ;
        //writeOutput( "Day 3a: Total Unique Visits = " & pd.visits.Len() - pd.revisits & " ("& d3_t3-d3_t2 & ")<br>" );
        d3_t4 = getTickCount() ;
        d3b = d3a.init(d3_input) ;
        d3_t5 = getTickCount() ;
        rs = d3b.deliverPresentsWithRoboSanta() ;
        d3_t6 = getTickCount() ;
        //writeDump(rs);
        //writeOutput( "Day 3b: Total Unique Visits (with Robo- Santa) =  " & rs.visits.Len() - rs.revisits & " ("& d3_t6-d3_t5 & ")<br>" );
        writeOutput( "Day 3b: Visits =  " & rs.visits.Len() & " ("& d3_t6-d3_t5 & ")<br>" );
        writeOutput( "Day 3b: Revisits =  " & rs.revisits & " ("& d3_t6-d3_t5 & ")<br>" );

<<<<<<< HEAD



=======
>>>>>>> e77654d6937f845e3812ac4e44c1fb1522772ad3
    }
</cfscript>