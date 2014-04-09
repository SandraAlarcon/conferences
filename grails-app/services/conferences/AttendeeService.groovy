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

    Attendee addAttendee(String name, Talk talk){

        /*
        println "================ FROM SERVICE ==============="
        println "name: $name"
        println "talk: $talk.name"
        println "================ FROM SERVICE ==============="
        */

        def attendee=new Attendee(name:name)
        if(talk){
            attendee.addToTalk(talk)
            //attendee.addToTalk(talk) Cuidado! no es Talks, hemos cambiado la clase de dominio:  static hasMany = [talks:Talk]
            attendee.save(failOnError: true)
            return attendee
        }else{
            attendee.save(failOnError: true)
            return attendee
        }
    }

    Attendee deleteAttendee(long id){
        def attendee=Attendee.get(id)
        attendee.delete()
        return attendee
    }


}
