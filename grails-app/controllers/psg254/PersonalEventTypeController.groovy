package psg254



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class PersonalEventTypeController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond PersonalEventType.list(params), model:[personalEventTypeInstanceCount: PersonalEventType.count()]
    }

    def show(PersonalEventType personalEventTypeInstance) {
        respond personalEventTypeInstance
    }

    def create() {
        respond new PersonalEventType(params)
    }

    @Transactional
    def save(PersonalEventType personalEventTypeInstance) {
        if (personalEventTypeInstance == null) {
            notFound()
            return
        }

        if (personalEventTypeInstance.hasErrors()) {
            respond personalEventTypeInstance.errors, view:'create'
            return
        }

        personalEventTypeInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'personalEventType.label', default: 'PersonalEventType'), personalEventTypeInstance.id])
                redirect personalEventTypeInstance
            }
            '*' { respond personalEventTypeInstance, [status: CREATED] }
        }
    }

    def edit(PersonalEventType personalEventTypeInstance) {
        respond personalEventTypeInstance
    }

    @Transactional
    def update(PersonalEventType personalEventTypeInstance) {
        if (personalEventTypeInstance == null) {
            notFound()
            return
        }

        if (personalEventTypeInstance.hasErrors()) {
            respond personalEventTypeInstance.errors, view:'edit'
            return
        }

        personalEventTypeInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'PersonalEventType.label', default: 'PersonalEventType'), personalEventTypeInstance.id])
                redirect personalEventTypeInstance
            }
            '*'{ respond personalEventTypeInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(PersonalEventType personalEventTypeInstance) {

        if (personalEventTypeInstance == null) {
            notFound()
            return
        }

        personalEventTypeInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'PersonalEventType.label', default: 'PersonalEventType'), personalEventTypeInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'personalEventType.label', default: 'PersonalEventType'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
