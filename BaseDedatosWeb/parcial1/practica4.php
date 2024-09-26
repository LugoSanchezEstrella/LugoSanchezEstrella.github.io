<?php

    $aciertos = 0;
    $pregunta1 = $_POST["pregunta1"];
    $pregunta2 = $_POST["pregunta2"];
    $pregunta3 = $_POST["pregunta3"];
    $pregunta4 = $_POST["pregunta4"];
    $pregunta5 = $_POST["pregunta5"];
    $pregunta6 = $_POST["pregunta6"];
    $pregunta7 = $_POST["pregunta7"];
    $pregunta7 = $_POST["pregunta7"];
    $pregunta8 = $_POST["pregunta8"];
    $pregunta9 = $_POST["pregunta9"];
    $pregunta10 = $_POST["pregunta10"];

    
    


    //valida pregunta 1 1. ¿Lenguaje de programación que se utiliza para WEB?
    echo "<h3>1. ¿Cuál fue el primer presidente de México? </h3>";
    echo "<h5>Repuesta seleccionada ".$pregunta1." ---- Correcta = Guadalupe Victoria</h5>";
    if($pregunta1 == "guadalupe"){
        $aciertos++;
        echo "<img src='correcta.jpg' width='50px'><hr>";
    } else {
        echo "<img src='incorrecta.jpg' width='50px'><hr>";
    }
    //------FIN de la pregunta 1 ------------------

    //Valido pregunta 2 s una plataforma informática de lenguaje de programación creada por Sun Microsystems en 1995.
    echo "<h3>2.Actualmente existen ______ lenguas indigenas en México.</h3>";
    echo "<h5>Repuesta seleccionada ".$pregunta2." ---- Correcta = 68</h5>";
    if(strtoupper($pregunta2) == "68"){
        $aciertos++;
        echo "<img src='correcta.jpg' width='50px'><hr>";
    } else {
        echo "<img src='incorrecta.jpg' width='50px'><hr>";
    }
    //Fin de la pregunta 2 -----------------------------

    //Pregunta 3 - se deben validar 2 opciones sql y mongo
    echo "<h3>3.Selecciona 2 especies endemicas de México</h3>";
    echo "<h5>Repuesta seleccionada ".implode(",", $pregunta3)." ---- Correcta = Lacandonia schismática, Biznaga barril de acitrón</h5>";
    $p3_respuestas_correctas = 0;

    if(count($pregunta3) == 2){
        for($i=0; $i<count($pregunta3); $i++){
            if($pregunta3[$i] == "lacandonia" || $pregunta3[$i] == "biznaga"){
                $p3_respuestas_correctas ++;
            }
        }
        if($p3_respuestas_correctas == 2){
            $aciertos++;
            echo "<img src='correcta.jpg' width='50px'><hr>";
        } else {
            echo "<img src='incorrecta.jpg' width='50px'><hr>";
        }
    } else {
        echo "<img src='incorrecta.jpg' width='50px'><hr>";
    }
    //----------FIN pregunta 3 ------------------------------------

    //valida pregunta 4. ¿Es la forma correcta de nombrar una variable en PHP?

        echo "<h3>4. ¿Cuántos habitantes hay en México?</h3>";
        echo "<h5>Repuesta seleccionada ".$pregunta4." ---- Correcta = 132.3 millones</h5>";
        if($pregunta4 == "132"){
            $aciertos++;
            echo "<img src='correcta.jpg' width='50px'><hr>";
        } else {
            echo "<img src='incorrecta.jpg' width='50px'><hr>";
        }
    //------FIN de la pregunta 4 ------------------

    //Valido pregunta 5 es una función de php que sirve para contar los elementos de un array.
    echo "<h3>5. ¿Cuál es el nombre oficial de México? </h3>";
    echo "<h5>Repuesta seleccionada ".$pregunta5." ---- Correcta = Estados Unidos Mexicanos</h5>";
    if($pregunta5 == "estados"){
        $aciertos++;
        echo "<img src='correcta.jpg' width='50px'><hr>";
    } else {
        echo "<img src='incorrecta.jpg' width='50px'><hr>";
    }
        
    //Valido pregunta 6 es una función de php que sirve para contar los elementos de un array.
    echo "<h3>3.¿Cuáles de estos paises colindan con la frontera de México?</h3>";
    echo "<h5>Repuesta seleccionada ".implode(",", $pregunta6)." ---- Correcta = Guatemala, Belice</h5>";
    $p3_respuestas_correctas = 0;

    if(count($pregunta6) == 2){
        for($i=0; $i<count($pregunta6); $i++){
            if($pregunta6[$i] == "guatemala" || $pregunta6[$i] == "belice"){
                $p3_respuestas_correctas ++;
            }
        }
        if($p3_respuestas_correctas == 2){
            $aciertos++;
            echo "<img src='correcta.jpg' width='50px'><hr>";
        } else {
            echo "<img src='incorrecta.jpg' width='50px'><hr>";
        }
    } else {
        echo "<img src='incorrecta.jpg' width='50px'><hr>";
    }

      //Valido pregunta 6 es una función de php que sirve para contar los elementos de un array.
    echo "<h3>7. ¿Qué significa la palabra México? </h3>";
    echo "<h5>Repuesta seleccionada ".$pregunta7." ---- Correcta = En el ombligo de la luna</h5>";
    if($pregunta7 == "ombligo"){
        $aciertos++;
        echo "<img src='correcta.jpg' width='50px'><hr>";
    } else {
        echo "<img src='incorrecta.jpg' width='50px'><hr>";
    }


    //Valido pregunta 8 es una función de php que sirve para contar los elementos de un array.
    echo "<h3>8. ¿Cuál es el estado más grande de México? </h3>";
    echo "<h5>Repuesta seleccionada ".$pregunta8." ---- Correcta = Chihuahua</h5>";
    if($pregunta8 == "chihuahua"){
        $aciertos++;
        echo "<img src='correcta.jpg' width='50px'><hr>";
    } else {
        echo "<img src='incorrecta.jpg' width='50px'><hr>";
    }

    
    //Valido pregunta 9 es una función de php que sirve para contar los elementos de un array.
    echo "<h3>9. ¿Cuál es el estado más pequeño de México? </h3>";
    echo "<h5>Repuesta seleccionada ".$pregunta9." ---- Correcta = Tlaxcala</h5>";
    if($pregunta9 == "tlaxcala"){
        $aciertos++;
        echo "<img src='correcta.jpg' width='50px'><hr>";
    } else {
        echo "<img src='incorrecta.jpg' width='50px'><hr>";
    }
        




    //Valido pregunta 10 es una función de php que sirve para contar los elementos de un array.
    echo "<h3>10. ¿Cuál es el estado más seguro de México? </h3>";
    echo "<h5>Repuesta seleccionada ".$pregunta10." ---- Correcta = Aguascalientes</h5>";
    if($pregunta10 == "aguascalientes"){
        $aciertos++;
        echo "<img src='correcta.jpg' width='50px'><hr>";
    } else {
        echo "<img src='incorrecta.jpg' width='50px'><hr>";
    }
        


    echo "CALIFICACIÓN FINAl = " . ($aciertos * 10) . "%";

?>