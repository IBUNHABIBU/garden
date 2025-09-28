import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["slides", "dot"]
  static values = { index: Number }

  connect() {
    this.indexValue = 0
    this.update()
  }

  next() {
    this.indexValue = (this.indexValue + 1) % this.slidesTarget.children.length
    this.update()
  }

  prev() {
    this.indexValue = (this.indexValue - 1 + this.slidesTarget.children.length) % this.slidesTarget.children.length
    this.update()
  }

  goToSlide(event) {
    this.indexValue = parseInt(event.currentTarget.dataset.index, 10)
    this.update()
  }

  update() {
    const offset = -this.indexValue * 100
    this.slidesTarget.style.transform = `translateX(${offset}%)`

    this.dotTargets.forEach((dot, i) => {
      dot.classList.toggle("bg-opacity-100", i === this.indexValue)
      dot.classList.toggle("bg-opacity-50", i !== this.indexValue)
    })
  }

    // Auto sliding
  startAutoSlide() {
    this.timer = setInterval(() => this.next(), 5000) // change every 5s
  }

  stopAutoSlide() {
    clearInterval(this.timer)
  }

  resetAutoSlide() {
    this.stopAutoSlide()
    this.startAutoSlide()
  }
}
