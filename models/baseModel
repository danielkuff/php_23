<?php

require_once '../conexao/bancoDados.php'; // carrega uma vez (once)

abstract class BaseModel {
    public $conexaoBancoBM;
    
    public function __construct($conexaoBancoParam = null) {
        $this->conexaoBancoBM = $conexaoBancoParam;
    }

    public function getConexao() {
        return $this->conexaoBancoBM;
    }

     public function Create($nomeTabela, $campos = [], $dados = [])
     {
        // INSERT INTO USUARIOS (NOME, USER_NAME) VALUES ('isabel', 'isabel_infoserv');

        $sql = "INSERT INTO '{$nomeTabela}' '{$campos}' VALUES ({$dados}})";

        $id = $this->conexaoBancoBM->execute_query($sql)->insert_id;

        return $id;
     }

    // CRUD = Create, Read, Update, Delete.
}