trigger opportunityRecTypeUpdate on Opportunity (before insert) {
     List<Opportunity> oppListObj= new List<Opportunity>();
     Opportunity_Record_Type__c oppRectype= Opportunity_Record_Type__c.getInstance();
    
   for(Opportunity opp: Trigger.new) {
       
       if(opp.MIG_SalesGroupID__c=='Annuity'){
          opp.RecordTypeId= oppRectype.Annuity_Phase__c; 
       }  
       
       if(opp.MIG_SalesGroupID__c=='Life'){
          opp.RecordTypeId= oppRectype.Life_Phase__c; 
       }  
       
    }
    

}