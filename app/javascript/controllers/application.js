import { Application } from "@hotwired/stimulus"

const application = Application.start()

// Configure Stimulus development experience
application.debug = false
window.Stimulus   = application

export { application }

import LoadingSpinnerController from "./controllers/loading_spinner_controller.js"
Stimulus.register("loading-spinner", LoadingSpinnerController)
