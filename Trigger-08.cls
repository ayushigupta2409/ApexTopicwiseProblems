/*
The following Trigger will fires when we try to create the account with same 
name i.e. Preventing the users to create Duplicate Accounts
*/
trigger acctrigger on Account (before insert,before update) {
    Set<String> names=new Set<String>();
    for(Account a:Trigger.new){
        names.add(a.name);
    }
    List<Account> acc = new List<Account>([Select Id,name from Account where name in:names]);
	for(Account a:Trigger.new){
        if(trigger.isinsert){
            if(acc.size()>0){
                a.addError('Duplicate record exists');
            }
        }
        if(trigger.isupdate){
            for(Account old:Trigger.old){
                if(acc.size()>0 && a.name!=old.name){
                    a.addError('Duplicate record exists');
        		}
            }
    	}
    }
}
