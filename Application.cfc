component
{
    // https://adventofcode.com/
	this.name='aoc2020';
	this.applicationTimeout = createTimespan(0,0,15,0) ;
    this.rootdir = getDirectoryFromPath(getCurrentTemplatePath()) & "y2020/" ;

	this.mappings["/inputs"] = this.rootdir & "inputs" ;
	this.mappings["/cfc"] = this.rootdir & "cfc" ;
	this.mappings["/texts"] = this.rootdir & "texts" ;
}