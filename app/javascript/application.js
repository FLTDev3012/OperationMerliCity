// Entry point for the build script in your package.json
import "@hotwired/turbo-rails"
import "./controllers"
import "bootstrap"

const signUp = (event) => {
  event.preventDefault();
  const email = document.getElementById("user_email").value;
  const password = document.getElementById("user_password").value;
  const password_confirmation = document.getElementById("user_password_confirmation").value;
  const csrfToken = document.querySelector('meta[name="csrf-token"]').content;

  const requestDetails = {
    method: "POST",
    headers: {
      "Content-Type": "application/json",
      "X-CSRF-Token": csrfToken
    },
    body: JSON.stringify({
      "user": {
        "email": email,
        "password": password,
        "password_confirmation": password_confirmation
      }
    })
  };

  fetch("/users", requestDetails)
    .then((response) => {
      if (response.status === 200) {
        Swal.fire({title: 'Votre compte a été créé', icon: 'success'});
      } else {
        Swal.fire({title: 'Erreur!', html: "Oups! Quelque chose n'est pas correct.<br><br>Veuillez vérifier vos informations.<br><br>-email valide.<br>-mot de passe identique<br>-mot de passe de plus de 8 caracteres", icon: 'error'});
      }
    })
};

const form = document.querySelector("#form");
form.addEventListener("submit", signUp);
