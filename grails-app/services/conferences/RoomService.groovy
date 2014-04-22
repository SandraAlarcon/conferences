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
    
    Room addRoom(String name) {  
		def room=new Room(name:name)
		room.save()
		return room
    }

}
