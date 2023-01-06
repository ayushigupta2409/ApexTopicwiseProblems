/*
A positive integer is defined as an integer greater than zero. Implement the method positiveIntegers that takes as input a list of integers numbers, and returns a new list with non-positive integers removed.

Example: positiveIntegers(new List {2, -3, 6, 2}) returns a list containing the numbers 2, 6, 2.
*/
public List<Integer> positiveIntegers(List<Integer> numbers) {
    //code here
    List<Integer> answer = new List<Integer>();
    Integer n = numbers.size();
    for(Integer i=0;i<n;i++){
        if(numbers[i]>0){
            answer.add(numbers[i]);
        }
    }
    return answer;
}  
