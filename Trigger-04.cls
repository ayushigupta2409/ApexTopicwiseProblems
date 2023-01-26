/*
Whenever the Account is created with Industry as Banking then create a contact for account,
Contact Lastname as Account name and contact phone as account phone.
*/
trigger acctrigger on Account (after insert) {
    list<Contact> cons=new list<Contact>();
    for(Account a: Trigger.new){
        if(a.Industry=='Banking'){
         	Contact c = new Contact(lastname=a.name,AccountId=a.Id,phone=a.phone);
        	cons.add(c);   
        }
    }
    if(cons.size()>0)
    insert cons;
}
