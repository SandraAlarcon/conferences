package conferences

class Attendee {
	
	String name
	static belongsTo = Talk
	static hasMany = [talks:Talk]
	
    static constraints = {
    }
}

 
