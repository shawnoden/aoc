<cfscript>
/************** PARSE INPUT *********************/
    crlf = chr(13)&chr(10);
    inFile = fileRead("C:\dev\aoc_nof\2021\day01_input.txt").listToArray(crlf,false,true);
    inp = inFile.reduce( (prev,nxt) => { return prev.append( nxt ) }, [] )
/**************************************************/    

writeoutput(solvePart1(inp))
writeoutput("<br>")
writeoutput(solvePart2(inp))

function solvePart1( inp ) {
    return inp.filter( (itm,idx,arr)=>(idx<inp.len()) ? itm < arr[idx+1] : false ).len()
}

function solvePart2( inp ) {
    return inp.filter( (itm,idx,arr)=>(idx<inp.len()-2) ? itm < arr[idx+3] : false ).len()
}


</cfscript>