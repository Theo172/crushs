import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["reveal"]

  connect() {
    console.log("Hello from scroll controller !")
    document.querySelectorAll('[class*="reveal-"]').forEach(function(r) {
      observer.observe(r)
    })
  }
}
const ratio = .2
const options = {
  root: null,
  rootMargin: '0px',
  threshold: ratio
}

const handleIntersect = function(entries, observer ) {
  entries.forEach(function(entry) {
    console.log(entry.intersectionRatio);
      if (entry.intersectionRatio > ratio) {
        entry.target.classList.add('reveal-visible')
        observer.unobserve(entry.target)
      }
  });
}
const observer = new IntersectionObserver(handleIntersect, options)
// document.querySelectorAll('[class*="reveal-"]').forEach(function(r) {
  //   observer.observe(r)
  // })

// const scrolled = window.scrollY;
// window.addEventListener("scroll", scrolled.classList.add(''));
// console.log("hey");

// function reveal() {
//   var reveals = document.querySelectorAll(".reveal")


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
