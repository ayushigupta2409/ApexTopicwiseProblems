/*
 Query This/Last Week created contacts with related account Name and Phone.
*/
public class ques1 {
    public static void fun(){
        list<Contact> cons = new list<Contact>();
     	cons=[select Id, Account.Name, Account.Phone from Contact where createdDate=last_week];
        for(Contact c : cons){
            system.debug(c.Id+c.Account.Phone+c.Account.Name);
           	
        }
   }
}
