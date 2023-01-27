/*
when a new contact is created for a existing 
account then set contact otherphone as account phone.
*/
trigger contrigger on Contact (before insert) {
    set<Id> accId = new set<Id>();
    for(Contact c:Trigger.new){
        if(c.AccountId!=null) accId.add(c.AccountId);
    }
    Map<Id,Account> accmap = new Map<Id,Account>([select id,phone from Account where id in :accId and phone!=null]);
	for(Contact c:Trigger.new){
        if(c.AccountId != null && accmap.containskey(c.AccountId)) {
    		c.OtherPhone=accmap.get(c.AccountId).phone;        
        }
    }
}
