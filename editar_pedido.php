<?php
require 'conexao.php';

$id = $_GET['id'];

// Buscar dados do pedido para edição
$sql = "SELECT * FROM pedido WHERE Cod_Pedido = '$id'";
$result = mysqli_query($con, $sql);
$row = mysqli_fetch_assoc($result);

if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    $vConfirmacao = $_POST['Confirmacao'];
    $vFormaPagamento = $_POST['FormaPagamento'];
    $vPed_Internet = $_POST['Ped_Internet'];

    $update = "UPDATE pedido 
               SET Confirmacao = '$vConfirmacao', FormaPagamento = '$vFormaPagamento', Ped_Internet = '$vPed_Internet' 
               WHERE Cod_Pedido = '$id'";
    mysqli_query($con, $update);

    header("Location: visualizar_pedidos.php");
}
?>

<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <title>Editar Pedido</title>
    <style>
            footer {
            position: fixed;
            left: 0;
            bottom: 0;
            width: 100%;
            text-align: center;
            padding: 10px;
            background-color: #343a40;
            color: white;
        }
    </style>
</head>
<body>
    <div class="container mt-4">
        <h3 class="text-center">Editar Pedido</h3>
        <form method="post">
            <div class="mb-3">
                <label class="form-label">Confirmação</label>
                <input type="text" name="Confirmacao" value="<?php echo $row['Confirmacao']; ?>" class="form-control">
            </div>
            <div class="mb-3">
                <label class="form-label">Forma de Pagamento</label>
                <input type="text" name="FormaPagamento" value="<?php echo $row['FormaPagamento']; ?>" class="form-control">
            </div>
            <div class="mb-3">
                <label class="form-label">Pedido pela Internet</label>
                <input type="text" name="Ped_Internet" value="<?php echo $row['Ped_Internet']; ?>" class="form-control">
            </div>
            <button type="submit" class="btn btn-primary">Atualizar</button>
            <a href="visualizar_pedidos.php" class="btn btn-secondary">Voltar</a>
        </form>
    </div>
    <footer>
        <p>Desenvolvido por João Vitor &copy; Todos os direitos reservados</p>
    </footer>
</body>
</html>
