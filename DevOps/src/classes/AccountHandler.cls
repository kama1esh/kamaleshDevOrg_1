public class AccountHandler 
{
   
   public static Account insertNewAccount(String name)
   {
        try
    	{
            Account a1= new Account();
            a1.Name=name;
            insert a1;
            return a1;
        }
    catch(DmlException e)
    {
        return null;
    }
  }
}