<cfscript>
    d4_input = [284639,748759] ;
    
    pw = new cfc.Password(d4_input);
    
    //writeDump(pw);
    
    writeDump( pw.checkDigitCompliance(456789) );
    
    
    
</cfscript>