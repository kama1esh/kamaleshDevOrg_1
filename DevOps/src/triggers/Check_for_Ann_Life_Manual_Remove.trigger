trigger Check_for_Ann_Life_Manual_Remove on Account (after insert,after update) {
    
    if(Trigger.isInsert){
       Check_for_Ann_Life_Manual_Remove_Handler.afterInsertorUpdate(Trigger.new);
    }
    if(Trigger.isUpdate){
        Check_for_Ann_Life_Manual_Remove_Handler.afterInsertorUpdate(Trigger.new);
    }

}