/*
  Query Opportunities created in the last 7 days. If the opportunity stage is closed won
then update description as ‘Opportunity is Closed Won’, in case of closed lost update
description as ‘Opportunity is Closed Lost’ otherwise ‘Opportunity is Open’.
*/
public class ques1 {
    public static void fun(){
        list<Opportunity> opps = new list<Opportunity>([select stagename,description from Opportunity where createddate=last_week]);
        if (opps.size()>0){
            for(Opportunity o:opps){
                if(o.stagename=='closed won') {
                    o.description='Opportunity is Closed Won';
                }
                else if(o.StageName=='closed lost'){
                    o.Description='opportunity is closed lost';
                } 
                else{
                    o.Description='Opportunity is open';
                }
            }
            update opps;
           }
       }
}
