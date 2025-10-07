/* Modificadores de visibilidad

funcion <nombre_funcion> () [ public | private | external | internal ] [ view | pure | payable ] {
    // cuerpo de la funcion
*/

// SPDX-License-Identifier: MIT
pragma solidity >= 0.8.0 <0.9.0;

contract VisibilidadFunciones {
    uint public numeroPublico;
    uint private numeroPrivado;
    uint internal numeroInterno;
    
    function setNumeroExternal(uint _nuevoNumero) external {
        numeroPublico = _nuevoNumero;
    }

    function setNumeroPrivado(uint _nuevoNumero) private {
        numeroPrivado = _nuevoNumero;
    }

    function setNumeroInterno(uint _nuevoNumero) internal {
        numeroInterno = _nuevoNumero;
    }

    function actualizarNumero(uint _nuevoNumero) public {
        setNumeroPrivado(_nuevoNumero);
        setNumeroInterno(_nuevoNumero);
    }

    function getTestExternal() external view returns (uint) {
        return numeroPublico;
    }
}
contract ContratoDerivado is VisibilidadFunciones {
    // Funcion publica heredada que llama a la funcion internaldel contrtao base
    function actualizarNumeroDesdeDerivada(uint _nuevoNumero) public{
        setNumeroInterno(_nuevoNumero);
    }
}