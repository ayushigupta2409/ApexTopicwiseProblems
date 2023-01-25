/*
Insert 5 Opportunities with different Opportunity Names, CloseDate = Today’s Date
and Stage = ‘ Prospecting.
*/
public class ques1 {
    public static void fun(){
        List<Opportunity> opps = new List<Opportunity>();
        for(Integer i=0;i<5;i++){
            Opportunity o=new Opportunity(Name='Opp'+i,CloseDate=system.today(),StageName='Prospecting');
            opps.add(o);
        }
        if(opps.size()>0){
        	insert opps;    
        }
        
   }
}
