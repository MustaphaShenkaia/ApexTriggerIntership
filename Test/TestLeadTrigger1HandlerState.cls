@IsTest
public class TestLeadTrigger1HandlerState {
	
    @Istest
    public static void testStateAutoPopulated(){
        
        test.startTest();
       
		// Lead Record        
        Lead lead1 = new Lead(FirstName='TestA', LastName='TestB', State__c = 'AL: Alabama');        
        insert lead1;  
        
        
        
        List<Lead> leadList = [SELECT Id, State__c FROM Lead];
      	// System.assertEquals(1, leadList.size());      	
        
        for(Lead l : leadList) {
			l.Company = 'United States';   
            l.State = l.State__c.substring(4);  
            update l; 
        }
        
        
        
        List<Lead> leadList2 = [SELECT Id, Name, Country, State FROM Lead];
        
        for(Lead l : leadList2) {
            System.assertEquals('United States', l.Country);
            System.assertEquals('Alabama', l.State);
        }
        
        
        test.stopTest();
    }
}