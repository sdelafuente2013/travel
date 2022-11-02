import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="saludar"
export default class extends Controller {
  name() {
    if (this.element.value.length > 3){
      this.element.classList.remove('is-invalid')
      this.element.classList.add('is-valid')
    }else{
      this.element.classList.remove('is-valid')
      this.element.classList.add('is-invalid')
    }
  }

  email() {
    if (this.element.value.includes('@')){
      this.element.classList.remove('is-invalid')
      this.element.classList.add('is-valid')
    }else{
      this.element.classList.remove('is-valid')
      this.element.classList.add('is-invalid')
    }
  }

  password() {
    if (this.element.value.length > 6){
      this.element.classList.remove('is-invalid')
      this.element.classList.add('is-valid')
    }else{
      this.element.classList.remove('is-valid')
      this.element.classList.add('is-invalid')
    }
  }

  password_confirmation() {
    if (this.element.value.length > 6 && this.element.value == document.querySelector('#contact_password').value){
      this.element.classList.remove('is-invalid')
      this.element.classList.add('is-valid')
    }else{
      this.element.classList.remove('is-valid')
      this.element.classList.add('is-invalid')
    }
  }
}
