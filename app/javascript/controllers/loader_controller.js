import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["loader"]

  connect() {
    const loader = document.querySelector('.loader');
    window.addEventListener ("load", loader.classList.add('fondu-out'))
  }
}






  // console.log(window)
  // const titre = document.querySelector('h1');
  // console.log(titre)
  // home() {


  //   window.addEventListener('load', () => {

  //       loader.classList.add('fondu-out');

  //   })
  // }



// window est l'objet
// addEventListener = action
// quand la fenêtre aura chargé  -> load
// .classList = donne accès aux method des class
// method add ('fondu-out') : lui ajoute cette method
