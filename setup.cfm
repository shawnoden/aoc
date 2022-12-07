<!---- Change theYear to the correct year. ---->

<cfset theYear = FORM.theYear?:year(now()) > 

<!--------------------------------------------->

<cfscript>

    writeOutput( "Create directories for year. <br><br>" );

    //// CREATE DIRECTORIES
    yearpath = GetDirectoryFromPath(GetCurrentTemplatePath()) & "y" & theYear ;

    cfdirectory( action="create", directory = yearpath & "/cfc" ) ;
    cfdirectory( action="create", directory = yearpath & "/days" ) ;
    cfdirectory( action="create", directory = yearpath & "/inputs" ) ;
    cfdirectory( action="create", directory = yearpath & "/texts" ) ;

    writeOutput( "Create files. <br><br>" );
    ////// BASE FILES //////

    //// Answer Tracker ////
    answertrackertext = "ANSWER TRACKER" ;
    for( d2=1; d2<=25 ; d2++ ) {
        answertrackertext &= "
Day #d2#
    Part 1:
    Part 2:

" ;
    }
    
    cffile ( action="write", file=yearpath & "/AnswerTracker.txt" , output=answertrackertext );
    //// END AnswerTracker.txt ////

    //// Application.cfc ////
    appcfctext = '<cfscript>
        component
        {
            // https://adventofcode.com/
            this.name="aoc#theYear#" ;
            this.applicationTimeout = createTimespan(0,0,5,0) ;
            this.rootdir = getDirectoryFromPath(getCurrentTemplatePath()) ;

            this.mappings["/inputs"] = this.rootdir & "inputs" ;
            this.mappings["/cfc"] = this.rootdir & "cfc" ;
            this.mappings["/texts"] = this.rootdir & "texts" ;
            this.mappings["/days"] = this.rootdir & "days" ;
        }
        </cfscript>' ;
    cffile ( action="write", file= yearpath & "/Application.cfc", output=appcfctext );

    //// END Application.cfc ////

    //// default.cfm ////
    defaulttext = '<h3>Pick a day:</h3>
    <br>
    <ul>
    ' ;

    daylinkstext = "" ;
    for( d3=1; d3<=25 ; d3++ ) {
        daylinkstext &= '<li><a href="index.cfm?day=#d3#">Day #d3#</a> | <a href="index.cfm?day=#d3#&test=true">TEST</a></li>
' ;
    }
    defaulttext &= daylinkstext & '
</ul>' ;
    cffile ( action="write", file= yearpath & "/default.cfm", output=defaulttext );

    //// END default.cfm ////

    //// index.cfm ////
    indextext = '<h3>Advent of Code - ' & theYear & '</h3>

    <cfscript>

        whichday = url.day?:0 ;
        totest = (url?.test == true ? " - TEST " : "") ;
        writeOutput("<br><hr><br>");
        writeOutput("<h3>DAY " & whichday & totest & "</h3><br>") ;

        switch (whichday) {
' ;

    dayswitchtext = '' ;

    for( d4=1; d4<=25 ; d4++ ) {
        dayswitchtext &= '
        case ' & d4 & ' : {
            //// DAY ' & d4 & ' ////
            filename = "days/day' & right("0#d4#",2) & '" & (url?.test == true ? "_TEST" : "") & ".cfm" ;
            try { include filename } catch(any e) { writeOutput("No file yet.") } ;
            ///////////////
            break ;
        }
'
    } ;
    indextext &= dayswitchtext & '
        default : {
            writeoutput("No output yet.");
        }
    }

    writeOutput("<br><hr><br>");
</cfscript>

<cfinclude template="default.cfm">

' ;

    cffile ( action="write", file= yearpath & "/index.cfm", output=indextext );

    //// END index.cfm ////


    //// INSTRUCTIONS ////
    instructions_cfc = yearpath & "/cfc/instructions_for_folder.txt" ;
    cffile ( action="write", file= instructions_cfc, output="Work files go here. You'll write new CFCs as needed." ); /// cfc
    instructions_days = yearpath & "/days/instructions_for_folder.txt" ;
    cffile ( action="write", file= instructions_days, output="These are essentially the display files for the page problem. " ); ///days
    instructions_inputs = yearpath & "/inputs/instructions_for_folder.txt" ;
    cffile ( action="write", file= instructions_inputs, output="These are the given inputs for each file. And their tests. " ); ///inputs
    instructions_texts = yearpath & "/texts/instructions_for_folder.txt" ;
    cffile ( action="write", file= instructions_texts, output="This is just for tracking what the problem was that day.
    Just create a new html file for the day and save the source from the page." ); ///  texts
    //// END INSTRUCTIONS ////

   
    ////.....  Baseline file for input processing .....////
    //// /cfc/Input.cfc ////
    inputtext = 'component accessors="true" {    
    property Any DayInput ; 
    
    function init ( required String inp, Boolean isMultiline = false  ) {
        var crlf = ;
        if ( booleanFormat(arguments.isMultiline) ) {            
            var inputFile = FileOpen(expandPath("/inputs/" & arguments.inp),"read") ;
            var DayInputArr = [] ;
            while( NOT fileIsEOF(inputFile) ) {
                DayInputArr.append(listToArray(FileReadLine(inputFile))) ;
            }
            fileClose(inputFile) ;
            variables.DayInput = DayInputArr ;
        } else {
            variables.DayInput = fileRead(expandPath("/inputs/"&arguments.inp)).listToArray(",chr(13)&chr(10)") ;
        }
        return this ;
    }
}
' ;
    
    cffile ( action="write", file= yearpath & "/cfc/Input.cfc", output=inputtext );

    //// END /cfc/Input.cfc ////

////// DAILY FILES //////

    for( d=1; d<=25 ; d++ ) {

        daynum = 0 ;
        daynum = right("0#d#",2) ;

        /// INPUTS
        the_inputs_filename_p1 = yearpath & "/inputs/day" & daynum & "_part1.txt" ;
        the_inputs_filename_p2 = yearpath & "/inputs/day" & daynum & "_part2.txt" ;
        the_inputs_test_filename = yearpath & "/inputs/day" & daynum & "_test.txt" ;
        cffile ( action="write", file= the_inputs_filename_p1, output="" );
        cffile ( action="write", file= the_inputs_filename_p2, output="" );
        cffile ( action="write", file= the_inputs_test_filename, output="" );

        /// TEXTS
        the_texts_filename = yearpath & "/texts/day" & daynum & ".html" ;
        cffile ( action="write", file= the_texts_filename, output="" );

        //// DAYS day??.cfm ////        

        dayText = '<cfscript>
    if(url?.test==true) {
        try {
            local.dayInp = new cfc.day' & daynum & '("day' & daynum & '_test.txt") ;
        }
        catch(Any e) {
            writeOutput("<br><br>ERROR:") ;
            writeDump(e);
        }
    } else {
        local.dayInp = new cfc.day' & daynum & '("day' & daynum & '_part1.txt") ;
    }
    //writedump(local.dayInp.getPuzzleInput());
    
    local.day' & daynum & 'a = local.dayInp.showMe_pt1(true) ;
    
    //local.input_p2 = day' & daynum & 'a ;

    local.day' & daynum & 'b = local.dayInp.showMe_pt2(false) ;

    ////////////////////// 
    ////YOUR CODE HERE////
    //////////////////////

    // ANSWERS
    writeoutput( 
        "Day ' & daynum & ' - Part 1 Answer: " & local.day' & daynum & 'a & "<br>"
        & 
        "Day ' & daynum & ' - Part 2 Answer: " & local.day' & daynum & 'b & "<br>"
    ) ;
</cfscript>' ;

        cffile ( action="write", file= yearpath & "/days/day" & daynum & ".cfc", output=dayText );

        //// END day??.cfm ////

        //// CFCs day??.cfc ////
        
        /// CFC
        cfcText = 'component {
    variables.puzzleIn = [] ;

    function init ( required String inp ) {
        var dayin = new cfc.Input(arguments.inp) ;
        variables.puzzleIn = dayin.getDayInput() ;
        return this ;
    }

    public Array function getPuzzleInput(){ return variables.puzzleIn ; }

    public Any function showMe_pt1( fullResults = false ) {
        var resultsArr = [] ;
        //// Execute the local function to parse the puzzle and inArgs.
        var processInput = parseInput_pt1( ) ;
            resultsArr = processInput ;
            //writeDump(processInput)
        return resultsArr ;
    }

    private Any function parseInput_pt1 ( ) {
        var puzzIn = variables.puzzleIn.duplicate() ;
        var retval = [] ;
        
        ////////////////////// 
        ////YOUR CODE HERE////
        //////////////////////               

        return retval ;
    }

    public Any function showMe_pt2( fullResults = false ) {
        var resultsArr = [] ;
        //// Execute the local function to parse the puzzle and inArgs.
        var processInput = parseInput_pt2( ) ;
            resultsArr = processInput ;
            //writeDump(processInput)
        return resultsArr ;
    }

    private Any function parseInput_pt2 ( ) {
        var puzzIn = variables.puzzleIn.duplicate() ;
        var retval = [] ;

        ////////////////////// 
        ////YOUR CODE HERE////
        //////////////////////               

        return retval ;
    }
'
        cffile ( action="write", file= yearpath & "/cfc/day" & daynum & ".cfc", output=cfcText );
        //// END CFCs day??.cfc ////
    }        
    ////// END DAILY FILES //////

    
</cfscript>

DONE.
<br><br><br>

<!------
Create Year Directory
    Create /cfc
    Create /days
    Create /inputs
    Create /texts
Create base files ( AnswerTracker.txt, Application.cfc, index.html, default.html, cfc/Input.cfc )

Create /inputs daily files  (template .html)
Create /texts daily files   (template .html)

Create /cfc daily files     (template .cfc )
Create /days daily files    (template .cfml)
------!>
