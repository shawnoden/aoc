<cfscript>
// Setup for the day by reading the file to a variable.
day1setup = fileRead("input.txt") ;
</cfscript>
<br><hr><br>

Part 1: 
<br>
<cfscript>
// Use the "delimiters" of + and - to make a list.
part1_delims = day1setup.replace("+",",","all").replace("-",",-","all") ;
// Convert that list to an array.
p1_array = part1_delims.listtoarray() ;
// Sum the values of the array.
p1_answer = p1_array.sum();

// The answer is:
writeoutput(p1_answer);
</cfscript>


<br><hr><br>

Part 2:
<br>
<cfscript>
// The answer is:
writeoutput(p2_answer);
</cfscript>

