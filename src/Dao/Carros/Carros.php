<?php

namespace Dao\Carros;

use Dao\Table;

class Carros extends Table {

    public static function obtenerCarros(){

        $sqlstr = 'SELECT * FROM carros;';
        $carros = self::obtenerRegistros($sqlstr, []);
        return $carros;

    }

    public static function obtenerCarrosPorId($id){
        $sqlstr = 'SELECT * FROM carros where codigo = :codigo /*parametro*/';
        $carro = self::obtenerUnRegistro($sqlstr, ["codigo"=>$id]);
        return $carro;
    }

    public static function agregarCarro($carro){
        
        unset($carro['codigo']);
        unset($carro['creado']);
        unset($carro['actulizado']);
        $sqlstr = 'insert into carros ( 
            modelo, marca, anio, kilometraje, 
            chasis, color, registro, cilindraje, notas, 
            rodaje, estado, creado, precioventa, preciominio, 
            actulizado ) values
        (
            :modelo, :marca, :anio, :kilometraje, 
            :chasis, :color, :registro, :cilindraje, :notas, 
            :rodaje, :estado, now(), :precioventa, :preciominio, 
            now()
        );';

        return self::executeNonQuery($sqlstr, $carro);
        
    }

}

/*




*/