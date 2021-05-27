/**
 * @author: Manolo Hidalgo y Mario Osuna
 */

document.addEventListener("DOMContentLoaded", function (){
    let form_video = document.getElementById("form-video");
    let form_audio = document.getElementById("form-audio");
    let edit_nombre = document.getElementById("nombre-grupo");
    let sel_audio = document.getElementById("sel-audio");
    let tit_audio = document.getElementById("titulo-audio");

    document.getElementById("addVideos").addEventListener("click", function () {
        mostrarOcultar(form_video);
    });

    document.getElementById("edit-nombre").addEventListener("click", function (){ 
        mostrarOcultar(edit_nombre);
    });
    
    document.getElementById("addAudios").addEventListener("click", function (){ 
        mostrarOcultar(form_audio);
    });
    
    document.getElementById("save-audio").addEventListener("click", function (oEvent){ 
        if (sel_audio.value == "" || tit_audio.value == ""){
            oEvent.preventDefault();
        }
    });

    function mostrarOcultar(campo) {
        (campo.getAttribute("hidden") == "true") ? campo.removeAttribute("hidden") : campo.setAttribute("hidden", true);
    }
});