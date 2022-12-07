<cfscript>
    //https://adventofcode.com/2019/day/2
    inputInstr = [12,2] ;
    icc = new cfc.IntCodeComputer("day02.txt",inputInstr) ;
    icc.run(1) ;

    local.day2a = icc.getFinalResult() ;
    //// Start over clean
    icc.reset() ;    
    
    local.day2b = icc.bruteForceAnswer(19690720,20,70) ;  /// 29-64 Very contrived to make it complete processing.

//Day 2a = 3716293 That's the right answer! You are one gold star closer to rescuing Santa.
//Day 2b = 6429 That's the right answer! You are one gold star closer to rescuing Santa.

</cfscript>
