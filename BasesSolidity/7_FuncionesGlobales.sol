// SPDX-License-Identifier: MIT
pragma solidity >= 0.8.0 < 0.9.0;


contract FuncionesGlobales {

    // funcion msg.sender
    function obtenerDireccion() public view returns (address) {
        return msg.sender; // Devuelve la dirección del remitente de la transacción
    }
    // funcion block.timesstamp
    function obtenerTiempo() public view returns (uint) {
        return block.timestamp; // Devuelve la marca de tiempo del bloque actual
    }
    // funcion block.number
    function obtenerNumeroBloque() public view returns (uint) {
        return block.number; // Devuelve el número del bloque actual
    }
}

