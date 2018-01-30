public class DataTableExampleController {
    public List<Contact> contactList {
        get {
            if (contactList == null) {
                contactList = [SELECT Account.Name, FirstName, LastName, Phone FROM Contact limit 100];
            }
            return contactList;
        }
        set;
    }
}