/*
Write a trigger in which if an account that has related contacts and the user 
tries to delete that account it throws you an error "Account cannot be deleted".
*/
trigger acctrigger on Account (before delete) {
    Set<Id> Ids=new Set<Id>();
    for(Account a:Trigger.old){
        Ids.add(a.Id);
    }
    Map<Id,Account> acc = new Map<Id,Account>([Select Id,(select id from contacts) from Account where Id in:Ids]);
    for(Account a:Trigger.old){
       if(acc.containskey(a.Id) && acc.get(a.Id).contacts.size()>0)){
          a.addError('cannot delete record. Related contacts exist.');
        }
    }
}
