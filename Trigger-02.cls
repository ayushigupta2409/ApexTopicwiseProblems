/*
When ever Lead is created with LeadSource as Web then give rating as cold otherwise hot.
*/
trigger leadtrigger on Lead (before insert) {
    for(Lead l:Trigger.new){
        if(l.LeadSource=='Web'){
            l.Rating = 'hot';
        }
        else{
            l.Rating = 'cold';
        }
    }
}
