public class DisplayAccountBS {
        public String searchword{get; set;}
    
    public List<List< SObject>> accountList{get; set;}
    
    Public List<List< SObject>> Search(){
        if(searchword!=null){
             accountList = [FIND :searchword IN ALL FIELDS RETURNING Account];
        }
            return   accountList;                   
                                    
        }

}