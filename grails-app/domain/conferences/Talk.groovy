package conferences

class Talk {
	static belongsTo = [speaker:Speaker]
	String name
	String talkDate
	String talkTime
	static hasMany = [attendees:Attendee]

    static constraints = {
    }
}
