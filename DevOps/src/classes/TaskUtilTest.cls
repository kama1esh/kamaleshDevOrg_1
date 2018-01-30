@isTest
private class TaskUtilTest 
{  
	@isTest static void testTaskpriNormal()
    {
        String pri=TaskUtil.getTaskPriority('NY');
        System.assertEquals('Normal',pri);
    }
    @isTest static void testTaskpriHigh()
    {
        String pri=TaskUtil.getTaskPriority('CA');
        System.assertEquals('High',pri);
    }
    @isTest static void testTaskpriNull()
    {
        String pri=TaskUtil.getTaskPriority('NYC');
        System.assertEquals('null',pri);
    }
}