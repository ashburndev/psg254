package psg254



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class EventGroupController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond EventGroup.list(params), model:[eventGroupInstanceCount: EventGroup.count()]
    }

    def show(EventGroup eventGroupInstance) {
        respond eventGroupInstance
    }

    def create() {
        respond new EventGroup(params)
    }

    @Transactional
    def save(EventGroup eventGroupInstance) {
        if (eventGroupInstance == null) {
            notFound()
            return
        }

        if (eventGroupInstance.hasErrors()) {
            respond eventGroupInstance.errors, view:'create'
            return
        }

        eventGroupInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'eventGroup.label', default: 'EventGroup'), eventGroupInstance.id])
                redirect eventGroupInstance
            }
            '*' { respond eventGroupInstance, [status: CREATED] }
        }
    }

    def edit(EventGroup eventGroupInstance) {
        respond eventGroupInstance
    }

    @Transactional
    def update(EventGroup eventGroupInstance) {
        if (eventGroupInstance == null) {
            notFound()
            return
        }

        if (eventGroupInstance.hasErrors()) {
            respond eventGroupInstance.errors, view:'edit'
            return
        }

        eventGroupInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'EventGroup.label', default: 'EventGroup'), eventGroupInstance.id])
                redirect eventGroupInstance
            }
            '*'{ respond eventGroupInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(EventGroup eventGroupInstance) {

        if (eventGroupInstance == null) {
            notFound()
            return
        }

        eventGroupInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'EventGroup.label', default: 'EventGroup'), eventGroupInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'eventGroup.label', default: 'EventGroup'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
