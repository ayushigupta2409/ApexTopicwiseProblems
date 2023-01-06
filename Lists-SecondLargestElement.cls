/*
Given an list of Integers numbers, return the second largest integer in the list. Assume that the input list will always contain at least two distinct integers.

Example: secondLargest(new List {5, 2, 8, 4, 8, 1}) evaluates to 5 because 5 is the second largest Integer in the array, with 8 being the largest integer.

Note: While not necessary to solving this problem, it may be be helpful to know the smallest possible Integer: -2,147,483,648. However, you cannot set an integer directly to this value because of a bug in Apex, but you can do the following:

Integer num = -2147483647 - 1;
*/
public Integer secondLargest(List<Integer> numbers) {
    //code here
    Integer largestseen =  -2147483647 - 1;
    Integer secondlargestseen =  -2147483647 - 1;
    for(Integer i=0;i<numbers.size();i++){
        if(numbers[i]>largestseen){
            secondlargestseen = largestseen;
            largestseen = numbers[i];
        }
        else if(numbers[i]>secondlargestseen && numbers[i]<largestseen){
            secondlargestseen = numbers[i];
        }
    }
    return secondlargestseen;
}        
