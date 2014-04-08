package conferences

class ConferenceService{
	
	List listConference(){
		def conferenceList = Conference.list()
		return conferenceList
	}
	
	Conference descriptionConference(long id){
		def conference = Conference.get(id)
		return conference
	}
	
	Conference addConference(String name,String startDate, String endDate){
		def conference=new Conference(name:name, startDate:startDate, endDate:endDate)
		conference.save()
		return conference
		
		//println conference.errors
	}

	Conference deleteConference(long id){
		def conference = Conference.get(id)
		conference.delete()
	}
	
	Conference showUpdateConference(long id){
		def conference = Conference.get(id)
		return conference
	}
	
	Conference updateConference(Conference conference,String name,String startDate, String endDate){
		conference.name=name
		conference.startDate=startDate
		conference.endDate=endDate
		conference.save()
		return conference
	}
	
}
