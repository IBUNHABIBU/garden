import { Controller } from "@hotwired/stimulus"
import { enter, leave } from "el-transition"

export default class extends Controller {
  static targets = ["menu"]
  
  toggleMenu() {
    if (this.menuTarget.classList.contains('hidden')) {
      enter(this.menuTarget)
      this.menuTarget.classList.remove('hidden')
    } else {
      leave(this.menuTarget).then(() => {
        this.menuTarget.classList.add('hidden')
      })
    }
  }
  
  closeMenu() {
    leave(this.menuTarget).then(() => {
      this.menuTarget.classList.add('hidden')
    })
  }
}