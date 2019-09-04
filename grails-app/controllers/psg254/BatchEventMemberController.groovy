package psg254



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class BatchEventMemberController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond BatchEventMember.list(params), model:[batchEventMemberInstanceCount: BatchEventMember.count()]
    }

    def show(BatchEventMember batchEventMemberInstance) {
        respond batchEventMemberInstance
    }

    def create() {
        respond new BatchEventMember(params)
    }

    @Transactional
    def save(BatchEventMember batchEventMemberInstance) {
        if (batchEventMemberInstance == null) {
            notFound()
            return
        }

        if (batchEventMemberInstance.hasErrors()) {
            respond batchEventMemberInstance.errors, view:'create'
            return
        }

        batchEventMemberInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'batchEventMember.label', default: 'BatchEventMember'), batchEventMemberInstance.id])
                redirect batchEventMemberInstance
            }
            '*' { respond batchEventMemberInstance, [status: CREATED] }
        }
    }

    def edit(BatchEventMember batchEventMemberInstance) {
        respond batchEventMemberInstance
    }

    @Transactional
    def update(BatchEventMember batchEventMemberInstance) {
        if (batchEventMemberInstance == null) {
            notFound()
            return
        }

        if (batchEventMemberInstance.hasErrors()) {
            respond batchEventMemberInstance.errors, view:'edit'
            return
        }

        batchEventMemberInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'BatchEventMember.label', default: 'BatchEventMember'), batchEventMemberInstance.id])
                redirect batchEventMemberInstance
            }
            '*'{ respond batchEventMemberInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(BatchEventMember batchEventMemberInstance) {

        if (batchEventMemberInstance == null) {
            notFound()
            return
        }

        batchEventMemberInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'BatchEventMember.label', default: 'BatchEventMember'), batchEventMemberInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'batchEventMember.label', default: 'BatchEventMember'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
