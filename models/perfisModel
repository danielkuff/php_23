<?php

class PerfisModel extends BaseModel {

    // Crud
    public function createPerfil($id)
    {
        $campos = ['nome', 'descricao'];
        $dados = ['adm', 'perfil administrador do sistema'];

        $idPerfil = $this->Create("perfis", $campos, $dados);

        return $idPerfil;
    }
}