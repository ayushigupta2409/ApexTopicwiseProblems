/*
write a test class to test the following trigger:
Whenever New Account Record is created then create associated Contact Record automatically.
*/
@isTest
public class testAccTrigger {
	@isTest
    static void testtrigger(){
        Account a=new Account(name='ayushiacc',phone='123456');
        try{
           insert a; 
        }
        catch(exception e){
            system.debug(e);
        }
        Contact c=[select id,name,phone,accountid,lastname from contact where accountid=:a.Id];
        system.assertequals(c.phone,a.phone);
        system.assertequals(c.lastname,a.name);       
    }
}
