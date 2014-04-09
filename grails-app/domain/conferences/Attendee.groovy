package conferences

class Attendee {

    String name
    static belongsTo = Talk
    static hasMany = [talk:Talk]

    static constraints = {
    }
}
