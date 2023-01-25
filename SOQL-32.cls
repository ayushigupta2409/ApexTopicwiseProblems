/*
 Delete opportunities whose stage is closed lost and created last month.
*/
public class ques1 {
    public static void fun(){
        list<Opportunity> opps = new list<Opportunity>([select id from opportunity where stagename='closed lost' and createddate=last_month]);
    	if(opps.size()>0)
            delete opps;
    }
}
