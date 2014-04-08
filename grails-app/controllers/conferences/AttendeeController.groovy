package conferences

class AttendeeController{
	
	def attendeeService
	
	def index(){
		def attendeeList=attendeeService.indexAttendee()
		if(attendeeList){
			flash.message="Listado de asistentes: "
			render view:"/attendee/list", model:['attendeeList': attendeeList]
		}else{
			flash.message="No hay ningún asistente dado de alta"
			render view: "/attendee/list", model:['attendeeList':attendeeList]
		}
	}
	
	def showAdd(){
		def talkList=attendeeService.showAddAttendee()
		render view:"/attendee/add", model:['talkList':talkList]
	}
	
	def add(){
	
		Talk talk = Talk.get(params.talkId)
		
		println "==============================="
		println "Nombre: ${params.name}"
		println "Talk: ${talk}"
		println "==============================="
		
		
		
		def attendee=Attendee.findByName(params.name)
		if(attendee){
			flash.message="Ya existe un asistente con ese nombre. Introduzca otro nombre"
			redirect mapping:"addAttendee"
		}else{
			if(params.name && talk){
				attendeeService.addAttendee(params.name,talk)
				flash.message="Asistente introducido correctamente en la base de datos"
				redirect mapping:"listAttendees"
			}else{
				flash.error="Debe introducir el nombre del asistente"
				redirect mapping: "addAttendee"
			}
		}
	}

}

