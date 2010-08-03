/*******************************************************************************************
//Name            : VFTalkieSampleController
//Date            : 02-Aug-2010
//Author          : Aslam Bari
//Description     : The controller is for VFTalkieSample and VFContactListTalkieSample
                    VF pages. The code here just for demo purpose and can be enhanced:)
*******************************************************************************************/
public class VFTalkieSampleController{
    public Account accRecord {get;set;}
    public List<ContactModel> contactList {get;set;}
   
    public VFTalkieSampleController(){
        accRecord = [SELECT Name, Description from Account where id='00190000002dVO1'];
        contactList = new List<ContactModel>();
        for(Contact cnt:[SELECT Name, Phone, Email, description__c from contact where phone!= null and email != null and description__c != null LIMIT 5]){
            ContactModel cm = new ContactModel();
            cm.conRecord = cnt;
            cm.speechtext = 'Contact ' + cnt.Name + ' has phone number ' + cnt.Phone + ', email as ' + cnt.Email + ' and small description as ' + cnt.description__c;
            contactList.add(cm);
        }
    }
    
    public class ContactModel{
        public Contact conRecord {get;set;}
        public string speechtext {get;set;}
    }
}