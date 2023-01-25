/*
 Query Account along with related opportunities where Account phone!=null. Now
display results through system.debug( ) in following ways:
“Account Name has TotalAmountOnRelatedOpp worth Opportunities”
*/
public class ques1 {
    public static void fun(){
        list<Account> accs = new list<Account>([select Id,Name,Phone,(select Id,amount from opportunities) from Account where Phone != null]);
       	Decimal total = 0;
        for(Account a : accs){
            for(Opportunity o:a.opportunities){
                if(o.Amount!=NULL){
                 	total+=o.Amount;   
                }
            }
            System.debug(a.Name+' has '+total+' worth opportunities'); 
            total =0;
       }
   }
}
