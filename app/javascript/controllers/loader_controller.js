import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["loader"]

  connect() {
    const loader = document.querySelector('.loader');
    const slider = document.querySelector('.slider');
    // Event.preventDefaulft()
    var delayInMilliseconds = 1600; //1 second
    var delayInMilliseconds1500 = 1500;

    setTimeout(function() {
      //your code to be executed after 1 second
      window.addEventListener ("load", loader.classList.add('fondu-out'))
    }, delayInMilliseconds1500);

    setTimeout(function() {
      //your code to be executed after 1 second
      window.addEventListener ("load", slider.classList.add('transform-y-0'))
    }, delayInMilliseconds);
  }
}
