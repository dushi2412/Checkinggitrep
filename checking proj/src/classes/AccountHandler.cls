public class AccountHandler {

// this is to check the chekcing project
    public static account insertNewAccount(string AcName){
        
            try{
                Account acct = new Account(Name=AcName);
                    insert acct;
                System.debug('Account '+AcName+' created');
                return acct;
            }    catch(DmlException e){
                system.debug('DML Error:' + e.getMessage());
                return null;
            }
        }
}