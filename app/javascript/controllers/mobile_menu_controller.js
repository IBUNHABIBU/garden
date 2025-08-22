import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["menu", "openIcon", "closeIcon"]

  connect() {
    // Initialize the menu state
    this.isOpen = false
    this.updateIcons()
  }

  toggle() {
    this.isOpen = !this.isOpen
    this.updateMenu()
    this.updateIcons()
  }

  close() {
    this.isOpen = false
    this.updateMenu()
    this.updateIcons()
  }

  updateMenu() {
    if (this.isOpen) {
      this.menuTarget.classList.remove('hidden')
    } else {
      this.menuTarget.classList.add('hidden')
    }
  }

  updateIcons() {
    if (this.isOpen) {
      this.openIconTarget.classList.add('hidden')
      this.closeIconTarget.classList.remove('hidden')
    } else {
      this.openIconTarget.classList.remove('hidden')
      this.closeIconTarget.classList.add('hidden')
    }
  }
}