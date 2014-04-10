class BootStrap {

    def init = { servletContext ->
        log.debug "INICIANDO"
    }
    def destroy = {
        log.debug "PARANDO"
    }
}
