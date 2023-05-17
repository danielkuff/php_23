<?php

class UsuarioController {
 
    public function readUsuario($id) {
        $usuario = $this->UsuarioModel->readUsuario(10);
    }
}