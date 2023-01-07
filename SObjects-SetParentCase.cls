/*
Implement the method linkParent that takes as input two cases c1 and c2, and sets the case created first as the parent of the case created later only if both cases look up to the same Contact. Ensure to handle the special case where the cases do not have any related contacts.

Given the following two cases:

c1
Id: '5008c00001GHfeUAAT'
CreatedDate: 2022-01-17 05:15pm GMT
ContactId: '0035f00000A4REqAAN'
Subject: 'Not able to log in'
c2
Id: '5008c00001GHfeoAAD'
CreatedDate: 2022-01-19 2:34pm GMT
ContactId: '0035f00000A4REqAAN'
Subject: 'User not created in system of record'
and given the following test code:

linkParent(c1, c2);
The case c1 should be set as the parent of case c2 since they are both related to the same Contact and c2 was created after c1.
*/
public void linkParent(Case c1, Case c2) {
    //code here
    if(c1.ContactId == c2.ContactId && c1.ContactId != null && c2.ContactId != null){
        if(c1.CreatedDate < c2.CreatedDate){
            c2.ParentId = c1.Id;    
        }
        else if (c2.CreatedDate < c1.CreatedDate){
            c1.ParentId = c2.Id;
        }
        
    }
}      
