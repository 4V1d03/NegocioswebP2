<?php

namespace Controllers\Sales;

use Controllers\PublicController;
use Views\Renderer;

class TopTen extends PublicController
{

    public function run(): void
    {

        $viewData = [
            "nombre_programado" => 'David A. Castillo',
            "clases" => [
                'Programacion de Portales web 1',
                'Programacion de Portales web 2',
                'Programacion de Portales negocios web'
            ],

            "contactos" => [ //lista de diccionarios, arreglo atomico de arereglos asociativos, o un arreglo de objetos
                [
                    "nombre" => "Juan Orlando",
                    "telefono" => "12345678"
                ],

                [
                    "nombre" => "Manuel Zelaya",
                    "telefono" => "87654321"
                ],

                [
                    "nombre" => "Pedro Castro",
                    "telefono" => "45612378"
                ]

            ]



        ];

        if ($this->isPostBack()) {
            $txtNombre = $_POST["txtNombre"];
            $rsltMessage = strtoupper($txtNombre). " Procesado!!!!";
            $viewData["txtNombre"] = $txtNombre;
            $viewData["rsltMessage"] = $rsltMessage;

        }

        Renderer::render('sales/top10', $viewData); //esta carpeta y archivo se crea dentro de templates.

    }
}
