<cfscript>
    d1 = New day1() ;
    day1setup = d1.setupDay1("input.txt") ;

    // Part 1
    p1_answer = d1.day1_Part1(day1setup) ;
    // Part 2
    p2_answer = d1.day1_Part2(day1setup) ;
    // Part 2 Looping Test
    //p2_answer_test = d1.day1_Part2("+1,-2,+3,+1") ;
</cfscript>

Part 1:
<br>
The answer is: <cfoutput>#p1_answer#</cfoutput>

<br><hr><br>

Part 2:
<br>
The answer is:  <cfoutput>#p2_answer_test#</cfoutput>

<br><hr><br>


