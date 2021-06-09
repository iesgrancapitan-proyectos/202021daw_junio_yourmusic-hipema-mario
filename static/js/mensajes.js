/**
 * @author: Mario Osuna y Manolo Hidalgo
 */

document.addEventListener("DOMContentLoaded", function (){
    let titMensaje = document.getElementById("titMensaje");
    let text = document.getElementById("text");

    document.getElementById("enviarMensaje").addEventListener("click", function (oEvent) {
        comprobarValidez(oEvent)
    } );
    titMensaje.addEventListener("keyup", () => comprobarEstilo(titMensaje));
    text.addEventListener("keyup", () => comprobarEstilo(text));

    function comprobarValidez(oEvent) {
        let value = true;
        if (titMensaje.value == ""){
            value = false;
            titMensaje.className = "input-mensajes invalid";
        }
        if (text.value == ""){
            value = false;
            text.className = "input-mensajes textarea-error";
        }
        if (!value) oEvent.preventDefault();
    }

    function comprobarEstilo(campo) {
        if (campo.value != "") campo.className = "input-mensajes";
    }

});