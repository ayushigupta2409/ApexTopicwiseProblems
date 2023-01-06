/*
Implement the method findLargest that takes as input a non-empty list of Integers nums, and returns the largest Integer in the list.

Example: findLargest(new List {5, 2, 8, 4, 2, 1}) evaluates to 8 because 8 is the largest Integer in the list.
*/
public static Integer findLargest(List<Integer> nums) {
	//code here
    Integer max=nums[0];
    Integer n=nums.size();
    for(Integer i=0;i<n;i++){
        if(nums[i]>max){
            max=nums[i];
        }
    }
    return max;
}
