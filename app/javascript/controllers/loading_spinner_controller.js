import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  static targets = ["spinner"];

  connect() {
    console.log("LoadingSpinnerController connected");
  }

  show(event) {
    this.spinnerTarget.style.display = 'block';
    console.log("Button clicked, loading started.");
  }
}
