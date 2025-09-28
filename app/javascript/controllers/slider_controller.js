// import { Controller } from "@hotwired/stimulus";

// export default class extends Controller {
//   static targets = ["dot", "slide"];
//   static values = { index: Number }

//   connect() {
//     this.indexValue = 0;
//     this.showSlide();
//     this.startAutoSlide();
    
//     // Add event listeners for navigation arrows
//     this.element.querySelector('.slider-prev').addEventListener('click', () => {
//       this.prevSlide();
//     });
    
//     this.element.querySelector('.slider-next').addEventListener('click', () => {
//       this.nextSlide();
//     });
//   }

//   disconnect() {
//     this.stopAutoSlide();
//   }

//   startAutoSlide() {
//     this.interval = setInterval(() => {
//       this.nextSlide();
//     }, 5000);
//   }

//   stopAutoSlide() {
//     if (this.interval) {
//       clearInterval(this.interval);
//     }
//   }

//   showSlide(index = this.indexValue) {
//     const slides = this.element.querySelectorAll('.slides__bg');
    
//     slides.forEach(slide => {
//       slide.classList.add('hidden');
//     });
    
//     if (slides[index]) {
//       slides[index].classList.remove('hidden');
//     }
    
//     this.dotTargets.forEach((dot, i) => {
//       const isActive = i === index;
//       dot.classList.toggle('bg-opacity-100', isActive);
//       dot.classList.toggle('bg-opacity-50', !isActive);
//     });
    
//     this.indexValue = index;
//   }

//   nextSlide() {
//     const slides = this.element.querySelectorAll('.slides__bg');
//     this.indexValue = (this.indexValue + 1) % slides.length;
//     this.showSlide();
//   }

//   prevSlide() {
//     const slides = this.element.querySelectorAll('.slides__bg');
//     this.indexValue = (this.indexValue - 1 + slides.length) % slides.length;
//     this.showSlide();
//   }

//   goToSlide(event) {
//     const index = parseInt(event.currentTarget.dataset.index);
//     this.stopAutoSlide();
//     this.showSlide(index);
//     this.startAutoSlide();
//   }
// }