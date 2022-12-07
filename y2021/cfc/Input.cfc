component accessors="true" {    
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

