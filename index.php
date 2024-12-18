<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <title>Gestão de Pedidos</title>
    <style>
        body {
            background-color: #f8f9fa;
        }
        .container {
            margin-top: 50px;
        }
        h3 {
            text-align: center;
            margin-bottom: 30px;
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
        <h3>Gestão de Pedidos</h3>
        <div class="row justify-content-center">
            <div class="col-md-4">
                <a href="cdpedidos.html" class="btn btn-primary btn-lg d-block mb-3">Cadastrar Pedido</a>
            </div>
            <div class="col-md-4">
                <a href="visualizar_pedidos.php" class="btn btn-success btn-lg d-block mb-3">Visualizar Pedidos</a>
            </div>
        </div>
    </div>
    <footer>
        <p>Desenvolvido por João Vitor &copy; Todos os direitos reservados</p>
    </footer>
</body>
</html>
