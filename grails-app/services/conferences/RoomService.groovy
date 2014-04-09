package conferences

class RoomService{

    List indexRoom(){
        def roomList= Room.list()
        return roomList
    }

    Room descriptionRoom(long id){
        def room=Room.get(id)
        return room
    }

}
