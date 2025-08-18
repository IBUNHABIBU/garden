import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  connect() {
    const observer = new IntersectionObserver((entries) => {
      entries.forEach(entry => {
        if (entry.isIntersecting) {
          entry.target.classList.add("animate-fadeInUp")
        }
      })
    }, { threshold: 0.1 })

    observer.observe(this.element)
  }
}