// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
/// Estandar de comentarios en Solidity
/// @title Contrato de Persona
/// @author Juan Duque
/// @notice Este contrato permite almacenar y recuperar el nombre de una persona
/// @dev Utiliza una variable privada para almacenar el nombre, funciones de forma didactica
/// @custom:version 1.0.0
contract Persona {
    string private testNombre;
    
    /// @notice Establece el nombre de la persona
    /// @param _nombre El nombre a establecer
    /// @dev Esta función permite establecer el nombre de la persona, almacenándolo en una variable privada
    /// @custom:example setNombre("Juan Duque")
    function setNombre(string memory _nombre) public {
        testNombre = _nombre;
    }

    /// @notice Obtiene el nombre de la persona
    /// @return El nombre de la persona
    /// @dev Esta función permite recuperar el nombre almacenado en la variable privada
    /// @custom:example getNombre()
    /// @custom:returns string El nombre de la persona
    function getNombre() public view returns (string memory) {
        return testNombre;
    }

    /// @notice Devuelve la población mundial actual
    /// @return Una cadena de texto con la población mundial actual
    /// @dev Esta función es un ejemplo de cómo se puede devolver información adicional
    function poblacionMundial() external pure returns (string memory) {
        string memory poblacion = "Poblacion mundial actual: 8.083.080.515";
        return poblacion;
    }
}
