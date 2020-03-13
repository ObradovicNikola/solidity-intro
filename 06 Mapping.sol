pragma solidity ^0.6.0;

contract Mapping {
    mapping(address => uint256) public accounts;

    function deposit(uint256 money) public {
        accounts[msg.sender] += money;
    }

    function withdraw(uint256 money) public {
        accounts[msg.sender] -= money;
    }
}
