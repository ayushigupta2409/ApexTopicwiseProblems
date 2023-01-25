 Delete account records where Phone =’123456’. Verify whether records are deleted or
not through Recycle Bin.
*/
public class ques1 {
    public static void fun(){
        list<Account> accs = new list<Account>([select id from Account where Phone='123456']);
        if (accs.size()>0){
           delete accs;
        }
       }
}
