/*
  Query Accounts created last week. Now Insert one opportunity under each account.
*/
public class ques1 {
    public static void fun(){
        list<Account> accs = new list<Account>([select id from Account where createddate=LAST_WEEK]);
        list<Opportunity> opps = new list<Opportunity>();
        if (accs.size()>0){
            for(Account a:accs){
           		Opportunity o = new Opportunity(name=a.name,closedate=system.today()+90,stagename='Prospecting',AccountId=a.Id);     
            	opps.add(o);
            }
           }
        if(opps.size()>0) insert opps;
       }
}
