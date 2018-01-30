public class CompleteAccounts {
    public Integer accSize {get; set;}
    public Integer totalAccountRecords {get; set;}
    public List<SelectOption> accPaginationSizeOptions {get; set;}
    public ApexPages.StandardController stdController;
   
    
    public CompleteAccounts(ApexPages.StandardController stdController){
        this.stdController = stdController;
      
        initAccountPageSizeList();
    }
    
    public ApexPages.StandardSetController accRec{
        get {
            if(accRec == null) {//Initialize only once
                
                accRec = new ApexPages.StandardSetController(Database.getQueryLocator([SELECT Id, Name, OwnerId, Type, Website FROM Account limit 500]));
                
                system.debug('accRec......'+accRec);
                accRec.setPageSize(accSize);
                totalAccountRecords = accRec.getResultSize();
                system.debug('the no of records is:'+totalAccountRecords);
            }
            return accRec;
        }
        set;
    } 
    
    private void initAccountPageSizeList(){
        accSize=5;
        accPaginationSizeOptions = new List<SelectOption>();
        accPaginationSizeOptions.add(new SelectOption('5','5'));
        accPaginationSizeOptions.add(new SelectOption('10','10'));
        accPaginationSizeOptions.add(new SelectOption('20','20'));
        accPaginationSizeOptions.add(new SelectOption('50','50'));
        accPaginationSizeOptions.add(new SelectOption('100','100'));
    }
    
    public  List<Account> getAccRecords() {
        return (List<Account>) accRec.getRecords();
        
    }
    
    public PageReference refreshAccountPageSize() {
        accRec.setPageSize(accSize);
        return null;
    }
       
    Account[] aa=[SELECT Id, Name, OwnerId, Type, Website FROM Account limit 500];
    
  public List<SelectOption> getItems() {
  List<SelectOption> options = new List<SelectOption>(); 
  for (Account a : aa) {
    options.add(new SelectOption(a.Id, a.Id));
      initAccountPageSizeList();
  }

  return options; 
}
}