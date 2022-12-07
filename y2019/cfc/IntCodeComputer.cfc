<cfscript>
component accessors="true" {

    property Array BaseInput ;
    property Array ProcessedMemory ;
    property Any FinalResult ;
    
    variables.DayInput = "" ;
    variables.InitAddr = [] ;
    variables.FinPos = 1 ;
    
    function init( required String instr, Array InitAddr, Numeric finPos = 1 ) {
        var inp = new Input(arguments.instr, false) ; //isMultiline
        variables.BaseInput = inp.getWeekInput();
        variables.ProcessedMemory = variables.BaseInput.duplicate() ;
        //// Initialize program.
        for ( var r=1; r<=arguments.InitAddr.len(); r++ ) {
            variables.InitAddr.append( arguments.InitAddr[r] ) ;
            variables.ProcessedMemory[r+1] = arguments.InitAddr[r]  ?: variables.ProcessedMemory[r+1] ;    
        }
        //writeDump(variables.InitAddr);
        variables.FinalResult = variables.ProcessedMemory[arguments.finPos] ;
        variables.DayInput = arguments.instr ;

        return this ;
    }
    public Void function reset( Array newInitAddr = variables.InitAddr ) {
        variables.ProcessedMemory = variables.BaseInput.duplicate() ;
        for ( var r=1; r<=arguments.newInitAddr.len(); r++ ) {
            variables.ProcessedMemory[r+1] = arguments.newInitAddr[r] ;
        }
        variables.FinalResult = variables.ProcessedMemory[variables.FinPos] ;
    }

    //// For 4-part Instructions : Day2
    //// OpCode > oc       = variables.ProcessedMemory[n]
    //// Addr1             = variables.ProcessedMemory[n+1]
    //// Addr2             = variables.ProcessedMemory[n+2]
    //// ResultTarget > rt = variables.ProcessedMemory[n+3]
    //// For 2-part Instructions : Day5
    //// OpCode > oc       = variables.ProcessedMemory[n]
    //// ResultTarget > rt = (3) variables.ProcessedMemory[n+1] | (4) return variables.ProcessedMemory[n]

    public Any function run( Numeric tgt = 1 ) {
        var idx = 0 ; // First OpCode
        var err =  "" ;
        var stretch = 4 ;
        
        while ( variables.ProcessedMemory[idx+1] != 99 && idx <= variables.ProcessedMemory.len() ) {
            var opcode = variables.ProcessedMemory[1+idx] ;
            var resultTarget = variables.ProcessedMemory[4+idx]+1 ;
            var addr1 = variables.ProcessedMemory[2+idx]+1 ;
            var addr2 = variables.ProcessedMemory[3+idx]+1 ;

            switch (opcode) {
                case 1 :
                    stretch = 4;
                    variables.ProcessedMemory[resultTarget] = ( variables.ProcessedMemory[addr1] + variables.ProcessedMemory[addr2] ) ;
                    break ;
                case 2 :
                    stretch = 4;
                    variables.ProcessedMemory[resultTarget] = ( variables.ProcessedMemory[addr1] * variables.ProcessedMemory[addr2] ) ;
                    break ;
                case 3 :
                    stretch = 1;
                    variables.ProcessedMemory[resultTarget] = ( variables.ProcessedMemory[addr1] * variables.ProcessedMemory[addr2] ) ;
                    break ;
                case 4 :
                    stretch = 1;
                    variables.ProcessedMemory[resultTarget] = ( variables.ProcessedMemory[addr1] * variables.ProcessedMemory[addr2] ) ;
                    break ;

                default:
                    err &= idx &"," ;     
            }
            idx+=stretch;
        }
        //writeOutput(err) ;
        variables.FinalResult = variables.ProcessedMemory[arguments.tgt] ;
        return variables.FinalResult ;
    }

    public Numeric function bruteForceAnswer( required Numeric expectedResult, Numeric min = 0, Numeric max = 99) {
        // BRUTE FORCE!!!!
        var q=0 ;
        var argmin = arguments.min ;
        var argmax = arguments.max ; // 75
        
        for (var noun=argmin;noun<=argmax;noun++) {
            for (var verb=argmin;verb<=argmax;verb++) {
                reset([noun,verb]);
                run(1) ;
                q = variables.FinalResult ; //FinalResult
                if( q == arguments.expectedResult ) { break ; }
            }
            if( q == arguments.expectedResult ) { break ; }
        }
        //fin = { "noun":noun , "verb":verb , "total":q } ;
        //return 100 * fin.noun + fin.verb ; 
        return (100 * noun + verb ) ;
    }
}
</cfscript>

