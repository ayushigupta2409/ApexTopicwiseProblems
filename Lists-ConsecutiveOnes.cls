/*
Given a List of Integers containing only binary numbers (0 and 1), return the maximum number of consecutive 1s appearing in the List.

Example : Input: [1,1,0,1,1,1,1] Output: 4. The array has 2 consecutive 1s starting index 0, and 4 consecutive 1s starting index 3.
*/
public Integer maxConsecutiveOnes(Integer[] numbers) {
    //code here
    Integer max=0;
    Integer count=0;
    for(Integer i=0;i<numbers.size();i++){
        if(numbers[i]==1){
            count+=1;
        }
        else{
            if(count>max){
                max=count;
            }
            count=0;
        }
    }
    if(count>max){
        return count;
    }
    return max;
}
