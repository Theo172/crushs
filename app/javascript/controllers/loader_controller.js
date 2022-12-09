import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["loader"]

  connect() {
    const loader = document.querySelector('.loader');
    // Event.preventDefaulft()
    var delayInMilliseconds = 1000; //1 second

    setTimeout(function() {
      //your code to be executed after 1 second
      window.addEventListener ("load", loader.classList.add('fondu-out'))
    }, delayInMilliseconds);
    // setTimeout(() => {
    //   // window.addEventListener ("load", loader.classList.add('fondu-out'))

    // }, 10);
  }
}
