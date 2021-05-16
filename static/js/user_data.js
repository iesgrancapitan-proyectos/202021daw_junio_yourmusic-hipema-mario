/**
 * @author: MANUEL HIDALGO PÉREZ
 */

document.addEventListener("DOMContentLoaded", function (){
    let pass_form = document.getElementById("datos-pass");
    let check_pass = document.getElementById("pass");
    let enviar = document.getElementById("enviar");

    document.getElementById("pass").addEventListener("click", function () {
        (check_pass.checked == false) ? pass_form.setAttribute("hidden", true) : pass_form.removeAttribute("hidden");
    });

    // Funciones
    // Ocultar-Mostrar cambio de contraseña


});