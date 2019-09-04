package psg254



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class SiteCategoryController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond SiteCategory.list(params), model:[siteCategoryInstanceCount: SiteCategory.count()]
    }

    def show(SiteCategory siteCategoryInstance) {
        respond siteCategoryInstance
    }

    def create() {
        respond new SiteCategory(params)
    }

    @Transactional
    def save(SiteCategory siteCategoryInstance) {
        if (siteCategoryInstance == null) {
            notFound()
            return
        }

        if (siteCategoryInstance.hasErrors()) {
            respond siteCategoryInstance.errors, view:'create'
            return
        }

        siteCategoryInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'siteCategory.label', default: 'SiteCategory'), siteCategoryInstance.id])
                redirect siteCategoryInstance
            }
            '*' { respond siteCategoryInstance, [status: CREATED] }
        }
    }

    def edit(SiteCategory siteCategoryInstance) {
        respond siteCategoryInstance
    }

    @Transactional
    def update(SiteCategory siteCategoryInstance) {
        if (siteCategoryInstance == null) {
            notFound()
            return
        }

        if (siteCategoryInstance.hasErrors()) {
            respond siteCategoryInstance.errors, view:'edit'
            return
        }

        siteCategoryInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'SiteCategory.label', default: 'SiteCategory'), siteCategoryInstance.id])
                redirect siteCategoryInstance
            }
            '*'{ respond siteCategoryInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(SiteCategory siteCategoryInstance) {

        if (siteCategoryInstance == null) {
            notFound()
            return
        }

        siteCategoryInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'SiteCategory.label', default: 'SiteCategory'), siteCategoryInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'siteCategory.label', default: 'SiteCategory'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
