/*
 Query Account along with related contacts where Account phone!=null. Now display
results through system.debug( ) in following ways: Account Name has #ofcontacts
related.
*/
public class ques1 {
    public static void fun(){
        list<Account> accs = new list<Account>([select Id,Name,Phone,(select Id from Contacts) from Account where Phone != null]);
        for(Account a : accs){
            System.debug(a.Name+' has '+a.Contacts.size()+' contacts related.');            
       }
   }
}
