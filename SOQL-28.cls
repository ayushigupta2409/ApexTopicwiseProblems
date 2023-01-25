/*
 Create a Custom Object named “Employee”. Create Name, Salary, Phone, Lookup
(Account) fields on Employee Object. Create a Total Salary field on Account. Now Query
Accounts created this year along with related Employees. Populate total salary of all
related employees on account. [Parent-Child SOQL]
*/
public class ques1 {
    public static void fun(){
        list<Account> accs = new list<Account>([select id,TotalSalary__c,(Select Salary__c from Employee__r) from Account where createddate=last_year]);
        if (accs.size()>0){
            for(Account__c a:accs){
                decimal total =0;
                for(Employee__c e:a.Employee__r){
                    total+=a.employee__r.salary__c;
                }
				TotalSalary__c=total;
            }
            update accs;
           }
       }
}
