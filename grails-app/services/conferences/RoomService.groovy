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
    
    List showAddRoom(){
        def talkList=Talk.list()
        return talkList
    }
    
    Room addRoom(String name, Talk talk) { 
		def room=new Room(name:name,talk:talk)
        room.save()
		return room
    }
    
    Room deleteRoom(long id){
        def room=Room.get(id)
        room.delete()
        return room
    }
}
