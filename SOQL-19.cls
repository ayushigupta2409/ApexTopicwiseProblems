/*
Query Accounts where Phone =654321 and update Phone to 123456. Also create 5
new account records.[Hint : Use Upsert]
*/
public class ques1 {
    public static void fun(){
        list<Account> accs = new list<Account>([select Id,Phone from Account where Phone='654321']);
        if (accs.size()>0){
            for(Account a:accs){
             	a.Phone='12345';
            }
        }
        for(Integer i=0;i<5;i++){
            Account a = new Account(name='myaccount'+i,phone='8888888');
            accs.add(a);
        }
        if (accs.size()>0)
            upsert accs;
       }
}
