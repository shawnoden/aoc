<cfif structKeyExists(form,"theYear")>
    <cfinclude template="setup.cfm">
</cfif>


<!DOCTYPE html>
<html lang="en-us">
<head>
    <title>Advent of Code - CodeFuMonkey</title>
</head>
<body>
    This is my main repo for my <a href="https://adventofcode.com/">Advent of Code</a> files. See https://adventofcode.com/.
    <br><br>
    <cftry>
        <cfset yearsAvail = fileRead(expandPath("./yearsAvail.json")).deserializeJSON()>
        Go to: <br><br>
        <ul>
            <cfoutput>
                <cfloop array="#yearsAvail#" item="itm">
                    <cfif itm.active EQ true>
                        <li><a href="#itm.theYearValue#/index.cfm">AOC #itm.theYear#</a></li>
                    <cfelse>
                        <li><strike>AOC #itm.theYear#</strike> - NOT AVAILABLE YET</li>
                    </cfif>
                </cfloop>
            </cfoutput>
        </ul>
    <cfcatch>
        <p>SORRY, NO SOLUTIONS AVAILABLE YET.</p>
    </cfcatch>
    </cftry>
    <p> ADD A YEAR</p>
    <form action="/index.cfml" method="POST">
        <label for="theYear">Year To Add:</label>
        <input type="text" id="theYear" name="theYear" value="<cfoutput>#year(now())#</cfoutput>" size="4" maxlength="4">
        <input type="checkbox" id="active" name="active" value="1">
        <label for="active"> Activate?</label><br>
        <input type="submit" value="Submit">
    </form> 
</body>
</html>
