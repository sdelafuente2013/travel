import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  connect() {
    let status = document.querySelectorAll('.status')
    status.forEach(element => {
      if (element.innerText == 'Desactivado'){
        element.classList.remove('active')
        element.classList.add('disabled')
      } else {
        element.classList.remove('disabled')
        element.classList.add('active')
      }
    });
  }
}
