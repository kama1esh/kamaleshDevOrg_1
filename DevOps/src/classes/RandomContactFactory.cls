public class RandomContactFactory 
{
	public static List<Contact> generateRandomContacts(Integer n, String LN) 
    {
        List<Contact> c1 = new List<Contact>();
        for(Integer i=0;i<n;i++) 
        {
            Contact c = new Contact(FirstName='Test ' +i);
            c1.add(c);
        }
	return c1;
    }
}