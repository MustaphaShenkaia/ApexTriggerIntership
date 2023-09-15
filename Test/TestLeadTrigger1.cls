@Istest
public class TestLeadTrigger1 {
	
     @Istest
    public static void testStateAutoPopulated(){
        
         test.startTest();
        
            Lead lead1 = new Lead(FirstName = 'TestAd', LastName = 'TestSoyad');
            insert lead1;
        
        	Lead l = [SELECT Id, Name, FirstName,  LastName FROM Lead WHERE Id = :lead1.Id];
    		System.assertEquals('TestAd', l.FirstName);
        	
        	l.FirstName = 'TestAd2';
        	update l; 
			System.assertEquals('TestAd2', l.FirstName);
        
         test.stopTest();        
    }
}