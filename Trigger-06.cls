/*
Whenever Opportunity "Stage" is modified to "Closed Won" then set 
"Close Date" as "Today Date" and "Type" as "New Customer".
*/
trigger opptrigger on Opportunity (before update) {
    for(Opportunity o:Trigger.new){
        if(o.StageName=='Closed Won' && Trigger.oldMap.get(o.Id).StageName!='Closed Won'){
            o.CloseDate=System.today();
            o.Type='New Customer';
        }
    }
}
