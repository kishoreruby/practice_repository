import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="questions"
export default class extends Controller {
  connect() {
    console.log("questions controller has been connected");
    (function() {
      jQuery(function() {
        return $("#q").autocomplete({
          source: "questions/autocomplete/",
          minLength: 2
        });
      });
    
    }).call(this);
  }
}
