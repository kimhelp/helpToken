// SPDX-License-Identifier: MIT
pragma solidity ^0.8.15;


//토큰 만들기
contract helpToken{

    mapping(address => uint256)public balances;

    string public name = "helpToken";
    string public symbol = "ITK";
    uint8 public decimals = 18;
    uint256 public totalSupply = 10000000000 * 10 ** decimals;//총 발행량

    event Transfer(address _from,address _to,uint256 _value);

    constructor(){
        balances[msg.sender] = totalSupply; //밸런스 안에 배포를 한 사람의 주소를 넣음
    }
    //토큰안에 가격을 정해준다 balance
    function balanceOf(address _owner)public view returns(uint256 balance){
        return balances[_owner];
    }
    //토큰안에 가격 보내는 함수 transfer
    function transfer(address _to,uint256 _value)public returns(bool success){ //인자값 두개 필요, 누구에게 얼마나!
        // require();  조건문, 인자값에 true면 막힘 false면 실행
        require(balances[msg.sender] >= _value); //보내는 가격이 내가 가지고 있는 가격보다 작거나 같으면..
        balances[msg.sender] -= _value; //보내는 사람의 가격을 깎고
        balances[_to] += _value; //받는 사람의 가격을 더한다.
        emit Transfer(msg.sender, _to, _value); //위 이벤트를 방출(실행)하는 코드
        return true;
    }
}

/*

name()
symbol()
decimals()
totalSupply()
balances()
transfer()
balanceOf()
 */