/*
Query 5 Account records into a list. Now create a set of Account ID and Map <Id,
Account> using a list. Now iterate on set and check whether set values match with map
key, if yes then display map value.
*/
public class ques1 {
    public static void fun(){
        list<Account> accs = new list<Account>([Select Id from Account LIMIT 5]);
        map<Id,Account> accmap = new map<Id,Account>(accs);
        Set<Id> Ids = new Set<Id>();
        for(Account a:accs){
            Ids.add(a.id);
        }
        for(Id i:Ids){
            if(accmap.containskey(i)){
                system.debug(accmap.get(i));
            }
        }
   }
}
