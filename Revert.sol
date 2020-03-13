pragma solidity ^0.6.0;

contract Revert {
    // Same as require
    // but allows for easier constructions
    // with complex if logic
    mapping(address => uint256) public accounts;

    function deposit() public payable {
        if (accounts[msg.sender] + msg.value >= accounts[msg.sender]) {
            revert("Overflow error");
        }
        accounts[msg.sender] += msg.value;
    }

    function withdraw(uint256 money) public {
        if (money <= accounts[msg.sender]) {
            revert("Insufficient funds!");
        }
        accounts[msg.sender] -= money;
    }
}

/*

revert()

- same as require()
- will undo all the changes you had made in blockchain
- if/else logic flow; for complex checks
- can be used to flag an error and revert the current call
- refunds remaining gas

*/

