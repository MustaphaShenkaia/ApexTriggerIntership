trigger LeadTrigger1 on Lead (before insert , before update , before delete , after insert , after update, after delete, after undelete) {
	
    SWITCH on Trigger.operationType {
        
        WHEN BEFORE_INSERT  { 
         	/*
              for (Lead lead : Trigger.new) {                  
                                      
                  if(lead.State__c != null) {
                      
                     lead.Country = 'United States';  
                     lead.State = lead.State__c.substring(4); 
                     // System.debug(lead.State); 

                  }
               }
			*/
            LeadTrigger1HandlerState.stateAutoPopulated(Trigger.new); 
			
        }
        WHEN BEFORE_UPDATE  { 
        /*
        	for (Lead lead : Trigger.new) {

                                      
                  if(lead.State__c != null) {
                      
                     lead.Country = 'United States';  
                     lead.State = lead.State__c.substring(4); 
                     System.debug(lead.State); 

                  }
               }
            */
             LeadTrigger1HandlerState.stateAutoPopulated(Trigger.new); 
        
        }
        WHEN BEFORE_DELETE  { }
        
       
 
    }
}