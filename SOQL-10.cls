/*
 Create 2 Account records with two separate insert statements. Then create 2 Account
records with a single insert statement using List.
*/
public class ques1 {
    public static void fun(){
        //insertion using separate insert statement
        Account a1 = new Account(Name='Account1');
        insert a1;
        Account a2 = new Account(Name='Account2');
        insert a2;
        //insertion using list-1
        list<Account> accs = new list<Account>();
        for(Integer i=0;i<2;i++){
            Account a = new Account(Name='Account'+i);
            accs.add(a);
        }
       	insert accs;
        //insertion using list-2
        list<Account> accs2 = new list<Account>();
        Account a4 = new Account(Name='Account4');
        accs2.add(a4);
        Account a5 = new Account(Name='Account5');
        accs2.add(a5);
        insert accs2;
   }
}
