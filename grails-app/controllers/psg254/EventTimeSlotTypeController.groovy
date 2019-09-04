package psg254



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class EventTimeSlotTypeController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond EventTimeSlotType.list(params), model:[eventTimeSlotTypeInstanceCount: EventTimeSlotType.count()]
    }

    def show(EventTimeSlotType eventTimeSlotTypeInstance) {
        respond eventTimeSlotTypeInstance
    }

    def create() {
        respond new EventTimeSlotType(params)
    }

    @Transactional
    def save(EventTimeSlotType eventTimeSlotTypeInstance) {
        if (eventTimeSlotTypeInstance == null) {
            notFound()
            return
        }

        if (eventTimeSlotTypeInstance.hasErrors()) {
            respond eventTimeSlotTypeInstance.errors, view:'create'
            return
        }

        eventTimeSlotTypeInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'eventTimeSlotType.label', default: 'EventTimeSlotType'), eventTimeSlotTypeInstance.id])
                redirect eventTimeSlotTypeInstance
            }
            '*' { respond eventTimeSlotTypeInstance, [status: CREATED] }
        }
    }

    def edit(EventTimeSlotType eventTimeSlotTypeInstance) {
        respond eventTimeSlotTypeInstance
    }

    @Transactional
    def update(EventTimeSlotType eventTimeSlotTypeInstance) {
        if (eventTimeSlotTypeInstance == null) {
            notFound()
            return
        }

        if (eventTimeSlotTypeInstance.hasErrors()) {
            respond eventTimeSlotTypeInstance.errors, view:'edit'
            return
        }

        eventTimeSlotTypeInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'EventTimeSlotType.label', default: 'EventTimeSlotType'), eventTimeSlotTypeInstance.id])
                redirect eventTimeSlotTypeInstance
            }
            '*'{ respond eventTimeSlotTypeInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(EventTimeSlotType eventTimeSlotTypeInstance) {

        if (eventTimeSlotTypeInstance == null) {
            notFound()
            return
        }

        eventTimeSlotTypeInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'EventTimeSlotType.label', default: 'EventTimeSlotType'), eventTimeSlotTypeInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'eventTimeSlotType.label', default: 'EventTimeSlotType'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
