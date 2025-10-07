//SPDX-License-Identifier: MIT
pragma solidity >=0.8.0 <0.9.0;

contract BucleWhite {
    // Suma de los números impares menores a 100
    function sumaImpares() public pure returns(uint) {
        uint i = 1;
        uint suma = 0;
        while(i < 100) {
            suma += i;
            i += 2;
        }
        return suma;
    }

    // Sumar los dígitos de un número
    function sumaDigitos(uint _numero) public pure returns(uint) {
        uint suma = 0;
        uint i = _numero;
        while(i > 0) {
            suma += i % 10;
            i /= 10;
        }
        return suma;
    }
}