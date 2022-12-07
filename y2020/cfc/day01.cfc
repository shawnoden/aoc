component {

    //property Numeric position1 ;
    //property Numeric position2 ;
    //property Numeric position3 ;

    variables.rpt = [] ;

    variables.sumTotal = 0 ;

    function init ( required String inp, required Numeric st ) {
        var dayin = new cfc.Input(arguments.inp,false) ;
        //writeDump(dayin.getDayInput())//.filter( (el)=>!isNumeric(el))); //abort;
        //writeDump(dayin); abort;
        variables.rpt = dayin.getDayInput().sort("numeric") ;
        
        variables.sumTotal = arguments.st ;
        return this ;
    }

    Array function parse2 () {
        var retval = [0,""] ;
        var inRpt = variables.rpt.duplicate() ;

        var l = 1 ;
        var r = inRpt.len() ;
        
        while( inRpt[l] < inRpt[r] ) {
            if( inRpt[l] + inRpt[r] == sumTotal ) { 
                retval[1] = inRpt[l] * inRpt[r] ;
                retval[2] = "[#inRpt[l]#,#inRpt[r]#]" ;
                break ;
            } else { 
                if ( inRpt[l]+inRpt[r] > sumTotal ) {
                    r-- ;
                } else {
                    l++ ;
                }
            }
        }

        return retval ;
    }

    Array function parse3 () {
        var retval2 = [0,""] ;
        var inRpt2 = variables.rpt.duplicate() ;
        
        var l = 1 ;
        var r = inRpt2.len() ;

        for ( i=1; i<r-1 ; i++) {
            l = i+1 ;

            while( inRpt2[l] < inRpt2[r] ) {
                if( inRpt2[i] + inRpt2[l] + inRpt2[r] == sumTotal ) { 
                    retval2[1] = inRpt2[i] * inRpt2[l] * inRpt2[r] ;
                    retval2[2] = "[#inRpt2[i]#,#inRpt2[l]#,#inRpt2[r]#]" ;
                    break ;
                } else { 
                    if ( inRpt2[i]+inRpt2[l]+inRpt2[r] > sumTotal ) {
                        r-- ;
                    } else {
                        l++ ;
                    }
                }
            }
        }

        return retval2 ;
    }
}       
