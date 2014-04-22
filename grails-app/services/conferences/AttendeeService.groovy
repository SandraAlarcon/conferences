package conferences


class AttendeeService{

    List indexAttendee(){
        def attendeeList = Attendee.list()
        return attendeeList
    }

    List showAddAttendee(){
        def talksList = Talk.list()
        return talksList
    }

    Attendee descriptionAttendee(long id){
        def attendee=Attendee.get(id)
        return attendee
    }

    Attendee addAttendee(String nameForAttendee, Long talkId){
        log.debug ">> Talkid: $talkId"
        def talk = Talk.get(talkId)
      
        println "================ FROM SERVICE ==============="
        println "name: $name"
        println "talk: $talk.name"
        println "================ FROM SERVICE ==============="
 

        def attendee=new Attendee()
        attendee.name = nameForAttendee
        if(talk){
            //attendee.addToTalks(talk)
            //attendee.addToTalk(talk) Cuidado! no es Talks, hemos cambiado la clase de dominio:  static hasMany = [talks:Talk]
            
            attendee.save(failOnError: true)
            
            new TalkAttendee(talk: talk, attendee: attendee).save()
            
            return attendee
        }else{
            attendee.save(failOnError: true)
            return attendee
        }
    }

    Attendee deleteAttendee(long id){
        def attendee=Attendee.get(id)
        removeFromTalks(attendee)
        attendee.delete()
        return attendee
    }

    void removeFromTalks(Attendee att){
        def listTalkAttendee = TalkAttendee.findAllByAttendee(att)
        listTalkAttendee.each{talkAttendee ->
            talkAttendee.delete()
        }
    }
    
    def listTalksForAtendee(Attendee att){
        def listTalkAttendee = TalkAttendee.findAllByAttendee(att)
        def talkList = listTalkAttendee.talk
        
        /*
         //Es equivalente a esto:
        def talkList = []
        listTalkAttendee.each{ ta ->
            talkList.add(ta.talk)
        }
        */ 
        
        return talkList
    }
    
    
    def updateAttendeeTalks(Attendee attendee, List talkListIds){
        
        removeFromTalks(attendee)
        
        talkListIds.each{ talkId ->
            long id = Long.parseLong(talkId)
            def talk = Talk.get(id)
        
            def ta = new TalkAttendee()
            ta.talk = talk
            ta.attendee = attendee
            ta.save()
        }
        
        
        
    }

}
