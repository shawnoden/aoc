<cfscript>
component {   
    
    property Numeric ModuleFuel ;
    property Numeric TotalFuel ;
    
    variables.FuelInput = [];

    function init ( required String inp ) { 
<<<<<<< HEAD
        //var fi = new cfc.Input(arguments.inp,true) ;
        var fi = new cfc.Input(arguments.inp,false) ;
=======
<<<<<<< HEAD
        var fi = new cfc.Input(arguments.inp,true) ;
=======
        //var fi = new cfc.Input(arguments.inp,true) ;
        var fi = new cfc.Input(arguments.inp,false) ;
>>>>>>> 132049c2778f11d45aca664ec0d8ed00e5e112b9
>>>>>>> e77654d6937f845e3812ac4e44c1fb1522772ad3
        variables.FuelInput = fi.getWeekInput();
        variables.ModuleFuel = 0 ;
        variables.TotalFuel = 0 ;
        return this ;
    }

    private Numeric function doMath ( required Numeric inp ) {
        // Div 3, round down, subtract 2
        return (inp \ 3 ) - 2 ;
    }
   
    private Any function recurseMath ( required Numeric inp ) {
        var thisFuel = 0 ;
        var fuel = doMath(arguments.inp) ;
        
        while ( fuel > 0 ) {
            thisFuel+=fuel ;
            fuel = doMath(fuel);
        }

        return thisFuel;
    }
    
<<<<<<< HEAD
    public Numeric function calcModuleFuel( ){
=======
    private Numeric function calcModuleFuel( ){
>>>>>>> e77654d6937f845e3812ac4e44c1fb1522772ad3
        var totalModuleFuel = 0 ;
        totalModuleFuel = variables.FuelInput.reduce( 
            function(res, el) {
                res = res?:0;
                res += doMath(el);
                return res;
            }, 0 
        ) ;
        variables.ModuleFuel = totalModuleFuel ;
        return totalModuleFuel ;
    } 
    
<<<<<<< HEAD
    public Numeric function calcTotalFuel( ) {
=======
    private Numeric function calcTotalFuel( ) {
>>>>>>> e77654d6937f845e3812ac4e44c1fb1522772ad3
        var totalFuel = 0 ;
        
        totalFuel = variables.FuelInput.reduce( 
            function(res, el) {
                res = res?:0;
                res += recurseMath(el);
                return res;
            }, 0 
        ) ;
        variables.TotalFuel = totalFuel ;
        return totalFuel ;
    }

    function getFuelInput() {
        return variables.FuelInput;
    }
<<<<<<< HEAD
=======

    function getModuleFuel() {
        calcModuleFuel() ;
        return variables.ModuleFuel ;
    }

    function getTotalFuel() {
        calcTotalFuel() ;
        return variables.TotalFuel ;
    }
>>>>>>> e77654d6937f845e3812ac4e44c1fb1522772ad3
}
</cfscript>
