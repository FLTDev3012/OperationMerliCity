import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="show-acti"
export default class extends Controller {
  static targets = ["address", "price", "hours", "description" ]
  connect() {
    console.log("Hello World! from acti show");
  }

  opendescription() {
    // Toggle la classe d-none pour afficher ou masquer la section
    this.descriptionTarget.classList.remove("d-none");
    this.addressTarget.classList.add("d-none");
    this.priceTarget.classList.add("d-none");
    this.hoursTarget.classList.add("d-none");
  }

  openaddress() {
    // Toggle la classe d-none pour afficher ou masquer la section
    this.addressTarget.classList.remove("d-none");
    this.priceTarget.classList.add("d-none");
    this.hoursTarget.classList.add("d-none");
    this.descriptionTarget.classList.add("d-none");
  }

  openprice() {
    // Toggle la classe d-none pour afficher ou masquer la section
    this.addressTarget.classList.add("d-none");
    this.priceTarget.classList.remove("d-none");
    this.hoursTarget.classList.add("d-none");
    this.descriptionTarget.classList.add("d-none");
  }

  openhours() {
    // Toggle la classe d-none pour afficher ou masquer la section
    this.addressTarget.classList.add("d-none");
    this.priceTarget.classList.add("d-none");
    this.hoursTarget.classList.remove("d-none");
    this.descriptionTarget.classList.add("d-none");
  }



}
