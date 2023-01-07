/*
In-progress cases dealing with mechanical or electrical breakdown need to be escalated. Implement a method escalateIfMeetsCriteria that takes as input a Case record, and sets the IsEscalated field to true if Type is Mechanical or Electrical, Reason is Breakdown, and Status is In Progress

Given the following test code:

Case c = new Case();
c.Type = 'Mechanical';
c.Reason = 'Breakdown';
c.Status = 'In Progress';
escalateIfMeetsCriteria(c);
The expression c.IsEscalated should evaluate to true because the case meets the criteria for escalations.
*/
public void escalateIfMeetsCriteria(Case c) {
    //code here
    if((c.Type=='Electrical' || c.Type=='Mechanical') && c.Reason == 'Breakdown' && c.Status == 'In Progress' ){
        c.IsEscalated = True;    
    }
    
}    
