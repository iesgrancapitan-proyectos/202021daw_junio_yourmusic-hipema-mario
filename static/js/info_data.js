/**
 * @author: Manolo Hidalgo y Mario Osuna
 */

document.addEventListener("DOMContentLoaded", function (){
    form_video = document.getElementById("form-video");

    document.getElementById("addVideos").addEventListener("click", function () {
        (form_video.getAttribute("hidden") == "true") ? form_video.removeAttribute("hidden") : form_video.setAttribute("hidden", true);
    });
});