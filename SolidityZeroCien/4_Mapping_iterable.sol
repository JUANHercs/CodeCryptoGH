// SPDX-License-Identifier: MIT
pragma solidity >= 0.8.0 <0.9.0;

/*
    MAPPING ITERABLES

 - function
 - mapping
 - sentencia if
*/

contract IterableMapping {
    // Mapping de direcciones a enteros
    // address => uint
    mapping (address => uint) public balances;
    mapping (address => bool) public insertado;
    //arreglo de direcciones llamado keys
    address[] public keys;

    function set(address _key, uint _val) external {
        balances[_key] = _val;

        if(            insertado[_key] = true;
            keys.push(_key);
        }
    }

    function getSze() external view returns (uint){
        return keys.length;
    }

    function first() external view returns(uint){
        return balances[keys[0]];
    }

    function last() external view returns(uint){
        return balances[keys[keys.length - 1]];
    }
    function get(uint _i) external view returns(uint){
        return balances[keys[_i]];
    }
}
