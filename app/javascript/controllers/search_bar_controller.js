import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="search-bar"

export default class extends Controller {
    static targets = ["input", "results", "form"];

    connect() {
      // console.log("Connected");
    }

    send(event) {
      // console.log(event);
      const input = this.inputTarget.value
      // console.log(input);
      const baseUrl = this.formTarget.action
      const url = `${baseUrl}?query=${input}`
      // console.log(url);
      fetch(url, {headers: {"Accept": "text/plain"}})
    .then(response => response.text())
    .then((data) => {
      this.resultsTarget.innerHTML = data
    })
    }
  }
