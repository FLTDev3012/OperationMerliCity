import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="show-acti"
export default class extends Controller {
  static targets = ["address", "price", "hours" ]
  connect() {
    console.log("Hello World! from acti show");
  }

}
