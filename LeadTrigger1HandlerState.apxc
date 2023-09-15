public class LeadTrigger1HandlerState {
	
    public static void stateAutoPopulated(List<Lead> listOfLead){
        
         	for (Lead lead : listOfLead) {
                                      
                  if(lead.State__c != null) {
                      
                     lead.Country = 'United States';  
                     lead.State = lead.State__c.substring(4); 

                  }
       		}          
            
    }

}