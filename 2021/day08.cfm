<cfscript>
    /**************** PARSE INPUT *********************/

    inFile = fileRead("C:\dev\aoc_nof\2021\day08_input.txt").listToArray(chr(13)&chr(10));
    inp = inFile.reduce( (prev,nxt) => { return prev.append(nxt.listToArray(" | ", false,true))},[] ) ;
    
    //inp = inFile

    ///writedump(inp)

   /****************** SOLUTIONS *********************/

    writeDump(solvePart1(inp))
    writeoutput("<br>")
    writeoutput(solvePart2(inp))
    writeoutput("<br>")
    
    function solvePart1( inp ) {
        // var retval = 0 ;
        var cnts = inp
            .reduce( (prev,nxt) => { return prev.append(nxt[2]) },[] )
            .map( (elm)=>elm.listToArray(" ").filter( (el)=> (el.len()==2) || (el.len()==4) || (el.len()==3) || (el.len()==7) ).len() )

        //writedump(cnts)
        return cnts.sum()
       //// ANSWER : 381 CORRECT
    }
    
    function solvePart2( inp ) {
        var retval = 0 ;
        
        var retval = 0 ;
        var s = []
        
        for (var ia IN inp) {
            
            l   = [];
            l1  = ia[1].listtoArray(" ")
            fd  = [];
            fd1 = ia[2].listtoArray(" ")
            
            for (var l2 IN l1) { l.append(l2.sort()) }
	        for (var fd2 IN fd1) { fd.append(fd2.sort()) }

            s.append( { "list" : l , "finalDigits" : fd } )
        }

        //writedump(s)
        var finalNums = []
        for ( var l IN s ) {
            var t = buildTranslation(l.list)
            //writedump(l)
            finalNums.append(findFinalNumbers(l.finalDigits,t));
        }
        
        retval = finalNums.sum()
        ///////////////////////

        return retval
        //// ANSWER : 1023686  CORRECT ANSWER!
    }

    /******************* UTILITIES *********************/

    function findFinalNumbers ( borkedDigits, digitMap ) {
        var retval = []
        //writedump([borkedDigits,digitMap])
        borkedDigits.map( (el) => retval.append( structfindValue(digitMap,el).reduce( (p,n)=> {return p & n.key.replace("s","")},"" ) )  ) ;

        return retval.toList("")


    }

    function buildTranslation ( borkedLines ) {
        ////////// BUILD SEARCH STRUCT //////////
        sol = {
            "s0":"",
            "s1":"",
            "s2":"",
            "s3":"",
            "s4":"",
            "s5":"",
            "s6":"",
            "s7":"",
            "s8":"",
            "s9":""
        }
        //writedump(borkedLines)
        //// Calculate 1,4,7,8
        leftovers = [] ;
        borkedLines.map( (el,idx,arr) => { 
            switch(el.len()) {
                CASE 2: sol.s1 = el ; break;
                CASE 3: sol.s7 = el ; break ;
                CASE 4: sol.s4 = el ; break;
                CASE 7: sol.s8 = el ; break;
                DEFAULT:
                    leftovers.append(el) ;
            }
        })

        //// Populate others
        leftovers.map( (el,idx) => { 
            if ( el.len()==5 ) { ////  2,3,5
                if (el.REFind("[#sol.s4#]",1,false,"all").len()==3 ) {
                    if (el.REFind("[#sol.s7#]",1,false,"all").len()==3 ) {
                        sol.s3 = el ;
                    } else {
                        sol.s5 = el ;
                    }
                } else {
                    sol.s2 = el ;
                }
            } else { /// 0,6,9
                if (el.REFind("[#sol.s1#]",1,false,"all").len()==2 ) { // 0,9
                    if (el.REFind("[#sol.s4#]",1,false,"all").len()==4 ) { // 0,9
                        sol.s9 = el ;
                    } else {
                        sol.s0 = el ;
                    }
                } else { 
                    sol.s6 = el ;
                }
            }
        } ) ;

        return sol
        /////////////////////////////////////////
    }





/*
0 = 6 [a,b,c,e,f,g]
1 = 2 [c,f]
2 = 5 [a,c,d,e,g]
3 = 5 [a,c,d,f,g]
4 = 4 [b,c,d,f]
5 = 5 [a,b,d,f,g]
6 = 6 [a,b,d,e,f,g]
7 = 3 [a,c,f]
8 = 7 [a,b,c,d,e,f,g]
9 = 6 [a,b,c,d,f,g]
*/
</cfscript>

<!---

<cfscript>
    /**************** PARSE INPUT *********************/

    inFile = [
        "be cfbegad cbdgef fgaecd cgeb fdcge agebfd fecdb fabcd edb | fdgacbe cefdb cefbgd gcbe",
        "edbfga begcd cbg gc gcadebf fbgde acbgfd abcde gfcbed gfec | fcgedb cgb dgebacf gc",
        "fgaebd cg bdaec gdafb agbcfd gdcbef bgcad gfac gcb cdgabef | cg cg fdcagb cbg",
        "fbegcd cbd adcefb dageb afcb bc aefdc ecdab fgdeca fcdbega | efabcd cedba gadfec cb",
        "aecbfdg fbg gf bafeg dbefa fcge gcbea fcaegb dgceab fcbdga | gecf egdcabf bgf bfgea",
        "fgeab ca afcebg bdacfeg cfaedg gcfdb baec bfadeg bafgc acf | gebdcfa ecba ca fadegcb",
        "dbcfg fgd bdegcaf fgec aegbdf ecdfab fbedc dacgb gdcebf gf | cefg dcbef fcge gbcadfe",
        "bdfegc cbegaf gecbf dfcage bdacg ed bedf ced adcbefg gebcd | ed bcgafe cdgba cbgef",
        "egadfb cdbfeg cegd fecab cgb gbdefca cg fgcdab egfdb bfceg | gbdfcae bgc cg cgb",
        "gcafb gcf dcaebfg ecagb gf abcdeg gaef cafbge fdbac fegbdc | fgae cfgab fg bagce"
    ]
    
    inp = inFile.reduce( (prev,nxt) => { return prev.append(nxt.listToArray(" | ",false,true)) },[] ) ;

    //writedump(inp)

   /****************** SOLUTIONS *********************/

    //writeDump(solvePart1(inp))
    writeoutput("<br>")
    writeoutput(solvePart2(inp))
    writeoutput("<br>")
    
    function solvePart1( inp ) {
//        var retval = 0 ;
        var cnts = inp
            .reduce( (prev,nxt) => { return prev.append(nxt[2]) },[] )
            . map( (elm)=>elm.listToArray(" ").filter( (el)=> (el.len()==2) || (el.len()==4) || (el.len()==3) || (el.len()==7) ).len() )
        return cnts.sum()
       //// ANSWER : 381 CORRECT
    }
    
    function solvePart2( inpArr ) {
        var retval = 0 ;
        var s = []
        
        for (var ia IN inpArr) {
            
            l  = [];
            l1 = ia[1].listtoArray(" ")
            fd = [];
            fd1 = ia[2].listtoArray(" ")
            
            for (var l2 IN l1) { l.append(l2.sort()) }
	        for (var fd2 IN fd1) { fd.append(fd2.sort()) }

            s.append( { "list" : l , "finalDigits" : fd } )
        }

        writedump(s)

test = s[1].list;

//writedump(test)

sol = {
    "s0":"",
    "s1":"",
    "s2":"",
    "s3":"",
    "s4":"",
    "s5":"",
    "s6":"",
    "s7":"",
    "s8":"",
    "s9":""
}

test = test.filter( (el) => { 
    switch(el.len()) {
        CASE 2: sol.s1 = el ; break;
        CASE 3: sol.s7 = el ; break ;
        CASE 4: sol.s4 = el ; break;
        CASE 7: sol.s8 = el ; break;
        DEFAULT: return true ;
    }
    return false
})


//test.filter( (el)=>len(el)==0 )
writedump(test)

writedump(sol)

for (el IN test) {
  l = el.toList("")
  SWITCH (LEN(l)) {
    CASE 5:
        writedump( el.find(sol.s1[1],"") + el.find(sol.s1[2],"") )
        /*
        STUFF >> 2,3,5
        s2 >>>> contains Only 2 of 4
        s3 >>>> Contains All 3 of 7 and Only 3 of 4
        s5 >>>> CONTAINS ONLY 1 OF 1 AND ONLY 2 OF 7
        */
        break;
    CASE 6:
        /*
        STUFF >> 0,6,9
        s9 >>>> Contains 4 of 4
        s0 >>>> Contains 3 of 4 and 2 of 1
        s6 >>>> CONTAINS ONLY 1 OF 1
        */
        break;

}



*/
        return retval
        //// ANSWER : 
    }


    /******************* UTILITIES *********************/

 


</cfscript>
--->