/*
Query This/Last Week created Accounts with related contacts.
*/
public class ques1 {
    public static void fun(){
        list<Account> accs = new list<Account>();
     	accs=[select Id,(select id from contacts) from Account where createdDate=last_week];
        for(Account a : accs){
            system.debug(a.Id);
            for(Contact c: a.contacts){
                system.debug(c.Id);
            }
        }
   }
}
