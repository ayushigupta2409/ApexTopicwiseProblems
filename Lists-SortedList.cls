/*
A list is considered to be sorted ascending when no element in the list is smaller than the preceding element if one is present. Similarly, a list is considered sorted descending if no element in the list is larger than the preceding element if any.

Implement the method isSorted that takes as input a list of integers numbers, returns true if the list is sorted in any direction (acsending or descending), and returns false otherwise.

Example: isSorted(new List<Integer> {5, 2, 0, -1}) evaluates to true because the input list is sorted descending.
*/
public boolean isSorted(List<Integer> numbers) {
    //code here
    
    if(numbers.size()<=2){
        return True;
    }
    
    for(Integer i=1;i<numbers.size()-1;i++){
        if (!(numbers[i-1]<=numbers[i] && numbers[i]<=numbers[i+1] || numbers[i-1]>=numbers[i] && numbers[i]>=numbers[i+1] )){
            return False;
        }
    }
    
    return True;
}        
