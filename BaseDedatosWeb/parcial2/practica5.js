console.log("Funciona JS")

var cambio = false;

function cambia_color(){
    if(cambio){
        document.getElementById("cuadrado").style.backgroundColor = 'white';
        cambio = false;
    }else {
    document.getElementById("cuadrado").style.backgroundColor = 'purple';
    cambio = true;
    }   
}

function ocultar(){
    document.getElementById('titulo').style.display = 'none';
    document.getElementById('titulo').style.fontsize='62px';

}

function mostrar(){
    document.getElementById("titulo").style.display ='';
}

