import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="show-acti"
export default class extends Controller {
  static targets = ["address", "price", "hours" ]
  connect() {
    console.log("Hello World! from acti show");
  }

  openaddress() {
    // Toggle la classe d-none pour afficher ou masquer la section
    this.addressTarget.classList.remove("d-none");
    this.priceTarget.classList.add("d-none");
    this.hoursTarget.classList.add("d-none");
    console.log("open adresse");
  }

  openprice() {
    // Toggle la classe d-none pour afficher ou masquer la section
    this.addressTarget.classList.add("d-none");
    this.priceTarget.classList.remove("d-none");
    this.hoursTarget.classList.add("d-none");
    console.log("open price");
  }

  openhours() {
    // Toggle la classe d-none pour afficher ou masquer la section
    this.addressTarget.classList.add("d-none");
    this.priceTarget.classList.add("d-none");
    this.hoursTarget.classList.remove("d-none");
    console.log("open hours");
  }


}
