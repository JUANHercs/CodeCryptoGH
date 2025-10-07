// SPDX-License-Identifier: MIT
pragma solidity >=0.8.0 <0.9.0;

/* 
los bucles consumen mucho gas hay quetener en cuenta estado

________________________________________________________
Bucle for 
    
    for(<inicializador>; <condicion>; <incremento/decremento>){
        //Codigo a ejecutar en cada interacion
    }
*/

contract BucleFor {
    // Fucnion 1
    function suma100(uint _numero) public pure returns(uint) {
        uint suma= 0;
        for(uint i=0; i < (_numero +100);i ++){
            suma += i;
        }
        return suma;
    }
    // funcion 2
    address[] private direcciones;

    function asociar() public {
        direcciones.push(msg.sender);
    }

    function comprobarAsociacion() public view returns(bool estado, address direccion){
        for(uint i = 0; i < direcciones.length; i++){
            if(msg.sender ==direcciones[i]){
                return (true, direcciones[i]);
            }
        }
         return(false, address(0));
    }
}