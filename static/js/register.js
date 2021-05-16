/**
 * @author: MANUEL HIDALGO PÉREZ
 */

document.addEventListener("DOMContentLoaded", function (){
    id_username  = document.getElementById("id_username");
    id_email = document.getElementById("id_email");
    id_email2 = document.getElementById("id_email2");
    id_password = document.getElementById("id_password");
    id_password2 = document.getElementById("id_password2");
    bt_registrar = document.getElementById("bt_registrar");

    document.getElementById("bt_registrar").addEventListener("click", (oEvent) => {
        if (comprobarVacio(id_username.value) || comprobarVacio(id_email) || comprobarVacio(id_email2) || comprobarVacio(id_password) || comprobarVacio(id_password2)){
            mensajeError(oEvent, "Debe rellenar todos los campos");
        } else if (id_email.value != id_email2.value){
            mensajeError(oEvent, "Los dos emails deben ser iguales");
        } else if (id_password.value != id_password2.value){
            mensajeError(oEvent, "Las contraseñas no coinciden");
        } else if (!(/^\w+([.-]?\w)*[@]\w+([.-]?\w)*[.]\w{2,4}$/).test(email.value)){
            mensajeError(oEvent, "Debe introducir un email correcto");
        }

    });

    // Funciones
    function comprobarVacio(variable){
        return (variable.value == "");
    }
    function mensajeError(oEvent, mensaje){
        oEvent.preventDefault();
        alert(mensaje);
    }
});