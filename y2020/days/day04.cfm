<cfscript>
    //https://adventofcode.com/2020/day/4
    if(url?.test==true) {
        try {
            dayInp = new cfc.day04("day04_test.txt") ;
        }
        catch(Any e) {
            writeDump(e);
        }
    } else {
        dayInp = new cfc.day04("day04_part1.txt") ;
    }
    //writedump(dayInp.getPuzzleInput());

    validlist_p1 = ["byr","iyr","eyr","hgt","hcl","ecl","pid"] ; //,"cid"] ; CID not required.
    local.day4a = dayInp.showMe_pt1(validlist_p1, false) ;
    validlist_p2 = [
        ["byr","^[1][9][2][0-9]$|^[1][9][3-9][0-9]$|^[2][0][0][0-2]$"],
        ["iyr","^[2][0][1][0-9]$|^[2][0][2][0]$"],
        ["eyr","^[2][0][2][0-9]$|^[2][0][3][0]$"],
        ["hgt","(^[1][5][0-9]|^[1][6-8][0-9]|^[1][9][0-3])([c][m])|(^[5][9]|^[6][0-9]|^[7][0-6])([i][n])"],
        ["hcl","^[##][0-9a-f][0-9a-f][0-9a-f][0-9a-f][0-9a-f][0-9a-f]$"],
        ["ecl","^amb$|^blu$|^brn$|^gry$|^grn$|^hzl$|^oth$"],
        ["pid","^[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]$"]
    ] ; //,"cid"] ; CID not required.
    local.day4b = dayInp.showMe_pt2(validlist_p2, false) ;

    // ANSWERS
    writeoutput( 
        "Day 4 - Part 1 Answer: " & local.day4a & "<br>"
        & 
        "Day 4 - Part 2 Answer: " & local.day4b & "<br>"
    ) ;
    
// Part 1
// Your puzzle answer was 170. That's the right answer! You are one gold star closer to saving your vacation. [Continue to Part Two]
// Part 2
// Your puzzle answer was 103. That's the right answer! You are one gold star closer to saving your vacation.
</cfscript>