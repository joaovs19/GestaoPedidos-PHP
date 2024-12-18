<?php
require 'conexao.php';

$id = $_GET['id'];

$sql = "DELETE FROM pedido WHERE Cod_Pedido = '$id'";
mysqli_query($con, $sql);

header("Location: visualizar_pedidos.php");
?>
