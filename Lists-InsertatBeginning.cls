/*
Implement a method that would take an element and a List of elements as arguments and return the same List with the element inserted at the 0th position.

For example, executing the snippet below:

List<String> cities = new List<String> {
  'Seattle',
  'Cairo',
  'London'
};
insertAtStart('Mumbai', cities);
should modify cities to have the following 4 values: ['Mumbai', 'Seattle', 'Cairo', 'London']
You are required to modify the list that is passed. Try doing so without creating any extra lists, which would mean an O(1) space complexity.
*/
public void insertAtStart(String cityName, List<String> cities) {
    //code here
    cities.add(cityName);
    for(Integer i=cities.size()-2;i>=0;i--){
        cities[i+1]=cities[i];
    }
    cities[0]=cityName; 
}
        
