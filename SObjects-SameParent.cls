/*
Implement the method sameParent that takes as input an opportunity opp and a contact c, and returns true if both the opportunity and contact have the same parent account.

Given the following test code:

Contact con = new Contact(AccountId = '0018c00002CQU9EAAX');
Opportunity opp = new Opportunity(AccountId = '0018c00002CQU9EAAX');
The method call sameParent(con, opp) returns true because both the contact and the opportunity have the same parent account.
*/
public Boolean sameParent(Contact c, Opportunity opp) {
    //code here
    if(c.AccountId == opp.AccountId && c.AccountId != null){
        return True;
    }
    return False;
}      
