/*
Insert 5 Accounts with different account Names and Phone =’123456’.
*/
public class ques1 {
    public static void fun(){
        List<Account> accs = new List<Account>();
        for(Integer i=0;i<5;i++){
            Account a=new Account(Name='accountName'+i,phone='123456');
            accs.add(a);
        }
        insert accs;
   }
}
