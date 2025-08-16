import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static values = {
    autoplay: { type: Number, default: 5000 },
    effect: { type: String, default: 'fade' }
  }

  async connect() {
    // Dynamically import Swiper when the controller connects
    const Swiper = await import('swiper')
    const { Autoplay, Pagination, Navigation, EffectFade } = await import('swiper/modules')
    
    this.swiper = new Swiper.default(this.element, {
      modules: [Autoplay, Pagination, Navigation, EffectFade],
      loop: true,
      autoplay: {
        delay: this.autoplayValue,
        disableOnInteraction: false,
      },
      pagination: {
        el: '.swiper-pagination',
        clickable: true,
      },
      navigation: {
        nextEl: '.swiper-button-next',
        prevEl: '.swiper-button-prev',
      },
      effect: this.effectValue,
      fadeEffect: {
        crossFade: true
      },
    })
  }

  disconnect() {
    if (this.swiper) {
      this.swiper.destroy()
    }
  }
}