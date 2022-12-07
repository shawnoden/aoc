<cfscript>
        component
        {
            // https://adventofcode.com/
            this.name="aoc2021" ;
            this.applicationTimeout = createTimespan(0,0,5,0) ;
            this.rootdir = getDirectoryFromPath(getCurrentTemplatePath()) ;

            this.mappings["/inputs"] = this.rootdir & "inputs" ;
            this.mappings["/cfc"] = this.rootdir & "cfc" ;
            this.mappings["/texts"] = this.rootdir & "texts" ;
            this.mappings["/days"] = this.rootdir & "days" ;
        }
        </cfscript>
