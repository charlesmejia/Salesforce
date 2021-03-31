public with sharing class RegistrationSuccess {

    private static final Id EMAIL_TEMPLATE_iD = '2F00X5Y000002RTJB'; 
    public RegistrationSuccess() 
    {
        
    }

    public void SendEmailRegistration(Set<Id> setIds)
    {
        List<Id> customersId = new List<Id>();
        for (id customer : setIds) {
            customersId.add(customer);
        }
        Messaging.MassEmailMessage mail = new Messaging.MassEmailMessage();
        mail.setTargetObjectIds(customersId);
        mail.setSenderDisplayName('System Admin');
        mail.setTemplateId(EMAIL_TEMPLATE_iD);
        Messaging.sendEmail(new Messaging.MassEmailMessage[] { mail });
    }
    
}
