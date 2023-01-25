/*
Insert 5 Accounts with at least 1 related Opportunity.
*/
public class ques1 {
    public static void fun(){
        list<Account> accs = new list<Account>();
        for(integer i=0;i<5;i++){
        	Account a = new Account(name='account_new'+i);
        	accs.add(a);
        }
        if(accs.size()>0)
        	insert accs;
        list<Opportunity> opps = new list<Opportunity>();
        if (accs.size()>0){
            for(Account a:accs){
             	Opportunity o = new Opportunity(name=a.Name,AccountId=a.Id,StageName='Prospecting',CloseDate=system.today());
            	opps.add(o);    
            }   
        }
        if(opps.size()>0)
			insert opps;
   }
}
