// Entry point for the build script in your package.json
import "@hotwired/turbo-rails"
import "./controllers"
import "bootstrap"

document.addEventListener("turbo:load", function() {
  document.querySelectorAll("a").forEach(function(link) {
    link.setAttribute("data-turbo", "false");
  });
});
