//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/// @title HolaMundo
/// @author Juan Duque
/// @notice Este contrato es un ejemplo simple de "Hola Mundo"
/// @dev Utiliza una variable de estado para almacenar el mensaje
contract HolaMundo {
    // variable de estado (se guarda en el blockchain)
    string private mensaje;

    // Constructor : se ejecuta una vez se despliega el contrato
    constructor() {
        // Inicializa el mensaje con "Hola Mundo"
        mensaje = "Hola Mundo";
    }

    function getMensaje() public view returns (string memory) {
        // Devuelve el mensaje almacenado
        return mensaje;
    }
}
