/*
The method casesByType takes as input a list of cases and returns a Map> with case types (Type field on Case) as the keys, and a list of cases of that type as values. This map should not include cases with no Type specified.

For example, given the following cases:

c1
Subject: 'Power does not come on'
Type: 'Electrical'
c2
Subject: 'Several switches not responding'
Type: 'Electrical'
c3
Subject: 'Lever jammed - cannot run machine'
Type: 'Structural'
The method call casesByType(new List {c1, c2, c3}) should return a map containing the following key/value pairs:

'Electrical' -> { c1, c2 }
'Structural' -> { c3 }
*/
public Map<String, List<Case>> casesByType(List<Case> cases) {
    //code here
    Map<String, List<Case>> result = new Map<String, List<Case>>();
    for (Case c : cases) {
        if (c.Type != null) {
            if (result.containsKey(c.Type)) {
                result.get(c.Type).add(c);
            }
            else {
                result.put(c.Type, new List<Case> { c });
            }
        }
    }
    return result;
}
