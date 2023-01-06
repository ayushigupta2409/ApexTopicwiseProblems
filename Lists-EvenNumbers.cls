/*
Given a non-zero positive integer n, return a list of the first n non-zero positive even numbers, ordered ascending.

Example: evenNumbers(5) returns a list containing the numbers 2, 4, 6, 8, 10.
*/
public List<Integer> evenNumbers(Integer n) {
    //code here
    List<Integer> answer = new List<Integer>();
    for(Integer i=2;i<=2*n;i=i+2){
        answer.add(i);
    }
    return answer;
}
