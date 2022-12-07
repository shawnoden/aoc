<cfscript>
component accessors="true" {    
<<<<<<< HEAD
    property Any WeekInput ; 
=======
   property Any WeekInput ; 
>>>>>>> e77654d6937f845e3812ac4e44c1fb1522772ad3

    function init ( required String inp, Boolean isMultiline = false  ) {
        var crlf = chr(13)&chr(10);
        if ( booleanFormat(arguments.isMultiline) ) {
            var inputFile = FileOpen(expandPath("/inputs/" & arguments.inp),"read") ;
            var weekInputArr = [] ;
            while( NOT fileIsEOF(inputFile) ) {
                weekInputArr.append(listToArray(FileReadLine(inputFile))) ;
            }
            fileClose(inputFile) ;
            variables.WeekInput = weekInputArr ;
        } else {
            variables.WeekInput = fileRead(expandPath("/inputs/"&arguments.inp)).listToArray(",#crlf#") ;
        }
        
        return this ;
    }
}
</cfscript>