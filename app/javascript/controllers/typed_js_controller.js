import { Controller } from "@hotwired/stimulus"
import Typed from "typed.js"

// Connects to data-controller="typed-js"
export default class extends Controller {
  connect() {
    new Typed(this.element, {
      strings: ["Buy and sell sneakers with a single click..."],
      typeSpeed: 60,
      loop: true
    })
  }
}
