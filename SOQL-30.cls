/*
Create a lookup to Employee on Contact object. Query Contacts created last week and
if Mobile phone is not populated on contact then copy Phone of Related Employee.
*/
public class ques1 {
    public static void fun(){
        list<Contact> cons = new list<Contact>([select id,mobilephone,(select Phone__c from employee__r) from contact where createddate=last_weak]);
        if(cons.size()>0){
            for(Contact c: cons){
                if(c.mobilephone ==null){
                	c.mobilephone=c.Employee__r.phone__c;
                }
             }        
			update cons;
        }
       }
}
