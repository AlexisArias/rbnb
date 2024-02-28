import { Controller } from "@hotwired/stimulus"
import flatpickr from "flatpickr"; // You need to import this to use new flatpickr()


export default class extends Controller {
  connect() {
    flatpickr.localize(flatpickr.l10ns.fr)
    flatpickr(this.element, {
      altInput: true,
      dateFormat: "Y-m-d",
    })

  }
}
