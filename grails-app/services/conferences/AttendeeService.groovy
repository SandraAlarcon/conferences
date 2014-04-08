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
	
	Attendee addAttendee(String name, Talk talk){
	
		println "================ FROM SERVICE ==============="
		println "name: $name"
		println "talk: $talk.name"
		println "================ FROM SERVICE ==============="
	
	    def attendee=new Attendee(name:name)
        attendee.addToTalks(talk)
        attendee.save(failOnError: true)
        return attendee
	}

}
