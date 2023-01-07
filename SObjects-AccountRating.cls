/*
Implement a method setAccountRating that looks at an Account's AnnualRevenue, and sets the value of the Rating picklist field based on the following criteria:

Accounts with AnnualRevenue less than or equal to 100,000 get a rating of "Cold"
Accounts with AnnualRevenue less than or equal to 500,000 but greater than 100,000 get a rating of "Warm"
Accounts with AnnualRevenue greater than 500,000 get a rating of "Hot"
Given the following test code:

Account a = new Account(AnnualRevenue = 150000);
setAccountRating(a);
The expression a.Rating == 'Warm' should be true because the AnnualRevenue was over 100,000 but less than 500,000
*/
public void setAccountRating(Account a) {
    //code here
    if(a.AnnualRevenue <= 100000){
        a.Rating = 'Cold';
    }
    else if(a.AnnualRevenue <= 500000){
        a.Rating = 'Warm';
    }
    else{
        a.Rating = 'Hot';
    }
}            
