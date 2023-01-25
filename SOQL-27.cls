/*
 Query Contacts created last week and if Mobile phone is not populated on contact
then copy Phone of Related Account. [Child-Parent SOQL]

*/
public class ques1 {
    public static void fun(){
        list<Contact> cons = new list<Contact>([select id,MobilePhone,Account.Phone from Contact where createddate=last_week and AccountId != null]);
        if (cons.size()>0){
            for(Contact c:cons){
                if(c.MobilePhone == null){
                    c.MobilePhone=c.Account.Phone;
                }
            }
            update cons;
           }
       }
}
