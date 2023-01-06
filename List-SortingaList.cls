/*
Implement the method getNamesInAscOrder(), which accepts a list of fullnames as input and returns the list sorted in ascending order. Use the standard library method to sort.

Given the following test code:

List<String> fullNames = new List<String> { 'Blake Howard', 'Adrienne Copeland'};
List<String> result = getNamesInAscOrder(fullNames);
The expressions result[0] == 'Adrienne Copeland', result[1] == 'Blake Howard', and result.size() == 2 should be true.
*/
public List<String> getNamesInAscOrder(List<String> accountNames)
{
    //code here
    /*List<String> sortedlist =  new List<String>();
    sortedList = accountNames.sort();
    */
    accountNames ?.sort();
    return accountNames;
}  
