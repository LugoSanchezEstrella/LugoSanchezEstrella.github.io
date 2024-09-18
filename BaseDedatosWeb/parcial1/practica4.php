<?php

    $aciertos = 0;
    $pregunta1 = $_POST["pregunta1"];
    $pregunta2 = $_POST["pregunta2"];
    $pregunta3 = $_POST["pregunta3"];

    //valida pregunta 1 1. ¿En que año fue la independencia de México?
    echo "<h3> ¿En que año fue la independencia de México? </h3>";
    echo "<h5>Repuesta seleccionada ".$pregunta1." ---- Correcta = 1810</h5>";
    if($pregunta1 == "1810"){
        $aciertos++;
      

    //Valido pregunta 2 ¿Qué se come tradicionalmente en dia de reyes magos?
    echo "<h3> ¿Qué se come tradicionalmente en dia de reyes magos? </h3>";
    echo "<h5>Repuesta seleccionada ".$pregunta2." ---- Correcta = Rosca</h5>";
    if(strtoupper($pregunta2) == "ROSCA"){
        $aciertos++;
    }

    //Pregunta 3 ¿Cuáles de estos platos son mexicanos?
    echo "<h3>¿Cuáles de estos platos son mexicanos? </h3>";
    echo "<h5>Respuesta seleccionada: " . implode(", ", $pregunta3) . " ---- Correcta = Pozole y Menudo</h5>";

   
    $p3_respuestas_correctas = 0;

    if(count($pregunta3) == 2){
        for($i=0; $i<count($pregunta3); $i++){
            if($pregunta3[$i] == "pozole" || $pregunta3[$i] == "menudo"){
                $p3_respuestas_correctas ++;
            }
        }
        if($p3_respuestas_correctas == 2){
            $aciertos++;
        }
      }

      
      echo "<img src='correcta.jpg' width='50px'><hr>";
    } else {
        echo "<img src='incorrecta.jpg' width='50px'><hr>";
    }
    echo "CALIFICACIÓN FINAl = " . ($aciertos * 10) . "%";

?>