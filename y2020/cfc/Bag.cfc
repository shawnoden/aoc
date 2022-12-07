component accessors="true" {

    property Any DayInput ;

    function init ( required String inp ) {
        var crlf = chr(13)&chr(10);
        var initialArray = fileRead(expandPath("/inputs/"&arguments.inp)).listToArray(".",false,true) ;

        //writeDUmp(initialArray);
        var di = [] ;

        //// Begin looping through rows and create a nested struct.
        for ( var r IN initialArray ) {
            r = r.replaceNoCase("bags","bag","ALL")
            var rArr = r.listToArray(" contain ",false,true)

            var dia = {
                "#rArr[1]#"
                :
                rArr[2].listToArray()
            } ;
            di.append( dia ) ;
            //di.append(r.replace("day","days", "ALL"));
        }

        variables.DayInput = di ;
writeDUmp(di);
        return this;
    }

    public function getDayInput() { return variables.DayInput; }

}
