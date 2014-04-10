package conferences

class Attendee {

    String name

    List<Talk> getTalks(){
        return TalkAttendee.findAllByAttendee(this).talk
    }

    static constraints = {
    }
}
