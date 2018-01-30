public class ContactSearch 
{ 
    public static List<Contact> searchForContacts(String LN,String MPC)
    {
        Contact[] con=[SELECT LastName,MailingPostalCode FROM Contact WHERE (LastName= :LN AND MailingPostalCode= :MPC)];
        return con;
    }

}