<?php

// tudo mesma coisa, soma + 1
$numero = $numero + 1;
$numero += 1;
$numero++;

// laço de repetição
// while
// do ... while

$numero = 10; // par

// do
// {
//     echo "O Valor de I = " . $numero;
//     $numero++; 
// } while ($numero <= 30);

// $numero =10;


// while ($numero <= 30)
// {
//     echo "O Valor de I = " . $numero; // 30
//     $numero++;
// }


$pares = "";
$impares = "";

// $pares = [];
// $impares = [];

for ($numero =10; $numero <= 30; $numero++)
{
    $resto = $numero % 2; // resto da divisao

    if ($resto == 0) {
        if ($pares != "") {
            $pares .= ", {$numero}";
        } else {
            $pares = $numero;
        }
    } else {
        if ($impares != "") {
            $impares .= ", {$numero}";
        } else {
            $impares = $numero;
        }
    }
}

echo "Os numeros pares de 10 - 30 são: {$pares}!<br>";
echo "Os numeros impares de 11 - 29 são: {$impares}!<br>";
