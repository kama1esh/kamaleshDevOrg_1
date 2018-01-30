public class TaskUtil 
{
    public static String getTaskPriority(String leadState)
    {
        if(String.isBlank(leadState)||leadState.length()>2)
        {
            return null;
        }
        String taskPri;
        if(leadState=='CA')
        {
            taskPri='High';
        }
        else
        {
            taskPri='Noraml';
        }
        return taskpri;
    }

}