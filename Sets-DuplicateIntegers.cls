/*
Implement the method containsDuplicates that takes as input a list of integers, returns true if the list has more than one occurence of the same number, and returns false if every element in the list is unique.

Examples:

containsDuplicates(new List {5, 50, 500, 1000}) evaluates to false

containsDuplicates(new List {5, 50, 500, 50}) evaluates to true
*/
public Boolean containsDuplicates(List<Integer> nums) {
    //code here
    Set<Integer> set1 = new Set<Integer>(nums);
    return set1.size() != nums.size();
}    
