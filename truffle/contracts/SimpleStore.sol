//SPDX-License-Identifier : MIT
pragma solidity ^0.8.15;

contract SimpleStore{
    uint256 public value;
    address public owner;
    constructor(uint256 _value){ // 컨스트럭터는 배포할때 실행됨..
        value = _value;
        owner =  msg.sender;//스마트컨트랙트 발동한 사람의 주소 = 배포한사람의 주소
    }
}