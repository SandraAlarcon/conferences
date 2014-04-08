package conferences

class TalkService {

    List indexTalk() {    
        def talklist = Talk.list()
        return talklist
    }
    
    Talk descriptionTalk(long id){
		def talk=Talk.get(id)
		return talk
    }
    
    List showAddTalk(){ //Es el controlador el que tiene q coger la lista o el servicio??????????
		def speakerList = Speaker.list() 
		return speakerList
    }
   
	Talk addTalk(String name, String talkDate, String talkTime, Speaker speaker){
        def talk=new Talk(name:name,talkDate:talkDate, talkTime:talkTime, speaker:speaker)
        talk.save()
        return talk
    }  
    
    Talk deleteTalk(long id){
		def talk=Talk.get(id)
		talk.delete()
		return talk
    }
    
    /** */
    Talk updateTalk(Talk talk,String name,String talkDate,String talkTime,Speaker speaker){
		talk.name=name
		talk.talkDate=talkDate
		talk.talkTime=talkTime
		talk.speaker=speaker
		talk.save()
		return talk
	}
}
