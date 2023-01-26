/*
Whenever New Account Record is created then needs to create associated Contact Record automatically.
*/
trigger acctrigger on Account (after insert) {
    list<Contact> cons=new list<Contact>();
    for(Account a: Trigger.new){
        Contact c = new Contact(lastname=a.name,AccountId=a.Id);
        cons.add(c);
    }
    insert cons;
}
