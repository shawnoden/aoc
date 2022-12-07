component accessors="true" {    

    property Any DayInput ; 

    function init ( required String inp ) {
        var crlf = chr(13)&chr(10);
        var initialArray = fileRead(expandPath("/inputs/"&arguments.inp)).listToArray("#crlf##crlf#",false,true) ;
        //writeDUmp(initialArray);
        //var di = [] ;
/*
        //// Remove extra crlf and convert each row in new array to a struct. 
        for ( var r IN initialArray ) {
            di.append(r.replace(crlf," ", "ALL"));            
        }
*/
        variables.DayInput = initialArray ;

        return this;
    }

    public function getDayInput() { return variables.DayInput; }

}
