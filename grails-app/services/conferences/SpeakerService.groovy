package conferences

class SpeakerService {

	List indexSpeaker() {    
        def speakerList = Speaker.list()
        return speakerList
    }
    
    Speaker descriptionSpeaker(long id){
		def speaker = Speaker.get(id)
		return speaker
    }
    
    Speaker addSpeaker(String name,String birthDate) {  
		def speaker=new Speaker(name:name, birthDate:birthDate)
		speaker.save()
		return speaker
    }
    
    Speaker deleteSpeaker(long id){
		def speaker = Speaker.get(id)
        
        def listTalks = speaker.talks
        listTalks.each {t->
            def listTalkAttendee = TalkAttendee.findAllByTalk(t)
                listTalkAttendee.each {ta->
                    ta.delete()
                }
        }
        
         
        
        
		speaker.delete()
		return speaker
    }
    
    void updateSpeaker(Speaker speaker, String name, String birthDate){
		speaker.name=name
		speaker.birthDate=birthDate
		speaker.save()
	}
}
