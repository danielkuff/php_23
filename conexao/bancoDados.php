<?php
// Variaveis para conexao com o banco.
$hostname = "localhost";
$username = "aluno";
$password = "qwe123!";
$database = "aluno";
$port = 3306; // 5432 | postgress

try {
    $conexaoBanco = mysqli_connect(
        $hostname,
        $username,
        $password,
        $database,
        $port
    );

    // echo "Conectou!!!";
} catch (Exception $error ){
    echo "ERRO codigo: {$error->getCode()} <br> mensagem: {$error->getMessage()}";
    $conexaoBanco = null;
}