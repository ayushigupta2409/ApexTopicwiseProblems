/*
Query Accounts where Phone =’123456’ and update Phone to ’654321’.
*/
public class ques1 {
    public static void fun(){
        list<Account> accs = new list<Account>([select Id,Phone from Account where Phone='123456']);
        if (accs.size()>0){
            for(Account a:accs){
             	a.Phone = '654321';
            }
            update accs;
        }
       }
}
