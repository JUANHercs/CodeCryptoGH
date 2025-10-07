// SPDX-License-Identifier: MIT
pragma solidity >= 0.8.0 < 0.9.0;

contract TestKeccak256 {

    // Funcion para testear un hash
    function test() public pure returns (bytes32) {
        return keccak256(abi.encodePacked("Test Sting"));
    }
    // Funcion para testear un hash personlizado
    function testHash(string memory _input) public pure returns (bytes32) {
        return keccak256(abi.encodePacked(_input));
    }
    // Funcion para comparar un hash
    function compararString(string memory _string1, string memory _string2) public pure returns (bool) {
    if (keccak256(abi.encodePacked(_string1)) == keccak256(abi.encodePacked(_string2))){
    return true;
    } else {
        return false;
    }
    }
}
