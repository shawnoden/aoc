<cfscript>
    /**************  WORKING *********************/
    //// NEED TO PARSE INPUT /////
    
        crlf = chr(13)&chr(10);
        crlf2 = chr(13)&chr(10)&chr(13)&chr(10);

        inFile = fileRead("C:\dev\aoc_nof\2021\day04_input.txt").listToArray(crlf2,false,true);
        instructions = inFile.shift() ;
        inp = inFile.reduce( (prev,nxt) => { return prev.append( nxt.listToArray(crlf,false,false).map( (itm) => itm.listToArray(" ")) )   }, [] )


//        instructions = [7,4,9,5,11,17,23,2,0,14,21,24,10,16,13,6,15,25,12,22,18,20,8,19,3,26,1]
    

    /**************************************************/    
/*  inp = [
        [[22,13,17,11, 0],[ 8, 2,23, 4,24],[21, 9,14,16, 7],[ 6,10, 3,18, 5],[ 1,12,20,15,19]] ,
        [[ 3,15, 0, 2,22],[ 9,18,13,17, 5],[19, 8, 7,25,23],[20,11,10,24, 4],[14,21,16,12, 6]] ,
        [[14,21,17,24, 4],[10,16,15, 9,19],[18, 8,23,26,20],[22,11,13, 6, 5],[ 2, 0,12, 3, 7]]
    ]
*/    
    function pivotBoard(board) {
        pBoard = [
            [ board[1][1],board[2][1],board[3][1],board[4][1],board[5][1] ],
            [ board[1][2],board[2][2],board[3][2],board[4][2],board[5][2] ],
            [ board[1][3],board[2][3],board[3][3],board[4][3],board[5][3] ],
            [ board[1][4],board[2][4],board[3][4],board[4][4],board[5][4] ],
            [ board[1][5],board[2][5],board[3][5],board[4][5],board[5][5] ]
        ];
        return [...board,...pboard];
    }
    
    boards = inp.map( (b) => pivotBoard(b) ) ;
    
    /**************************************************/

    boardBlock = 1
    r = []
    for (board IN boards) {
        b2 = board
        s1 = 1 ;
        for (s IN instructions) {
            b2 = markInstruction(b2)
            winner = checkWinner(b2)
            if(winner>0){
                bsum = b2.slice(1,5).reduce( (prev,nxt)=>{ return prev + nxt.filter( (el)=>el>0 ).sum() },0 ) 
                r.append( {"block":boardBlock,"instruction":s,"iLoop":s1,/*"board":b2,*/"boardSum":bsum, "bAnswer":bsum*s} )
                break;
            }
            s1+=1
        }
        boardBlock+=1;
    }
    
    sortedResult = r.sort( (e1,e2)=>compare(e1.iloop,e2.iloop) ) ;
    
    writeDump( sortedResult[1].bAnswer )
    writeDump( sortedResult.last().bAnswer )

    //writedump(sortedResult1)

/**********************************************************************************************/
function markInstruction ( input, s) {
    var m = input.reduce( (prev,nxt)=>{ return prev.append( nxt.map( (el)=> (el==s)?-1:el ) ) },[]);
    return m
}

function checkWinner(inp) {
    var wwcd = 0
    inp.each ( (itm,idx)=>{ if(itm.sum()==-5) { wwcd=idx } } ) ;
    return wwcd
}
/**********************************************************************************************/

</cfscript>
