/*
 Query Opportunities where created date is last month and updated their stage to
closed won. Also create 5 new opportunities. [Hint: Use Upsert]
*/
public class ques1 {
    public static void fun(){
        list<Opportunity> opps = new list<Opportunity>([select id,stagename from Opportunity where createddate = last_month]);
        if (opps.size()>0){
            for(Opportunity o:opps){
             	o.stagename = 'closed won';
            }
        }
        for(Integer i=0;i<5;i++){
            Opportunity o = new Opportunity(name='opp'+i,stagename='Prospecting',closedate=system.today()+30);
            opps.add(o);
        }
        if (opps.size()>0)
            upsert opps;
       }
}
