/*
Query 5 Account records into a list. Now create a map where key will be account Id and
value will Account sObject (without using loop) and display values of map.
*/
public class ques1 {
    public static void fun(){
        list<Account> accs = new list<Account>([Select Id from Account LIMIT 5]);
        map<Id,Account> accmap = new map<Id,Account>(accs);
        System.debug(accmap.values());
      }
}
