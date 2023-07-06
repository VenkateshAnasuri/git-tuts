global class GetOrderDetails {
 @InvocableMethod
    global static List<string> ordsrecs(getvariablevals[] values){
      List<order__c> str = [SELECT Id, Name, Unit__r.Name, Customer_Name__c, Site_Visit__r.Customer__r.Mobile__c FROM Order__c where Site_Visit__r.Customer__r.Mobile__c=:values[0].phone ];
        List<string> cv = new List<string>();
        for(order__c o :str){
            cv.add(o.Unit__r.Name);
     }
       return cv;
    }
    global class getvariablevals{
        @InvocableVariable(required=true)
        global String phone;
        
         
    }
}