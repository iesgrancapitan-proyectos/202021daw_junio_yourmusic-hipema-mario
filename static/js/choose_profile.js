/**
 * @author: Mario Osuna y Manolo Hidalgo
 */

document.addEventListener("DOMContentLoaded", function() {
    let currentTab = 0; // Current tab is set to be the first tab (0)
    let x = document.getElementsByClassName("tab");
    let prevBtn = document.getElementById("prevBtn");
    let nextBtn = document.getElementById("nextBtn");
    let grupo = document.getElementById("registro-grupo");
    let ojeador = document.getElementById("registro-ojeador");
    let inputGrupo = document.getElementById("grupo");
    let inputOjeador = document.getElementById("ojeador");
    let descripcionGrupo = document.getElementById("descripcionGrupo");
    let descripcionOjeador = document.getElementById("descripcionOjeador");


    showTab(currentTab); // Display the current tab

    prevBtn.addEventListener("click", () => nextPrev(-1));
    nextBtn.addEventListener("click", () => nextPrev(1));
    grupo.addEventListener("click", () => marcarOpcion(1));
    ojeador.addEventListener("click", () => marcarOpcion(-1));



    function marcarOpcion(n) {
        if (n == 1) {
            inputGrupo.checked = true;
            grupo.className = "registro-marcado";
            ojeador.className = "registro";
            descripcionGrupo.className = "wizzard-parrafo";
            descripcionOjeador.className = "descripcionWizzardOculto";
        } else {
            inputOjeador.checked = true;
            grupo.className = "registro";
            ojeador.className = "registro-marcado";
            descripcionGrupo.className = "descripcionWizzardOculto";
            descripcionOjeador.className = "wizzard-parrafo";
        }
    }

    function showTab(n) {
        x[n].style.display = "block";
        // ... and fix the Previous/Next buttons:
        if (n == 0) {
            prevBtn.style.display = "none";
        } else {
            prevBtn.style.display = "inline";
        }

        if (n == (x.length - 1)) {
            nextBtn.innerHTML = "Enviar";
        } else {
            nextBtn.innerHTML = "Siguiente";
        }
        // ... and run a function that displays the correct step indicator:
        fixStepIndicator(n);
    }

    function nextPrev(n) {
        // Exit the function if any field in the current tab is invalid:
        if (n == 1 && !validateForm()) return false;
        // Hide the current tab:
        x[currentTab].style.display = "none";
        // Increase or decrease the current tab by 1:
        currentTab = currentTab + n;
        // if you have reached the end of the form... :
        if (currentTab == x.length) {
            document.getElementById("regForm").submit();
            return false;
        }
        // Otherwise, display the correct tab:
        showTab(currentTab);
    }

    function validateForm() {
        // This function deals with validation of the form fields
        let valid = true;
        let y = x[currentTab].getElementsByTagName("input");
        // A loop that checks every input field in the current tab:

        /*TODO: Tenemos que meter aquí la excepción para 
        que no coja como obligatorios todos los input, 
          concretamente el de subir imagen  */
        for (i = 0; i < y.length; i++) {
            // If a field is empty...
            if (y[i].value == "") {
                // add an "invalid" class to the field:
                y[i].className += " invalid";
                // and set the current valid status to false:
                valid = false;
            }
        }
        /* TODO: Al darle al enviar no realiza el evento submit y salta un error, 
        a ver si sabes por que puede ser */
        if (currentTab == (x.length - 1)) {
            let patron_email = /^\w+([.-]?\w)*[@]\w+([.-]?\w)*[.]\w{2,4}$/;
            // let patron_telefono = /(\+34|0034|34)?[ -]*(6|7)[ -]*([0-9][ -]*){8}/;

            if (patron_email.test(y[0].value)) {
                valid = true;
            } else if (!patron_email.test(y[0].value)) {
                valid = false;
                y[0].className += " invalid";
                // y[1].className = "input-wizzard";
            } else {
                valid = false;
                // y[1].className += " invalid";
                y[0].className = "input-wizzard";
            }
        }
        // If the valid status is true, mark the step as finished and valid:
        if (valid) {
            document.getElementsByClassName("step")[currentTab].className += " finish";
        }
        return valid; // return the valid status
    }

    function fixStepIndicator(n) {
        // This function removes the "active" class of all steps...
        let z = document.getElementsByClassName("step");
        for (i = 0; i < z.length; i++) {
            z[i].className = z[i].className.replace(" active", "");
        }
        //... and adds the "active" class to the current step:
        z[n].className += " active";
    }
    /* Comprobar que perfil se ha elegido*/
    /* TODO: comprobar el radiobutton marcado, si no está marcado el de ojeador le indicamos 
    document.getElementById("TipoOjeador").style.display = "none"; y si está marcado se le indica que está visible */

    /* Mostrar imagen */
    let inputFile = document.getElementById('inputFile1');
    inputFile.addEventListener('change', mostrarImagen, false);

    function mostrarImagen(event) {
        let file = event.target.files[0];
        let reader = new FileReader();
        reader.onload = function(event) {
            let img = document.getElementById('img1');
            img.src = event.target.result;
        }
        reader.readAsDataURL(file);
    }
});