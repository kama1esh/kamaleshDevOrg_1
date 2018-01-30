public class StringArrayTest {
    //Public Method
    public static String[] generateStringArray(Integer n) {
        //Instantiate the list
        List<String> var = new List<String>();

        //Iterate throught the list
        for(Integer i=0;i<n;i++) {
            //Populate the array
            var.add('Test ' + i);

            // Write value to the debug log
            System.debug(var[i]);
        } //end loop

        return var;
    }//end method       
}// end class