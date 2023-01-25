/*
 Query Account (Id, Name, Phone) with Related Opportunities (Name, CloseDate, Stage)
where Account Phone != null. Sort the records in both Asc or Desc Order based on
CreatedDate.*/
public class ques1 {
    public static void fun(){
        list<Account> accs = new list<Account>();
     	accs=[select Id,Name,Phone,(select Name,CloseDate,StageName from Opportunities) from Account where Phone != null order by CreatedDate asc];
        for(Account a : accs){
            system.debug(a.Id+a.Name+a.Phone);
            for(opportunity o:a.opportunities){
                system.debug(o.Name+o.CloseDate+o.StageName);
            }
        }
   }
}
