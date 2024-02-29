import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="button-sound"
export default class extends Controller {
  static targets = ["audioInput"];
  connect() {
  }

  playSound(event) {
    const audioElement = this.audioInputTarget;
    const audio = new Audio(audioElement.src)
    audio.play()
  }
}
