/*
Query Contacts where Email is null and update their email with
‘sanjaygupta.techschool@gmail.com’.
*/
public class ques1 {
    public static void fun(){
        list<Contact> cons = new list<Contact>([select Id,Email from Contact where email=null]);
        if (cons.size()>0){
            for(Contact c:cons){
             	c.email='sanjaygupta.techschool@gmail.com';
            }
            update cons;
        }
       }
}
