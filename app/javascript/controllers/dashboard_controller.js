import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="dashboard"
export default class extends Controller {
  static targets = ["activite", "logement", "faune" ]
  connect() {
    console.log("Hello World! from dashboard");
  }

  openactivite() {
    // Toggle la classe d-none pour afficher ou masquer la section
    this.activiteTarget.classList.remove("d-none");
    this.logementTarget.classList.add("d-none");
    this.fauneTarget.classList.add("d-none");
    console.log("open acti");
  }

  openlogement() {
    // Toggle la classe d-none pour afficher ou masquer la section
    this.activiteTarget.classList.add("d-none");
    this.logementTarget.classList.remove("d-none");
    this.fauneTarget.classList.add("d-none");
  }

  openfaune() {
    // Toggle la classe d-none pour afficher ou masquer la section
    this.activiteTarget.classList.add("d-none");
    this.logementTarget.classList.add("d-none");
    this.fauneTarget.classList.remove("d-none");
  }
}
