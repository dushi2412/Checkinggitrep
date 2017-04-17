public class EmailManaging {
    
    //Public method
    public void sendmail(string address, string subject, string body){
		Messaging.SingleEmailMessage mail = new Messaging.SingleEmailMessage();
        string[] toaddresses = new string[]{address};
        mail.settoaddresses(toaddresses);
        mail.setsubject(subject);
        mail.setPlainTextBody(body);
        
        //passgin above information to builtin sendemail
        
        Messaging.SendEmailResult[] results = Messaging.sendEmail(new messaging.singleEmailmessage[] {mail});
        
        inspectResults(results);
    }
        //helper method
       
        private static boolean inspectResults(messaging.SendEmailResult[] results){
            Boolean sendResult = true;
            for(messaging.sendEmailResult res: results){
                if(res.isSuccess()){
                    system.debug('Email Sent Successfully');
                }
                else {
                    SendResult = false;
                    system.debug('Following errors occured: ' + res.getErrors());
                }
            }  
            return sendResult;
        }
    }