package uno21.biblioteca

class LibroController {

    def index = { redirect(action: "list", params: params) }

    // the delete, save and update actions only accept POST requests
    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def list = {
        params.max = Math.min(params.max ? params.max.toInteger() : 10,  100)
        [libroInstanceList: Libro.list(params), libroInstanceTotal: Libro.count()]
    }

    def create = {
        def libroInstance = new Libro()
        libroInstance.properties = params
        return [libroInstance: libroInstance]
    }

    def save = {
        def libroInstance = new Libro(params)
        if (!libroInstance.hasErrors() && libroInstance.save()) {
            flash.message = "libro.created"
            flash.args = [libroInstance.id]
            flash.defaultMessage = "Libro ${libroInstance.id} created"
            redirect(action: "show", id: libroInstance.id)
        }
        else {
            render(view: "create", model: [libroInstance: libroInstance])
        }
    }

    def show = {
        def libroInstance = Libro.get(params.id)
        if (!libroInstance) {
            flash.message = "libro.not.found"
            flash.args = [params.id]
            flash.defaultMessage = "Libro not found with id ${params.id}"
            redirect(action: "list")
        }
        else {
            return [libroInstance: libroInstance]
        }
    }

    def edit = {
        def libroInstance = Libro.get(params.id)
        if (!libroInstance) {
            flash.message = "libro.not.found"
            flash.args = [params.id]
            flash.defaultMessage = "Libro not found with id ${params.id}"
            redirect(action: "list")
        }
        else {
            return [libroInstance: libroInstance]
        }
    }

    def update = {
        def libroInstance = Libro.get(params.id)
        if (libroInstance) {
            if (params.version) {
                def version = params.version.toLong()
                if (libroInstance.version > version) {
                    
                    libroInstance.errors.rejectValue("version", "libro.optimistic.locking.failure", "Another user has updated this Libro while you were editing")
                    render(view: "edit", model: [libroInstance: libroInstance])
                    return
                }
            }
            libroInstance.properties = params
            if (!libroInstance.hasErrors() && libroInstance.save()) {
                flash.message = "libro.updated"
                flash.args = [params.id]
                flash.defaultMessage = "Libro ${params.id} updated"
                redirect(action: "show", id: libroInstance.id)
            }
            else {
                render(view: "edit", model: [libroInstance: libroInstance])
            }
        }
        else {
            flash.message = "libro.not.found"
            flash.args = [params.id]
            flash.defaultMessage = "Libro not found with id ${params.id}"
            redirect(action: "edit", id: params.id)
        }
    }

    def delete = {
        def libroInstance = Libro.get(params.id)
        if (libroInstance) {
            try {
                libroInstance.delete()
                flash.message = "libro.deleted"
                flash.args = [params.id]
                flash.defaultMessage = "Libro ${params.id} deleted"
                redirect(action: "list")
            }
            catch (org.springframework.dao.DataIntegrityViolationException e) {
                flash.message = "libro.not.deleted"
                flash.args = [params.id]
                flash.defaultMessage = "Libro ${params.id} could not be deleted"
                redirect(action: "show", id: params.id)
            }
        }
        else {
            flash.message = "libro.not.found"
            flash.args = [params.id]
            flash.defaultMessage = "Libro not found with id ${params.id}"
            redirect(action: "list")
        }
    }
}
