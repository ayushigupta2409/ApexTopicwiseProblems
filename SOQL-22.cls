/*
  Undelete account records deleted in previous point. Check recycle bin is not having
those records once undeleted and they will be under the accounts tab in the app.
*/
public class ques1 {
    public static void fun(){
        list<Account> accs = new list<Account>([select id from Account where Phone='123456' all rows]);
        if (accs.size()>0){
           undelete accs;
        }
       }
}
