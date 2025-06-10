import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["menu", "toggle"]

  toggle() {
    this.element.dataset.expanded = 
      this.element.dataset.expanded !== 'true';
    
    document.body.style.overflow = 
      this.element.dataset.expanded === 'true' ? 'hidden' : '';
  }

  closeOnLargeScreens() {
    if (window.innerWidth >= 768) {
      this.element.dataset.expanded = false;
      document.body.style.overflow = '';
    }
  }

  connect() {
    window.addEventListener('resize', this.closeOnLargeScreens.bind(this));
  }

  disconnect() {
    window.removeEventListener('resize', this.closeOnLargeScreens);
  }
}