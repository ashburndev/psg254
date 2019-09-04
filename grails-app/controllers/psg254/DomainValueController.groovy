package psg254



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class DomainValueController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond DomainValue.list(params), model:[domainValueInstanceCount: DomainValue.count()]
    }

    def show(DomainValue domainValueInstance) {
        respond domainValueInstance
    }

    def create() {
        respond new DomainValue(params)
    }

    @Transactional
    def save(DomainValue domainValueInstance) {
        if (domainValueInstance == null) {
            notFound()
            return
        }

        if (domainValueInstance.hasErrors()) {
            respond domainValueInstance.errors, view:'create'
            return
        }

        domainValueInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'domainValue.label', default: 'DomainValue'), domainValueInstance.id])
                redirect domainValueInstance
            }
            '*' { respond domainValueInstance, [status: CREATED] }
        }
    }

    def edit(DomainValue domainValueInstance) {
        respond domainValueInstance
    }

    @Transactional
    def update(DomainValue domainValueInstance) {
        if (domainValueInstance == null) {
            notFound()
            return
        }

        if (domainValueInstance.hasErrors()) {
            respond domainValueInstance.errors, view:'edit'
            return
        }

        domainValueInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'DomainValue.label', default: 'DomainValue'), domainValueInstance.id])
                redirect domainValueInstance
            }
            '*'{ respond domainValueInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(DomainValue domainValueInstance) {

        if (domainValueInstance == null) {
            notFound()
            return
        }

        domainValueInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'DomainValue.label', default: 'DomainValue'), domainValueInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'domainValue.label', default: 'DomainValue'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
