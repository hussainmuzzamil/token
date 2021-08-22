// SPDX-License-Identifier: MIT
//rename the file to Tokin.sol before compiling
//mapping function demo using the mapping funtion and msg.sender varriable. 
// this version includes the tranfer function 

pragma solidity ^0.8.6;

contract Tokin {
    string public tokin_name;
    string public token_sybmol;
    uint256 decimal;
    uint256 total_suply;
    //mapping of balance 
    mapping(address => uint256) public balanceOf;
    //adding tansfer event to handle tranfer function
    event Transfer( address indexed from, address indexed to, uint256 value);

constructor (string memory _tokin_name, string memory _token_sybmol, uint _decimal, uint _total_suply){
    tokin_name = _tokin_name;
    token_sybmol = _token_sybmol;
    decimal = _decimal;
    total_suply = _total_suply;
    balanceOf[msg.sender] = total_suply; 
    }//end of constructor
//transfer function    
function transfer (address _from, address _to, uint256 _value )external returns (bool success){
    require(balanceOf[msg.sender]>= _value);
    balanceOf[msg.sender] = balanceOf[_from] - (_value);
    balanceOf[_to] = balanceOf[_to]+(_value);
    emit Transfer(_to,_from, _value);
    return true;

}//end of transfer function


}//end of the Kontract