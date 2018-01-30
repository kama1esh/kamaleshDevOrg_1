@isTest
private class TestVerifyDate {
    static testMethod void TestVerifyDate() {
        Date date1 = Date.newInstance(2017,2,23);
        Date date2 = Date.newInstance(2017,2,23);
      VerifyDate.CheckDates(date1,date2.addDays(10));
       VerifyDate.CheckDates(date1,date2.addDays(78));
    }
}