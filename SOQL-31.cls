/*
Insert 200 Account records and make sure the Governor limit should not hit. Then
delete those records as well.
*/
public class ques1 {
    public static void fun(){
        list<Account> accs = new list<Account>();
        for(integer i=0;i<200;i++){
			Account a =new Account(name='mynewacc'+i+'new2');
            accs.add(a);
        }
        insert accs;
        accs=[select id from account where createddate=System.Today()];
        if(accs.size()>0)
        delete accs;
    }
}
