/*
Query Employees created this year and if Phone is not populated on Employee record
then copy Phone of Related Account. [Child-Parent SOQL]
*/
public class ques1 {
    public static void fun(){
        list<Employee__c> emps = new list<employee__c>([select id,phone__c,Employee__r.Phone from employee__c where createddate=last_year]);
        if(emps.size()>0){
            for(employee__c e: emps){
                if(e.phone__c ==null){
                	e.phone__c=e.Employee__r.phone;
                }
             }        
			update emps;
        }
       }
}
