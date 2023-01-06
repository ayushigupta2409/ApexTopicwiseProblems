/*
Implement the method sameElements that takes as input two lists of integers nums1 and nums2, and returns true if and only if every integer in one of the lists is also contained by the other list. This means that for sameElements to return true, there should be no integer in nums1 that is not present in nums2, and no integer in nums2 that is not present in nums1.

Note that the lists may contain duplicates and your solution should assume no specific ordering.

Examples:

sameElements(new List {5, 7}, new List {7, 5, 5}) evaluates to true

sameElements(new List {5, 7}, new List {7, 5, 9}) evaluates to false
*/
public Boolean sameElements(List<Integer> nums1, List<Integer> nums2) {
    //code here
    Set<Integer> s1 = new Set<Integer>(nums1);
    Set<Integer> s2 = new Set<Integer>(nums2);
    return s1==s2;
}    
