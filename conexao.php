<?php

    mysqli_report(MYSQLI_REPORT_OFF);

    $con = mysqli_connect("localhost","root", "", "joaovs_livraria");

    if (!$con) {
        echo "Verifique o usuário, a senha e o nome do BD " . 'falha ao conectar: ' . mysqli_connect_error();
    } else {
        echo "";
    }

?>