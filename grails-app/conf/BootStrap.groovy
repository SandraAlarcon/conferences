import conferences.Role
import conferences.User
import conferences.UserRole

class BootStrap {

    def init = { servletContext ->
        //log.debug "INICIANDO"
        
        def adminRole
        def userRole
        def admin
        def alonsoUser
        def antonioUser 
        def daniUser
        def juanfranUser 
        def pabloUser
        def sandraUser
        
        
        if (System.getProperty('createRoles')) {
            adminRole = new Role(authority: 'ROLE_ADMIN').save(flush:true)
            userRole = new Role(authority: 'ROLE_USER').save(flush:true)
        }
        
        if (System.getProperty('createSampleUsers')) {
            admin = new User (username: 'admin', password: 'admin').save(flush:true)
            alonsoUser = new User (username: 'alonso', password: 'alonso').save(flush:true)
            antonioUser = new User (username: 'antonio', password: 'antonio').save(flush:true)
            daniUser = new User (username: 'dani', password: 'dani').save(flush:true)
            juanfranUser = new User (username: 'juanfran', password: 'juanfran').save(flush:true)
            pabloUser = new User (username: 'pablo', password: 'pablo').save(flush:true)
            sandraUser = new User (username: 'sandra', password: 'sandra').save(flush:true)
        }
        
        if(System.getProperty('createRolesUsers')){
        
            UserRole.create admin, adminRole, true
            UserRole.create alonsoUser, userRole, true
            UserRole.create antonioUser, userRole, true
            UserRole.create daniUser, userRole, true
            UserRole.create juanfranUser, userRole, true
            UserRole.create pabloUser, userRole, true
            UserRole.create sandraUser, userRole, true
        }
        
        if(System.getProperty('checkout')){
            assert User.count() == 7
            assert Role.count() == 2
            assert UserRole.count() == 7
        }
    }
    def destroy = {
        //log.debug "PARANDO"
    }
}
