public class Check_for_Ann_Life_Manual_Remove_Handler {
    
    public static void afterInsertorUpdate(List<Account> account){
        // Account acc=new Account();
        List<Contact> con = new List<Contact>();
        List<Contact> Updatecon = new List<Contact>();
        Set<Id> AccntIds = new Set<Id>();
        for(Account accnt: account)
        {
            AccntIds.add(accnt.Id);
        }
        con = [select Id,Annuity_Manual_Remove__c,Life_Manual_Remove__c from Contact where AccountId =: AccntIds];
        for(Account acc : account)
        {
            for(Contact cont: con)
            {
                if(acc.Line_of_Business__c=='Annuity')
                {
                    cont.Annuity_Manual_Remove__c=false;
                    cont.Life_Manual_Remove__c=true;
                }
                else if(acc.Line_of_Business__c=='Life'){
                    cont.Annuity_Manual_Remove__c=true;
                    cont.Life_Manual_Remove__c=false;
                } 
                else if(acc.Line_of_Business__c=='Both'){
                    cont.Annuity_Manual_Remove__c=false;
                    cont.Life_Manual_Remove__c=false;
                }
                Updatecon.add(cont);
            }
            update Updatecon;
        }
    }
    
}