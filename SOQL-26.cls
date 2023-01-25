/*
  Query Accounts with related contacts created in the last one month. Populated ’Total
Contacts’ Field on Account by counting number of contacts associated with Account. If
no contact then populate 0.
*/
public class ques1 {
    public static void fun(){
        list<Account> accs = new list<Account>([select id,totalcontacts__c,(select id from contacts) from Account where createddate=last_month]);
        if (accs.size()>0){
            for(Account a:accs){
                a.totalcontacts__c=a.contacts.size();
            }
            update accs;
           }
       }
}
