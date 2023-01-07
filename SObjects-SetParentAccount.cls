/*
Implement the method setParent that takes as input an account acc, a contact con, and an opportunity opp and sets the account is the parent for both the opportunity and contact. Make sure to not take any action if the provided account or its Id is null.

Given the following test code:

Account acc = new Account(Id = '0018c00002CQU9EAAX');
Contact con = new Contact(LastName = 'Smith');
Opportunity opp = new Opportunity(Name = 'Coding Bootcamp');
setParent(acc, con, opp);
The expression opp.AccountId == '0018c00002CQU9EAAX' && con.AccountId == '0018c00002CQU9EAAX' returns true because both the contact and the opportunity now have acc as the parent account.
*/
public void setParent(Account acc, Contact con, Opportunity opp) {
    //code here
    if(acc != null && acc.Id != null){
        con.AccountId = acc.Id;
        opp.AccountId = acc.Id;
    }
}        
