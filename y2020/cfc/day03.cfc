component {

    variables.puzzleIn = [] ;

    function init ( required String inp ) {
        var dayin = new cfc.Input(arguments.inp,false) ;
        variables.puzzleIn = dayin.getDayInput() ;
        return this ;
    }

    function parseInput_pt1 ( required Numeric r, required Numeric d ) {
        var puzzIn = variables.puzzleIn.duplicate() ;
        var cols = puzzIn[1].len() ;
        var rows = puzzIn.len() ;

        var iters = ceiling(rows/cols)*r ;

        var godown = arguments.d ;
        
        // Extend input structure
        for (var rw = 1; rw <= rows; rw++) {
            puzzIn[rw] = puzzIn[rw].repeatString(iters) ;
        }



        //puzzIN.each( (el) => { writeDump(el) } );

        
        var pointer = 1 ;
        var treeCount = 0 ;

        for (var row=2; row <= rows; row++) {
            //writeOutput( puzzIn[row][pointer] ) 
            //writeOutput(" " &row & "(" & pointer & ")  ")   
            pointer+=r;
            if(puzzIn[row][pointer] == "##") { treeCount++ ;}
        }
        
            
            //var item = row[pointer] ;
            //workingRow.reduce ( )
            //writeOutput( "" & pointer & " > " & row );
        
        return treeCount ;
        
    }

    function parseInput_pt2 ( required Numeric r, required Numeric d ) {
        var puzzIn = variables.puzzleIn.duplicate() ;
        var cols = puzzIn[1].len() ;
        var rows = puzzIn.len() ;

        var iters = ( ceiling((rows/d)/(cols\r)) ); /// how far it will go over
        //var iters = ( (ceiling(rows/d)) * (floor(cols/r)) ) ;
        //writeDump (iters) ;

//        puzzIn.map( function(el,idx){
//            puzzIn[idx] = el.repeatString(iters) ;
//        } )

        puzzIn.map( (el,idx) => { puzzIn[idx] = el.repeatString(iters); } ) ;

        //writeDump(puzzIn) ;
        
        var pointer = 1 ;
        var treeCount = 0 ;
        //writeOutput( "[" & r & "|" & d & "] -- ") ;
        puzzIN.each(
            function( el, idx ) {
                //writeOutput( idx & "(" & idx%d & ")") ;
                if(idx==1 || idx<(d+1) ){ 
                    //writeoutput(" |> ") ; 
                    continue;
                } /// Skip first row. Always down at least 1. Goto first d row.
                if( (d==1 && (idx%d)==0) || (d>1 && (idx%d-(d-1))==0)  ) { 
                    pointer += r ;
                    if( el[pointer] == "##" ) {
                        treeCount++ ;
                    }
                    //writeOutput( " > " & pointer & " (" & el[pointer] & ")") ;
                }
            }
        );
        //writeOutput(" > "& treeCount & "<br>")        
        return treeCount ;
    }

    public Any function showMe_pt1( required Numeric rt, required Numeric dn ) {
        return parseInput_pt1(rt,dn) ;
    }

    public Any function showMe_pt2( required Array dirSet, fullResults = false ) {
        var resultsArr = [] ;
        for ( var dirs IN dirSet ) {
            resultsArr.append( parseInput_pt2( dirs[1],dirs[2]) ) ;
        }
        
        if(fullResults == true) {
            writeDump(label="fullresults", var=resultsArr) ;
        }
        return resultsArr.reduce( function(p,n) { return n*p },1 ) ;
    }
}