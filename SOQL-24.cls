/*
  Query Accounts created in the last 7 days. Now update their phone number with
‘12345678’.
*/
public class ques1 {
    public static void fun(){
        list<Account> accs = new list<Account>([select id,phone from Account where createddate=last_week]);
        if (accs.size()>0){
            for(Account a:accs){
           		a.phone='12345678';
            }
            update accs;
           }
       }
}
