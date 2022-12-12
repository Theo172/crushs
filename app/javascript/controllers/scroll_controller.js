import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["box", "visibility"]

  connect() {
    console.log("Hello from scroll controller !")
  }

  scroll() {
    const scrolled = window.scrollY;
    window.addEventListener("scroll", scrolled.classList.remove('visibility'));
    console.log("hey");
  };
}
// .removeClass
// connect() {
//   const loader = document.querySelector('.loader');
//   const slider = document.querySelector('.slider');
//   // Event.preventDefaulft()
//   var delayInMilliseconds = 1600; //1 second
//   var delayInMilliseconds1500 = 1500;

//   setTimeout(function() {
//     //your code to be executed after 1 second
//     window.addEventListener ("load", loader.classList.add('fondu-out'))
//   }, delayInMilliseconds1500);
// }
