<?php
require 'conexao.php';

$vCod_Solicitante = $_POST["Cod_Solicitante"];
$vConfirmacao = $_POST["Confirmacao"];
$vFormaPagamento = $_POST["FormaPagamento"];
$vPed_Internet = $_POST["Ped_Internet"];

// Verificar se Cod_Solicitante existe
$checkSolicitante = "SELECT * FROM solicitante WHERE Cod_Solicitante = '$vCod_Solicitante'";
$resultCheck = mysqli_query($con, $checkSolicitante);

?>

<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <title>Resultado do Cadastro</title>
    <style>
        body {
            background-color: #f8f9fa;
        }
        .container {
            max-width: 600px;
            margin-top: 50px;
            padding: 20px;
            background: #ffffff;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
            border-radius: 5px;
        }
        .alert {
            text-align: center;
        }
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
    <div class="container">
        <h3 class="text-center">Resultado do Cadastro</h3>

        <?php if (mysqli_num_rows($resultCheck) > 0): ?>
            <?php
                // Se o solicitante existir, realiza o INSERT
                $sqlInsere = "INSERT INTO pedido (Cod_Solicitante, Confirmacao, FormaPagamento, Ped_Internet) 
                              VALUES ('$vCod_Solicitante', '$vConfirmacao', '$vFormaPagamento', '$vPed_Internet')";
                $result = mysqli_query($con, $sqlInsere);
            ?>

            <?php if ($result): ?>
                <!-- Sucesso -->
                <div class="alert alert-success" role="alert">
                    Pedido cadastrado com sucesso! 🎉
                </div>
            <?php else: ?>
                <!-- Erro no INSERT -->
                <div class="alert alert-danger" role="alert">
                    Falha no cadastro do pedido. Erro: <?php echo mysqli_error($con); ?>
                </div>
            <?php endif; ?>
        <?php else: ?>
            <!-- Erro: solicitante não existe -->
            <div class="alert alert-warning" role="alert">
                Erro: O código do solicitante informado não existe. 🚫
            </div>
        <?php endif; ?>

        <div class="text-center mt-4">
            <a href="cdpedidos.html" class="btn btn-primary">Cadastrar Novo Pedido</a>
            <a href="index.php" class="btn btn-secondary">Voltar ao Início</a>
            <a href="visualizar_pedidos.php" class="btn btn-danger">Ver pedidos</a>
        </div>
    </div>
    <footer>
        <p>Desenvolvido por João Vitor &copy; Todos os direitos reservados</p>
    </footer>
</body>
</html>
