component {
    public String function setupDay1 ( required String intxt ) {
        // Setup for the day by reading the file to a variable.
        return ( fileRead(arguments.intxt) ) ;
    }

    public Number function d1_p1 ( required String intxt , Number startNum = 0 ) {
        // Use the "delimiters" of + and - to make a list.
        local.part1_delims = arguments.intxt.replace("+",",","all").replace("-",",-","all") ;
        // Convert that list to an array.
        local.p1_array = part1_delims.listtoarray() ;

        local.sourceFrequency = arguments.startNum ;
        // Iterate through list and sum.
        return 0 ;
    }



    public Number function day1_Part1 ( required String intxt , Number startNum = 0 ) {
        // Use the "delimiters" of + and - to make a list.
        local.part1_delims = arguments.intxt.replace("+",",","all").replace("-",",-","all") ;
        // Convert that list to an array.
        local.p1_array = part1_delims.listtoarray() ;
        // Sum the values of the array.
        local.p1_answer = p1_array.sum() + arguments.startNum ;

        return p1_answer ;
    }

    public Number function day1_Part2 ( required String intxt, Number startNum = 0 ) {
        // Use the "delimiters" of + and - to make a list.
        local.part1_delims = arguments.intxt.replace("+",",","all").replace("-",",-","all") ;
        // Convert that list to an array.
        local.p1_array = part1_delims.listtoarray() ;

        // Setup variables to keep track of our frequency.
        local.finalFrequencyList = [] ;
        local.frequencyChangeList = duplicate(p1_array) ;
        writeDump(frequencyChangeList);

        // loop over our starting array, if final frequency repeats, stop and return,
        // otherwise keep going and start over if needed.
        var iters = 0 ;
        var currentFrequency = arguments.startNum ;
        var doloop = true ;
        while ( doloop == true ) {
             ++iters;
            // test
            writeoutput(
                "i=" & iters & " >>> " &
                "startFreq=" & currentFrequency & " + " &
                "change=" & frequencyChangeList[1] & " >>> "
            );
            //test

            currentFrequency += FrequencyChangeList[1] ;
            frequencyChangeList.deleteAt(1);

            writeoutput("changedFrequency=" & currentFrequency & "<br>");

            if ( finalFrequencyList.find(currentFrequency) ) {
                return currentFrequency ;
            } else {
                finalFrequencyList.append(currentFrequency)  ;

                if (frequencyChangeList.len() == 0) {
                    frequencyChangeList = duplicate(p1_array) ;
                }
            }

            writedump(var=frequencyChangeList, label="FCL");

            //test
            writedump(var = finalFrequencyList, label="FFL");
            if (iters >= 1000 ) { return 9999; }
         }

    }
}