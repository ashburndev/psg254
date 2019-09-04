package psg254



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class BatchEventController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond BatchEvent.list(params), model:[batchEventInstanceCount: BatchEvent.count()]
    }

    def show(BatchEvent batchEventInstance) {
        respond batchEventInstance
    }

    def create() {
        respond new BatchEvent(params)
    }

    @Transactional
    def save(BatchEvent batchEventInstance) {
        if (batchEventInstance == null) {
            notFound()
            return
        }

        if (batchEventInstance.hasErrors()) {
            respond batchEventInstance.errors, view:'create'
            return
        }

        batchEventInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'batchEvent.label', default: 'BatchEvent'), batchEventInstance.id])
                redirect batchEventInstance
            }
            '*' { respond batchEventInstance, [status: CREATED] }
        }
    }

    def edit(BatchEvent batchEventInstance) {
        respond batchEventInstance
    }

    @Transactional
    def update(BatchEvent batchEventInstance) {
        if (batchEventInstance == null) {
            notFound()
            return
        }

        if (batchEventInstance.hasErrors()) {
            respond batchEventInstance.errors, view:'edit'
            return
        }

        batchEventInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'BatchEvent.label', default: 'BatchEvent'), batchEventInstance.id])
                redirect batchEventInstance
            }
            '*'{ respond batchEventInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(BatchEvent batchEventInstance) {

        if (batchEventInstance == null) {
            notFound()
            return
        }

        batchEventInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'BatchEvent.label', default: 'BatchEvent'), batchEventInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'batchEvent.label', default: 'BatchEvent'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
