<cfscript>
component {
    private String function makeSafeInput ( required String inp ) {
        local.parsedInput = arguments.inp.replaceNoCase("^","n","ALL") 
            .replaceNoCase("v","s","ALL") 
            .replaceNoCase("<","w","ALL") 
            .replaceNoCase(">","e","ALL") ;
        return local.parsedInput ;
    }
    
    
    
////////////////////////////////////////////////////////////////////////////////    
    function arrayRemoveDuplicates(array){
        return array.reduce(function(deduped, el){
            return deduped.find(el) ? deduped : deduped.append(el);
        }, []);
    }
    
    function removeDuplicatesFromArrayOfObjects(aryOfObjects){   
      var deduped_array = [];      
      for(i = 1; i < arrayLen(arguments.aryOfObjects); i++){
        if( !deduped_array.contains(arguments.aryOfObjects[i]) ){
          deduped_array.add(arguments.aryOfObjects[i]); // it's so cool how you just call .add on a CF array!
        }
      }   
      return deduped_array;
    }
////////////////////////////////////////////////////////////////////////////////
}
</cfscript>