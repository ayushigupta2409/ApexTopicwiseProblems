/*
Query 5 Account records into a list. Now iterate on a list and create a set of account
Ids and display values of the set.
*/
public class myclass {
    public static void fun1(){
        list<Account> accs = new list<Account>([Select Id from Account limit 5]);
        set<Id> Ids = new set<Id>();
        for(Account a:accs){
            Ids.add(a.Id);
        }
        System.debug(Ids);
    }
}
