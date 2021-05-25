/**
 * @author: Mario Osuna y Manolo Hidalgo
 */

document.addEventListener("DOMContentLoaded", function (){
    let verMasAudios = document.getElementById("verMasAudios");
    let verMasVideos = document.getElementById("verMasVideos");
    let verMasNoticias = document.getElementById("verMasNoticias");
    let lista_audios = Array.from(document.getElementById("lista-audios").children);
    let lista_videos = Array.from(document.getElementById("lista-videos").children);
    let lista_noticias = Array.from(document.getElementById("lista-noticias").children);
    let audiosOcultos = lista_audios.slice(2);
    let videosOcultos = lista_videos.slice(2);
    let noticiasOcultos = lista_noticias.slice(2);


    // Ocultamos los géneros por defecto
    ocultarLista(audiosOcultos);
    ocultarLista(videosOcultos);
    ocultarLista(noticiasOcultos);

    verMasAudios.addEventListener("click", function () {
        verMasOcultar(verMasAudios, lista_audios);
    });
    
    verMasVideos.addEventListener("click", function () {
        verMasOcultar(verMasVideos, lista_videos);
    });
    
    verMasNoticias.addEventListener("click", function () {
        verMasOcultar(verMasNoticias, lista_noticias);
    });
    
    // Funciones
    function verMasOcultar(boton, lista) {
        if (boton.innerHTML == "Ver más"){
            boton.innerHTML = "Ocultar";
            lista.forEach((e) => e.className = "");
        } else {
            boton.innerHTML = "Ver más";
            switch (lista) {
                case lista_audios:
                    ocultarLista(audiosOcultos);
                    break;
                case lista_videos:
                    ocultarLista(videosOcultos);
                    break;
                case lista_noticias:
                    ocultarLista(noticiasOcultos);
                    break;
                default:
                    break;
            }
        }
    }
    function ocultarLista(lista) {
        lista.forEach((e)=> e.className = "lista-oculta");
    }

});