public class ContactAndLeadSearch 
{
    public static List<List<sObject>> searchContactsAndLeads(String name)
    {
       
		List<List<sObject>> searchList = [FIND :name IN ALL FIELDS 
                   RETURNING Lead(FirstName,LastName WHERE (FirstName= :name OR LastName= :name)),Contact(FirstName,LastName WHERE (FirstName= :name OR LastName= :name))];
        
        return searchList;
        
    }   
}