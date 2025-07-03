// app/javascript/controllers/navbar_controller.js
import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["mobileMenu", "bar1", "bar2", "bar3", "toggleButton"]

  toggle() {
    this.mobileMenuTarget.classList.toggle("translate-x-full")
    this.mobileMenuTarget.classList.toggle("translate-x-0")
    
    // Animate hamburger icon
    this.bar1Target.classList.toggle("rotate-45")
    this.bar1Target.classList.toggle("translate-y-1.5")
    this.bar2Target.classList.toggle("opacity-0")
    this.bar3Target.classList.toggle("-rotate-45")
    this.bar3Target.classList.toggle("-translate-y-1.5")
  }
}