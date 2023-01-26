/*
Creates the number of contacts which are equal to the number which we will 
enter in the Number of Locations field on the Account Object.
*/
trigger acctrigger on Account (after insert) {
    list<Contact> cons=new list<Contact>();
    for(Account a: Trigger.new){
        if(a.NumberOfLocations__c>0){
            for(integer i=0;i<a.NumberofLocations__c;i++){
             	Contact c = new Contact(lastname=a.name,AccountId=a.Id,phone=a.phone);
        		cons.add(c);   
            }   
        }
    }
    if(cons!=null && cons.size()>0)
    insert cons;
}
