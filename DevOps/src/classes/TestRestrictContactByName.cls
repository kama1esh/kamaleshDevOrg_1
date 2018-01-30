@isTest
public class TestRestrictContactByName {
    
        @isTest static void TestInsertContactWithInvalidLastName() {
        // Test data setup
        // Create a contact with the last name INVALIDNAME
        Contact cont = new Contact(FirstName = 'John ', LastName = 'INVALIDNAME');
            
        // Perform test
        Test.startTest();
        Database.SaveResult result = Database.insert(cont, false);
        Test.stopTest();

        // Verify 
        // In this case the insert operation should have been stopped by the trigger,
        // so verify that we got back an error.
        System.assert(!result.isSuccess());
        System.assert(result.getErrors().size() > 0);
        System.assertEquals('The Last Name "INVALIDNAME" is not allowed for DML',
                             result.getErrors()[0].getMessage());
    
        }

}