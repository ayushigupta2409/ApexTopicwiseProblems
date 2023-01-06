/*
Implement the method arraySum that takes as input a non-empty list of Integers numbers, and returns the sum of all numbers in the list.

Example: arraySum(new List {5, 2, 3}) evaluates to 10.
*/
public static Integer arraySum(List<Integer> numbers) {
    //code here
    Integer sum = 0;
    Integer n = numbers.size();
    for(Integer i=0;i<n;i++){
        sum+=numbers[i];
    }
    return sum;
}
