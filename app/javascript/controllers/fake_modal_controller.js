import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="fake-modal"
export default class extends Controller {
  static targets = ["success"]

  connect() {
    console.log(this.element)
  }

  activateSuccess(e){
  
  }
}
