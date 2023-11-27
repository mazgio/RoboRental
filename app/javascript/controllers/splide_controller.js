import { Controller } from '@hotwired/stimulus';
import Splide from '@splidejs/splide';

export default class extends Controller {
  connect() {
    console.log("hello world", this.element)
    const splide = new Splide(this.element, {
      type: 'loop',
      autoplay: true,
      pauseOnHover: false,
      interval: 5000,
    });

    splide.mount();
  }
}
