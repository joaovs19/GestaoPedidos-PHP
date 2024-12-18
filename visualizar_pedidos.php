<?php
require 'conexao.php';

// Consulta para buscar os pedidos
$sql = "SELECT * FROM pedido";
$result = mysqli_query($con, $sql);
?>

<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <title>Visualizar Pedidos</title>
    <style>
        body {
            background-color: #f8f9fa;
        }
        .container {
            margin-top: 20px;
        }
        h3 {
            text-align: center;
            margin-bottom: 20px;
        }
        .table-responsive {
            overflow-x: auto;
        }
        .btn {
            margin: 2px;
        }
        .btn-warning i, .btn-danger i {
            margin-right: 5px;
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
    <div class="container mt-4">
        <h3 class="text-center text-primary">Lista de Pedidos</h3>
        <div class="table-responsive">
            <table class="table table-striped table-hover table-bordered align-middle text-center">
                <thead class="table-dark">
                    <tr>
                        <th>ID</th>
                        <th>Cod_Solicitante</th>
                        <th>Confirmação</th>
                        <th>Forma de Pagamento</th>
                        <th>Pedido pela Internet</th>
                        <th>Ações</th>
                    </tr>
                </thead>
                <tbody>
                    <?php while ($row = mysqli_fetch_assoc($result)): ?>
                        <tr>
                            <td><?php echo $row['Cod_Pedido']; ?></td>
                            <td><?php echo $row['Cod_Solicitante']; ?></td>
                            <td><?php echo $row['Confirmacao']; ?></td>
                            <td><?php echo $row['FormaPagamento']; ?></td>
                            <td><?php echo $row['Ped_Internet'] ? 'Sim' : 'Não'; ?></td>
                            <td>
                                <a href="editar_pedido.php?id=<?php echo $row['Cod_Pedido']; ?>" 
                                   class="btn btn-warning btn-sm">
                                   <i class="fas fa-edit"></i> Editar
                                </a>
                                <a href="excluir_pedido.php?id=<?php echo $row['Cod_Pedido']; ?>" 
                                   class="btn btn-danger btn-sm" 
                                   onclick="return confirm('Tem certeza que deseja excluir este pedido?')">
                                   <i class="fas fa-trash-alt"></i> Excluir
                                </a>
                            </td>
                        </tr>
                    <?php endwhile; ?>
                </tbody>
            </table>
        </div>
        <div class="text-center mt-3">
            <a href="index.php" class="btn btn-secondary btn-lg">
                <i class="fas fa-arrow-left"></i> Voltar
            </a>
        </div>
    </div>

    <footer>
        <p>Desenvolvido por João Vitor &copy; Todos os direitos reservados</p>
    </footer>
    <!-- Scripts do Bootstrap -->
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js"></script>
</body>
</html>
