/*******************************************************************************************
//Name            : VFTalkieController
//Date            : 02-Aug-2010
//Author          : Aslam Bari
//Description     : The controller is for VFTalkie Component. It just simply encode the 
                    jtalkplugin url as per standards.
*******************************************************************************************/
public class VFTalkieController{
    public string getURL(){
        return EncodingUtil.urlencode('http://speech.jtalkplugin.com/api/?speech=','UTF-8');
    }
}