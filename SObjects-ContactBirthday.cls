/*
Given a Contact with the Birthdate field set to some date, return true if today is the Contact's birthday and return false if not. Assume that a future date will not be set on the Birthdate field.

Given the following test code:

Contact c1 = new Contact();
c1.Birthdate = Date.newInstance(1992, 5, 15)
The expression isBirthday(c1) should return true if executed on 5/15/2022 or 5/15/2020.
*/
public Boolean isBirthday(Contact c) {
    //code here
    if (c.Birthdate.month() == System.today().month() && c.Birthdate.day() == System.today().day()){
        return True;
    }
    return False;
}        
