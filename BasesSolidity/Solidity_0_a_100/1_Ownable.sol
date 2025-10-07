// SPDX-License-Identifier: MIT
pragma solidity >=0.8.0 <0.9.0;

/*   OWNABLE    PROPERTY

- variables de estado
- variables globales
- fucniones
- funciones modifer
---------------------------------------
msg.sender : es una variable global que
representa la dirección de la cuenta 
(o contrato) que llamó a la función actual, gestiona
permisos autenticaciones y seguridad

*/

contract Propietario{
    address public propietario;

    constructor() {
        propietario = msg.sender; 
    }

    modifier soloPropietario() {
        require(msg.sender == propietario, "No eres el propietario");
        _;
    }

    function setPropietario(address _newOwner) external soloPropietario {
        require(_newOwner != address(0), "direccion invalida");
        propietario = _newOwner;
    }

   function soloPropietarioPuedeLlamar() view external soloPropietario returns (string memory){
    return "funcion ejecutada por el propietario del contarto";
   }

   function cualquieraPuedeLamar() pure external  returns (string memory){
    return "Funcion ejecutable por cualquier usuario";
   }
}