/*
When ever a case is created with origin as email then set status as new and Priority as Medium.
*/
trigger casetrigger on Case (before insert) {
    for(Case c: Trigger.new){
        if(c.Origin == 'Email'){
            c.Status='New';
            c.Priority='Medium';
        }
    }
}
