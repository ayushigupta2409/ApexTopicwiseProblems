/*
The first two numbers in the fibonacci sequence are 1, and all other numbers in the sequence are defined as the sum of the two preceding fibonacci numbers. The first 10 numbers in the fibonacci sequence are 1, 1, 2, 3, 5, 8, 13, 21, 34, and 55.

Given a non-zero positive integer n, return a list of integers of size n containing (in correct order) the first n numbers in the fibonacci series.

Example: fibonacciSeries(5) returns a list containing the numbers 1, 1, 2, 3, and 5.
*/
public List<Integer> fibonacciSeries(Integer n) {
    //code here
    if (n == 1) return new List<Integer> {1};
    List<Integer> fib = new List<Integer>{1,1};
    Integer val=1;
    for(Integer i=2;i<n;i++){
        val+=fib[i-2];
        fib.add(val);
    }
    return fib;
}
