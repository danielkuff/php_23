<?php

echo 'ola mundo!';
echo 'ola mundo! <br>';
echo 'ola mundo! <br>';
echo 'ola mundo! <br>';

$salario = 0;
$salario = 2000;
$salario = 2500;

/* o simbolo do ponto (.) significa uma concatenação */

echo '<br>O salario e: ' . $salario;

/* A partir do php 7.4 tem que ser aspa dupla ("texto") */

echo "<br>O salario e: {$salario}";
