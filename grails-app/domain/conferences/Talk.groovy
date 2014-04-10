package conferences

class Talk {

    String name
    String talkDate
    String talkTime
    static belongsTo = [speaker:Speaker]

    static constraints = {
    }
}
