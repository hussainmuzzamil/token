// SPDX-License-Identifier: MIT
//rename the file to Tokin.sol before compiling
//mapping function demo using the mapping funtion and msg.sender varriable. 
//will see transfer fundtion in next sample

pragma solidity ^0.8.6;

contract Tokin {
    string public tokin_name;
    string public token_sybmol;
    uint256 decimal;
    uint256 total_suply;
    mapping(address => uint256) public balanceOf;
    
constructor (string memory _tokin_name, string memory _token_sybmol, uint _decimal, uint _total_suply){
    tokin_name = _tokin_name;
    token_sybmol = _token_sybmol;
    decimal = _decimal;
    total_suply = _total_suply;
    balanceOf[msg.sender] = total_suply; 
    }//end of constructor
}//end of the Kontract
