package conferences

class RoomController{

    def roomService

    def index(){
        def roomList=roomService.indexRoom()
        if(roomList){
            flash.message="List of rooms:"
            render view:"/room/list", model:['roomList':roomList]
        }else{
            flash.message="There is no talk in the database"
            render view:"/room/list", model:['roomList':roomList] //Hay que poner el modelo pq si no me aparece en todas las paginas
        }
    }

    def description(long id){
        def room=roomService.descriptionRoom(id)
        render view:"/room/description", model:['room':room]
    }

}
